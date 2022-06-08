
<?php
$root  =("http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] ."/form-test/" );


return [
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

   'returnUrl' =>  $root.'thanks.php',
   'callbackUrl' =>  $root.'payment/payload.php',
   'cancelUrl' =>  $root.'payment/cancel.php',

   'expireAt' => 30,

];
