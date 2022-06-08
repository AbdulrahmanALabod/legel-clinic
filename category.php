<?php
header('Content-Type: application/json; charset=utf-8');
//$baseUrl = 'https://157.175.117.181';
$baseUrl = 'https://portal.jomla.me';
$arrContextOptions = array(
    "ssl" => array(
        "verify_peer"=>false,
        "verify_peer_name"=>false,
    ),
);  

$parentCategories   = [];
$subCategories   = [];
	
$brands = [];
$productImported = 0;
$categoryLink = $baseUrl.'/rest_api/public/category';
$productLink = $baseUrl.'/rest_api/public/product';
$brandLink = $baseUrl.'/rest_api/public/brand';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $categoryLink);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//curl_setopt($ch, CURLOPT_PROXY, $proxy);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
curl_setopt($ch, CURLOPT_TIMEOUT, 10);
$httpCode = curl_getinfo($ch , CURLINFO_HTTP_CODE);
$response = curl_exec($ch);
if ($response === false){
	$response = curl_error($ch);
}
echo $response;
//$response_categories = json_decode($response, true);

curl_close($ch);
exit();
/*
foreach($response_categories['rows'] as $key => $category){
	if($category['id'] !== 1 && $category['id'] !== 2 ){
		$parentCategories[$category['id']] = [
			'id' => $category['id'],
			'name' => $category['name'],
			'slug' => $category['name'],
			'description' => $category['description'],
			'parent_id' => 0,
			'parent_name' => $category['name']
		];
		echo "<img src='".$baseUrl."/web/content/product.public.category/".$category['id']."/image' style='width: 50px;height: 50px;'>";
		if($category['child_id']['count'] > 0 ){
			foreach($category['child_id']['rows'] as $sub_key => $sub_category){
				echo "<br><h1>".$sub_category['name']."</h1>";
				$subCategories[$sub_category['id']] = [
                    'id' => $sub_category['id'],
                    'name' => $sub_category['name'],
                    'slug' => $sub_category['name'],
                    'description' => (isset($sub_category['description']) ? $sub_category['description'] : ''),
                    'parent_id' => $category['id'],
                    'parent_name' => $category['name']
                ];
				echo "<br><img src='".$baseUrl."/web/content/product.public.category/".$sub_category['id']."/image' style='width: 50px;height: 50px;'>";
			}

		}
	}
}

//print_r($parentCategories);
//echo "\n\n\n";
//print_r($subCategories);
exit();
*/
