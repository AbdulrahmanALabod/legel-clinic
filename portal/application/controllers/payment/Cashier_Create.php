<?php

include("database.php");


$database_instance = Database::getInstance();
$connection = $database_instance->getConnection();
defined('BASEPATH') or exit('No direct script access allowed');

class Cashier_Create extends ClientsController
{
    private $publickey;
    private $merchantId;
    private $url;
    private $paymentConfig;
    const ONLINE_CO_OPERATIONS = 5000;
    const PROMO_CODE = 'TLC ONLINE 22';
    public function __construct()
    {
        parent::__construct();

        $root  = ("http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] . "/legel-form/portal/");


        $this->paymentConfig =  [
            'testCredentials' => [
                'merchantId' => '281822051588647',
                'publickey' => 'OPAYPUB16504486183970.8911503494758192',
                'url' => 'https://sandboxapi.opaycheckout.com/api/v1/international/cashier/create',
            ],

            'liveCredentials' => [
                'merchantId' => '281822051588647',
                'publickey' => 'OPAYPUB16526111822180.8341459381550019',
                'url' => 'https://api.opaycheckout.com/api/v1/international/cashier/create',
            ],

            'country' => 'EG',
            'currency' => 'EGP',

            'returnUrl' =>  $root . 'payment/thanks.php',
            'callbackUrl' =>  $root . 'payment/payload.php',
            'cancelUrl' =>  $root,

            'expireAt' => 30,

        ];
        $this->merchantId = $this->paymentConfig['liveCredentials']['merchantId'];
        $this->publickey = $this->paymentConfig['liveCredentials']['publickey'];
        $this->url = $this->paymentConfig['liveCredentials']['url'];
    }

    public function index()
    {
        global  $connection;
        $dataInput =  $this->validation();
        if (($dataInput == false) || (!isset($_SESSION['client_user_id']))) {
            header("Location: " .  site_url(""));
            exit;
        }

        $user = $connection->query("SELECT * FROM `tblcontacts` WHERE `userid` = " . $_SESSION['client_user_id'] . " limit 1")->fetch_assoc();
        $plan = $connection->query("SELECT * FROM `plans` WHERE `id` = " .  $dataInput['plan_id']  . " limit 1")->fetch_assoc();


        if(isset($dataInput['promo']) && $dataInput['promo'] ==  self::PROMO_CODE){
            if ($plan['price'] == self::ONLINE_CO_OPERATIONS ) {
                $plan['price']  = $plan['price']  - 2500;
            }
        }
        $reference = $this->generateRandomString();
        $data = [
            'country' => $this->paymentConfig['country'],
            'reference' => $reference,
            'amount' => [
                "total" => ($plan['price'] * 100),
                "currency" => $this->paymentConfig['currency'],
            ],
            'returnUrl' => $this->paymentConfig['returnUrl'],
            'callbackUrl' => ($this->paymentConfig['callbackUrl'] . "?reference=" . $reference),
            'cancelUrl' => $this->paymentConfig['cancelUrl'],
            'expireAt' => $this->paymentConfig['expireAt'],
            'userInfo' => [
                "userEmail" => $user['email'],
                "userId" => $user['userid'],
                "userMobile" => $user['phonenumber'],
                "userName" => $user['firstname'] . ' ' . $user['lastname'],
            ],
            'productList' => [
                [
                    "productId" => $plan['id'],
                    "name" => $plan['name'],
                    "description" => $plan['description'],
                    "price" => ($plan['price'] * 100),
                    "quantity" => 1,
                    "imageUrl" => 'https://imageUrl.com'
                ]
            ],
            'payMethod' => 'BankCard',
        ];

        if ($plan['per'] == 'year') {
            $expire = date('Y-m-d', strtotime('+1 years'));
        }
        if ($plan['per'] == 'month') {
            $expire = date('Y-m-d', strtotime('+1 months'));
        }
        $connection->query("INSERT INTO `payments` ( `reference`, `price`, `expire_date`, `contact_id`, `plan_id`, `created_at`) VALUES
            ( '" . $reference . "'," . $plan['price'] . ", '" . $expire . "', " . $user['userid'] . "," . $plan['id'] . ",'" . date('Y-m-d H:i:s') . "');");

        $data2 = (string) json_encode($data, JSON_UNESCAPED_SLASHES);
        $header = ['Content-Type:application/json', 'Authorization:Bearer ' . $this->publickey, 'MerchantId:' . $this->merchantId];
        $response = $this->http_post($this->url, $header, json_encode($data));
        $result = $response ? $response : null;
        return $result;
    }

    private function http_post($url, $header, $data)
    {
        if (!function_exists('curl_init')) {
            throw new Exception('php not found curl', 500);
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_TIMEOUT, 60);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        $response = curl_exec($ch);
        $httpStatusCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        $error = curl_error($ch);
        curl_close($ch);
        if (200 != $httpStatusCode) {
            print_r("invalid httpstatus:{$httpStatusCode} ,response:$response,detail_error:" . $error, $httpStatusCode);
        }
        return $response;
    }

    private function validation()
    {
        $data = [];
        $errors = [];

        if (empty($_POST["plan_id"])) {
            $errors['plan_id'] = ["required" => "there is not plan available"];
        } else {
            $data['plan_id'] = $_POST["plan_id"];            //TODO: check IF plan is available IN DATABASE
        }

        if(isset($_POST['promo'])){
            $data['promo'] = $_POST["promo"]; 
        }

        if (count($errors) > 0 || count($data) == 0) {
            return false;
        }

        return $data;
    }

    private function testInput($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    private function generateRandomString($length = 13)
    {
        return substr(str_shuffle(str_repeat($x = '0123456789', ceil($length / strlen($x)))), 1, $length);
    }
}


$caher = new Cashier_Create();
$result = $caher->index();
$result = json_decode($result, true);
if ($result && $result["data"]) {
    header("Location: " . $result["data"]['cashierUrl']);
    exit;
} else {
    header("Location: " . site_url(""));
    exit;
}
$database_instance->destructConnection();
