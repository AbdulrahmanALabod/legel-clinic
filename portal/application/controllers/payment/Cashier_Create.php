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
                'merchantId' => '281821120732136',
                'publickey' => 'OPAYPUB16388855997950.39843277853359504',
                'url' => 'https://sandboxapi.opaycheckout.com/api/v1/international/cashier/create',
            ],

            'liveCredentials' => [
                'merchantId' => '281822051588647',
                'publickey' => 'OPAYPUB16526111822180.8341459381550019',
                'url' => 'https://api.opaycheckout.com/api/v1/international/cashier/create',
            ],

            'country' => 'EG',
            'currency' => 'EGP',

            'returnUrl' => site_url('payment/thanks'),
            'callbackUrl' =>  $root . 'payment/payload.php',
            'cancelUrl' =>  $root,

            'expireAt' => 30,

        ];
        $this->merchantId = $this->paymentConfig['testCredentials']['merchantId'];
        $this->publickey = $this->paymentConfig['testCredentials']['publickey'];
        $this->url = $this->paymentConfig['testCredentials']['url'];
    }

    public function index()
    {
        global  $connection;
        $dataInput =  $this->validation();
        if (($dataInput == false) || (!isset($_SESSION['client_user_id']))) {
            header("Location: " .  site_url("authentication/login"));
            exit;
        }

        $this->storeForm();
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


    private function storeForm()
    {
        global  $connection;

        if (isset($_POST['userid'])) {
            $formdata["userid"] = $_POST['userid'];
        }
        if (isset($_POST["signdate"]) && !empty($_POST["signdate"])) {
            $formdata["signdate"] = $_POST["signdate"];
            $update_date = "UPDATE `users` SET `signdate`='" . $formdata["signdate"] . "'WHERE `id`='" . $formdata["userid"] . "'";
            $result_date = $connection->query($update_date);
        }
        if (isset($_POST['company_type']) && !empty($_POST['company_type'])) {
            $company_radio = $_POST['company_type'];
            if ($company_radio == 'LimitedLiabilityCompany') {
                $formdata["company_type"] = "LimitedLiabilityCompany";
            } elseif ($company_radio == 'JointStockIncorporation') {
                $formdata["company_type"]  = "JointStockIncorporation";
            } elseif ($company_radio == 'OPCrequirements') {
                $formdata["company_type"]  = "OPCrequirements";
            } elseif ($company_radio == 'SoleEntity') {
                $formdata["company_type"]  = "SoleEntity";
            } elseif ($company_radio == 'Generalpartnership') {
                $formdata["company_type"]  = "Generalpartnership";
            } elseif ($company_radio == 'LimitedPartnership') {
                $formdata["company_type"]  = "LimitedPartnership";
            }
        }
        if (isset($_POST["company_name"]) && !empty($_POST["company_name"])) {
            $formdata["company_name"] = json_encode($_POST["company_name"]);
        }
        if (isset($_POST["company_activity"]) && !empty($_POST["company_activity"])) {
            $formdata["company_activity"] = $_POST["company_activity"];
        }
        if (isset($_POST["company_address"]) && !empty($_POST["company_address"])) {
            $formdata["company_address"] = $_POST["company_address"];
        }
        if (isset($_POST["capital_value"]) && !empty($_POST["capital_value"])) {
            $formdata["capital_value"] = $_POST["capital_value"];
        }
        if (isset($_POST["capital_share"]) && !empty($_POST["capital_share"])) {
            $formdata["capital_share"] = $_POST["capital_share"];
        }

        if (isset($_POST["shareholder_name"]) && !empty($_POST["shareholder_name"])) {
            for ($i = 0; $i < count($_POST["shareholder_name"]); $i++) {
                $shareholders[$i]["shareholder_name"] = $_POST["shareholder_name"][$i];
            }
        }

        if (isset($_POST["shareholder_nationality"]) && !empty($_POST["shareholder_nationality"])) {
            for ($i = 0; $i < count($_POST["shareholder_nationality"]); $i++) {
                $shareholders[$i]["shareholder_nationality"] = $_POST["shareholder_nationality"][$i];
            }
        }

        if (isset($_POST["shareholder_percentage"]) && !empty($_POST["shareholder_percentage"])) {
            for ($i = 0; $i < count($_POST["shareholder_percentage"]); $i++) {
                $shareholders[$i]["shareholder_percentage"] = $_POST["shareholder_percentage"][$i];
            }
        }

        global $file_names;
        $file_names = array();
        if (isset($_FILES['personal_id'])) {
            $counter = 0;
            foreach ($_FILES['personal_id']['tmp_name'] as $key => $tmp_name) {
                $file_name = $key . $this->generateRandomString() . $_FILES['personal_id']['name'][$key];
                $file_names[$counter] = $file_name;
                $file_size = $_FILES['personal_id']['size'][$key];
                $file_tmp = $_FILES['personal_id']['tmp_name'][$key];
                $file_type = $_FILES['personal_id']['type'][$key];
                move_uploaded_file($file_tmp, 'uploads/' . $file_name);
                $counter++;
            }
        }

        if (isset($_FILES["personal_id"]["name"])) {
            for ($i = 0; $i < count($_FILES["personal_id"]["name"]); $i++) {
                $shareholders[$i]["personal_id"] = $file_names[$i];
            }
        }

        if (isset($_POST["manager_name"]) && !empty($_POST["manager_name"])) {
            for ($i = 0; $i < count($_POST["manager_name"]); $i++) {
                $managers[$i]["manager_name"] = $_POST["manager_name"][$i];
            }
        }
        if (isset($_POST["manager_nationality"]) && !empty($_POST["manager_nationality"])) {
            for ($i = 0; $i < count($_POST["manager_nationality"]); $i++) {
                $managers[$i]["manager_nationality"] = $_POST["manager_nationality"][$i];
            }
        }
        if (isset($_POST["manager_type"]) && !empty($_POST["manager_type"])) {
            for ($i = 0; $i < count($_POST["manager_type"]); $i++) {
                $managers[$i]["manager_type"] = $_POST["manager_type"][$i];
            }
        }

        if (isset($_POST["perm1"]) && !empty($_POST["perm1"])) {
            for ($i = 0; $i < count($_POST["perm1"]); $i++) {
                $permessions[$i]["perm1"] = $_POST["perm1"][$i];
            }
        }
        if (isset($_POST["perm2"]) && !empty($_POST["perm2"])) {
            for ($i = 0; $i < count($_POST["perm2"]); $i++) {
                $permessions[$i]["perm2"] = $_POST["perm2"][$i];
            }
        }
        if (isset($_POST["perm3"]) && !empty($_POST["perm3"])) {
            for ($i = 0; $i < count($_POST["perm3"]); $i++) {
                $permessions[$i]["perm3"] = $_POST["perm3"][$i];
            }
        }

        if (isset($_POST["manager_name_upload"]) && !empty($_POST["manager_name_upload"])) {
            for ($i = 0; $i < count($_POST["manager_name_upload"]); $i++) {
                $managers[$i]["manager_name_upload"] = $_POST["manager_name_upload"][$i];
            }
        }
        if (isset($_POST["manager_nationality_upload"]) && !empty($_POST["manager_nationality_upload"])) {
            for ($i = 0; $i < count($_POST["manager_nationality_upload"]); $i++) {
                $managers[$i]["manager_nationality_upload"] = $_POST["manager_nationality_upload"][$i];
            }
        }
        if (isset($_POST["manager_type_upload"]) && !empty($_POST["manager_type_upload"])) {
            for ($i = 0; $i < count($_POST["manager_type_upload"]); $i++) {
                $managers[$i]["manager_type_upload"] = $_POST["manager_type_upload"][$i];
            }
        }

        if (isset($_POST["perm1_upload"]) && !empty($_POST["perm1_upload"])) {
            for ($i = 0; $i < count($_POST["perm1_upload"]); $i++) {
                $permessions[$i]["perm1_upload"] = $_POST["perm1_upload"][$i];
            }
        }
        if (isset($_POST["perm2_upload"]) && !empty($_POST["perm2_upload"])) {
            for ($i = 0; $i < count($_POST["perm2_upload"]); $i++) {
                $permessions[$i]["perm2_upload"] = $_POST["perm2_upload"][$i];
            }
        }
        if (isset($_POST["perm3_upload"]) && !empty($_POST["perm3_upload"])) {
            for ($i = 0; $i < count($_POST["perm3_upload"]); $i++) {
                $permessions[$i]["perm3_upload"] = $_POST["perm3_upload"][$i];
            }
        }
        global $managers_file_names;
        $managers_file_names = array();
        if (isset($_FILES['upload_manager'])) {
            $counter = 0;
            foreach ($_FILES['upload_manager']['tmp_name'] as $key => $tmp_name) {
                $file_name = $key . $this->generateRandomString() . $_FILES['upload_manager']['name'][$key];
                $managers_file_names[$counter] = $file_name;
                $file_size = $_FILES['upload_manager']['size'][$key];
                $file_tmp = $_FILES['upload_manager']['tmp_name'][$key];
                $file_type = $_FILES['upload_manager']['type'][$key];
                move_uploaded_file($file_tmp, 'uploads/' . $file_name);
                $counter++;
            }
        }
        if (isset($_FILES["upload_manager"]["name"])) {
            for ($i = 0; $i < count($_FILES["upload_manager"]["name"]); $i++) {
                $managers[$i]["upload_manager"] =  $managers_file_names[$i];
            }
        }

        $insert_company = "INSERT INTO `companies`(`company_type`,`company_name` , `company_address`, `company_activity`, 
                            `capital_value`, `capital_share`,`user_id`) VALUES
                        ('" . $formdata["company_type"] . "','" . $formdata["company_name"] ?? '' . "','" . $formdata["company_address"] . "'
                        ,'" . $formdata["company_activity"] . "','" . $formdata["capital_value"] . "','" . $formdata["capital_share"] . "'
                        ,'" . $formdata["userid"] . "')";
        $result1 = $connection->query($insert_company);
        $formdata["company_id"] = $connection->insert_id;


        for ($i = 0; $i < count($shareholders); $i++) {
            $insert_shareholder = "INSERT INTO `shareholders`(`shareholder_name`,`shareholder_nationality` ,
                               `shareholder_percenatage`, `shareholder_personal_id`,`company_id`) 
                               VALUES ('" . $shareholders[$i]["shareholder_name"] . "','" . $shareholders[$i]["shareholder_nationality"] . "',
                               '" . $shareholders[$i]["shareholder_percentage"] . "',
                               '" . $shareholders[$i]["personal_id"] . "','" . $formdata["company_id"] . "');";
            $result = $connection->query($insert_shareholder);
        }

        /////////////////////////////// insert managers to database ////////////////////////////////
        for ($i = 0; $i < count($managers); $i++) {
            $insert_manager = "INSERT INTO `managers`(`manager_name`,`manager_nationality` ,
                           `manager_personal_id`,`perm1`,`perm2`,`perm3`,`manager_type`,`company_id`)
                            VALUES ('" . $managers[$i]["manager_name"] . "','" . $managers[$i]["manager_nationality"] . "',
                            '" . $shareholders[$i]["personal_id"] . "','" . $permessions[$i]["perm1"] . "','" . $permessions[$i]["perm2"] . "',
                            '" . $permessions[$i]["perm3"] . "','" . $managers[$i]["manager_type"] . "','" . $formdata["company_id"] . "')";
            $result1 = $connection->query($insert_manager);
        }

        if (isset($_POST["manager_name_upload"][0]) && !empty($_POST["manager_name_upload"][0])) {
            for ($i = 0; $i < count($_POST["manager_name_upload"]); $i++) {
                $insert_manager = "INSERT INTO `managers`(`manager_name`,`manager_nationality` , `manager_personal_id`,
                            `perm1`,`perm2`,`perm3`,`manager_type`,`company_id`) 
                            VALUES ('" . $managers[$i]["manager_name_upload"] . "','" . $managers[$i]["manager_nationality_upload"] . "',
                            '" . $managers[$i]["upload_manager"] . "','" . $permessions[$i]["perm1_upload"] . "',
                            '" . $permessions[$i]["perm2_upload"] . "','" . $permessions[$i]["perm3_upload"] . "','" . $managers[$i]["manager_type_upload"] . "',
                            '" . $formdata["company_id"] . "')";
                $result1 = $connection->query($insert_manager);
            }
        }
        ///////////////////////////////////////// insert malek in database ////////////////////////////
        if (isset($_POST["malek_name"]) && isset($_POST["malek_nationality"]) && isset($_POST["malek_personal_id"])) {
            $insert_malek = "INSERT INTO `managers`(`manager_name`,`manager_nationality` , `manager_personal_id`,
                           `company_id`) VALUES ('" . $_POST["malek_name"] . "','" . $_POST["malek_nationality"] . "',
                           '" . $_POST["malek_personal_id"] . "','" . $formdata["company_id"] . "')";
            $result = $connection->query($insert_malek);
        }
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
