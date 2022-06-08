
<?php
include("database.php");
$database_instance = Database::getInstance();
$connection = $database_instance->getConnection();


function payload()
{
    $rawData = file_get_contents("php://input");
    $result = json_decode($rawData, true);
    $payment = [];
    $payment['status'] = $result['payload']['status'];
    $payment['payload'] = $rawData;
    global $connection;
    $connection->query("UPDATE `payments` SET `status`='" . $payment['status'] . "',`payload`='" . $payment['payload'] . "' where reference ='" . $_GET['reference'] . "' ");

    return http_response_code(200);
}

payload();
