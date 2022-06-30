
<?php
include("database.php");
$database_instance = Database::getInstance();
$connection = $database_instance->getConnection();


defined('BASEPATH') or exit('No direct script access allowed');

class Payload extends ClientsController
{
    public function __construct()
    {
        parent::__construct();

        $this->load->helper('url');
    }

    public function index()
    {
        global $connection;
        $rawData = file_get_contents("php://input");
        $result = json_decode($rawData, true);
        $payment = [];
        $payment['status'] = $result['payload']['status'];
        $payment['payload'] = $rawData;
        $connection->query("UPDATE `payments` SET `status`='" . $payment['status'] . "',`payload`='" . $payment['payload'] . "' where reference ='" . $_GET['reference'] . "' ");

        return http_response_code(200);
    }
}
