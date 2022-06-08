<?php

include("../database.php");

$paymentConfig = include("../config/payment.php");

$database_instance = Database::getInstance();
$connection = $database_instance->getConnection();
class CashierCreateController
{
    private $publickey;
    private $merchantId;
    private $url;

    public function __construct()
    {
        global $paymentConfig;
        $this->merchantId = $paymentConfig['liveCredentials']['merchantId'];
        $this->publickey = $paymentConfig['liveCredentials']['publickey'];
        $this->url = $paymentConfig['liveCredentials']['url'];
    }

    public function test()
    {
        session_start();

        global $paymentConfig, $connection;
        $dataInput =  $this->validation();
		
        $user = $connection->query("SELECT * FROM `users` WHERE `id` = " . $_SESSION['contact_user_id'] . " limit 1")->fetch_assoc();
        $plan = $connection->query("SELECT * FROM `plans` WHERE `id` = " . $dataInput['plan_id'] . " limit 1")->fetch_assoc();
        $reference = $this->generateRandomString();
        $data = [
            'country' => $paymentConfig['country'],
            'reference' => $reference,
            'amount' => [
                "total" => ($plan['price'] * 100),
                "currency" => $paymentConfig['currency'],
            ],
            'returnUrl' => $paymentConfig['returnUrl'],
            'callbackUrl' => ($paymentConfig['callbackUrl'] . "?reference=" . $reference),
            'cancelUrl' => $paymentConfig['cancelUrl'],
            'expireAt' => $paymentConfig['expireAt'],
            'userInfo' => [
                "userEmail" => $user['email'],
                "userId" => $user['id'],
                "userMobile" => $user['phone'],
                "userName" => $user['name'],
            ],
            'productList' => [
                [
                    "productId" => $plan['id'],
                    "name" => $plan['name'],
                    "description" => $plan['description'],
                    "price" =>  ($plan['price'] * 100),
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

        $connection->query("INSERT INTO `payments` ( `reference`, `price`, `expire_date`, `user_id`, `plan_id`, `created_at`) VALUES
            ( '" . $reference . "'," . $plan['price'] . ", '" . $expire . "', " . $user['id'] . "," . $plan['id'] . ",'" . date('Y-m-d H:i:s') . "');");


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

        if (count($errors) > 0) {
            return json_encode($errors);
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


$caher = new CashierCreateController();
$result = $caher->test();
$result = json_decode($result, true);
if ($result["data"]) {
    header("Location: " . $result["data"]['cashierUrl']);
} else {
    header("Location: " . "/");
}
$database_instance->destructConnection();
