<?php

$url = "http://75.119.137.98:2027/api/Payment/WebhookStatus";

$curl = curl_init($url);
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_POST, true);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

$headers = array(
   "accept: */*",
   "Content-Type: application/json-patch+json",
);
curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);

$data = '"test from demo.com"';

curl_setopt($curl, CURLOPT_POSTFIELDS, $data);

//for debug only!
//curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
//curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);

$resp = curl_exec($curl);
curl_close($curl);
var_dump($resp);

?>

