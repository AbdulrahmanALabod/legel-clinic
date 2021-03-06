<html lang="en">
<head>
    <meta charset="UTF-8">
   <meta http-equiv = "refresh" content = "2; url = http://https://digital.gov.eg/"/> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Legal Clinic</title>
    <link rel="stylesheet" href="css/all.min.css"  />
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.16/css/intlTelInput.css" integrity="sha512-gxWow8Mo6q6pLa1XH/CcH8JyiSDEtiwJV78E+D+QP0EVasFs8wKXq16G8CLD4CJ2SnonHr4Lm/yY2fSI2+cbmw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- <link rel="stylesheet" href="css/rome.css"> -->
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
   <!--thanks msg-->
   <section class="d-flex justify-content-center align-items-center" style="height: -webkit-fill-available;">
        <div class=" ">
	  <div class="">
		<div class="">
			<div class="thanks-wrap">
				<div class="checkmark">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 161.2 161.2">
						<circle class="path" fill="none" stroke="#28a745" stroke-width="4" stroke-miterlimit="10" cx="80.6" cy="80.6" r="62.1"/>
						<path class="path" fill="none" stroke="#28a745" stroke-width="6" stroke-linecap="round" stroke-miterlimit="10" d="M113 52.8l-38.9 55.6-25.9-22"/>
						<circle class="spin" fill="none" stroke="#555555" stroke-width="4" stroke-miterlimit="10" stroke-dasharray="12.2175,12.2175" cx="80.6" cy="80.6" r="73.9"/>
					</svg>
				</div>
				<h2 class="pt-5 text-center" style="color:#28a745;">تم التسجيل بنجاح</h2>
                <p class="pt-5 text-center">جارى تحويلك الان الى موقع مصر الرقميه لتحديد موعد</p>
                <!-- <a href="http://https://digital.gov.eg/"> -->
			</div>
		</div>
	</div>
</div>
</section>
    <script src="js/jquery.min.js" ></script>
    <script src="js/popper.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.16/js/intlTelInput.min.js" integrity="sha512-Po9nSdYOcWIcoADdRjkAbRYPpR8OHjxzA/3RDUERZcDewTLzRTxbG4bUX7Sr7lVEcO3wTCzphdOBWgNFKVmxaA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- <script src="js/rome.js"></script> -->
</body>
</html>
<?php
//////////////////////////////////// Includes /////////////////////////////////
require_once("header.php");
require_once ("database.php");

///////////////////////////////// global variables ////////////////////////////
global $formdata;
global $shareholders;
global $managers;
$managers_upload = array();
global $permessions;
global $insert;

$formdata = array();
$shareholders = array();
$managers = array();
$managers_upload = array();

$permessions = array();
$insert = "";

//////////////////////// Database instance ////////////////////////////////
$database_instance = Database::getInstance();
$connection = $database_instance->getConnection();

///////////////////// company layer ///////////////////////////////////////
if (isset($_POST['userid'])) {
    $formdata["userid"] = $_POST['userid'];
}
if (isset($_POST["signdate"])&& !empty($_POST["signdate"])){
    $formdata["signdate"] = $_POST["signdate"];
    $update_date = "UPDATE `users` SET `signdate`='".$formdata["signdate"]."'WHERE `id`='".$formdata["userid"]."'";
    $result_date = $connection->query($update_date);
}
if (isset($_POST['company_type'])&& !empty($_POST['company_type'])) {
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
if (isset($_POST["company_name"])&& !empty($_POST["company_name"])) {
    $formdata["company_name"] = json_encode($_POST["company_name"]);
}
if (isset($_POST["company_activity"])&&!empty($_POST["company_activity"])) {
    $formdata["company_activity"] = $_POST["company_activity"];
}
if (isset($_POST["company_address"])&&!empty($_POST["company_address"])) {
    $formdata["company_address"] = $_POST["company_address"];
}
if (isset($_POST["capital_value"])&&!empty($_POST["capital_value"])) {
    $formdata["capital_value"] = $_POST["capital_value"];
}
if (isset($_POST["capital_share"])&&!empty($_POST["capital_share"])) {
    $formdata["capital_share"] = $_POST["capital_share"];
}


/////////////////////////////// shareholders layer ///////////////////////////////
if (isset($_POST["shareholder_name"])&&!empty($_POST["shareholder_name"])) {
    for ($i=0; $i < count($_POST["shareholder_name"]); $i++) {
        $shareholders[$i]["shareholder_name"] = $_POST["shareholder_name"][$i];
    }
}
if (isset($_POST["shareholder_nationality"])&&!empty($_POST["shareholder_nationality"])) {
    for ($i=0; $i < count($_POST["shareholder_nationality"]); $i++) {
        $shareholders[$i]["shareholder_nationality"] = $_POST["shareholder_nationality"][$i];
    }
}

if (isset($_POST["shareholder_percentage"])&&!empty($_POST["shareholder_percentage"])) {
    for ($i=0; $i < count($_POST["shareholder_percentage"]); $i++) {
        $shareholders[$i]["shareholder_percentage"] = $_POST["shareholder_percentage"][$i];
    }
}
function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
global $file_names;
$file_names = array();
if (isset($_FILES['personal_id'])) {
    $counter = 0;
    foreach ($_FILES['personal_id']['tmp_name'] as $key => $tmp_name) {
        $file_name = $key .generateRandomString(). $_FILES['personal_id']['name'][$key];
        $file_names [$counter] = $file_name;
        $file_size = $_FILES['personal_id']['size'][$key];
        $file_tmp = $_FILES['personal_id']['tmp_name'][$key];
        $file_type = $_FILES['personal_id']['type'][$key];
        move_uploaded_file($file_tmp, 'uploads/' . $file_name);
        $counter++;
    }
}
if (isset($_FILES["personal_id"]["name"])) {
    for ($i=0; $i <count($_FILES["personal_id"]["name"]) ; $i++) {
    $shareholders[$i]["personal_id"] = $file_names[$i];
    }
}



/////////////////////////////// Managers layer ///////////////////////////////
if (isset($_POST["manager_name"])&&!empty($_POST["manager_name"])) {
    for ($i=0; $i < count($_POST["manager_name"]); $i++) {
        $managers[$i]["manager_name"] = $_POST["manager_name"][$i];
    }
}
if (isset($_POST["manager_nationality"])&&!empty($_POST["manager_nationality"])){
    for ($i=0; $i < count($_POST["manager_nationality"]); $i++) {
        $managers[$i]["manager_nationality"] = $_POST["manager_nationality"][$i];
    }
}
if (isset($_POST["manager_type"])&&!empty($_POST["manager_type"])){
    for ($i=0; $i < count($_POST["manager_type"]); $i++) {
        $managers[$i]["manager_type"] = $_POST["manager_type"][$i];
    }
}
//permessions
if (isset($_POST["perm1"])&&!empty($_POST["perm1"])){
    for ($i=0; $i < count($_POST["perm1"]); $i++) {
        $permessions[$i]["perm1"] = $_POST["perm1"][$i];
    }
}
if (isset($_POST["perm2"])&&!empty($_POST["perm2"])){
    for ($i=0; $i < count($_POST["perm2"]); $i++) {
        $permessions[$i]["perm2"] = $_POST["perm2"][$i];
    }
}
if (isset($_POST["perm3"])&&!empty($_POST["perm3"])){
    for ($i=0; $i < count($_POST["perm3"]); $i++) {
        $permessions[$i]["perm3"] = $_POST["perm3"][$i];
    }
}
///////////////////////////////////////maanegr upload/////////////////////////////////
if (isset($_POST["manager_name_upload"])&& !empty($_POST["manager_name_upload"])) {
    for ($i=0; $i < count($_POST["manager_name_upload"]); $i++) {
        $managers[$i]["manager_name_upload"] = $_POST["manager_name_upload"][$i];
    }
}
if (isset($_POST["manager_nationality_upload"])&& !empty($_POST["manager_nationality_upload"])){
    for ($i=0; $i < count($_POST["manager_nationality_upload"]); $i++) {
        $managers[$i]["manager_nationality_upload"] = $_POST["manager_nationality_upload"][$i];
    }
}
if (isset($_POST["manager_type_upload"])&&!empty($_POST["manager_type_upload"])){
    for ($i=0; $i < count($_POST["manager_type_upload"]); $i++) {
        $managers[$i]["manager_type_upload"] = $_POST["manager_type_upload"][$i];
    }
}
//permessions
if (isset($_POST["perm1_upload"])&&!empty($_POST["perm1_upload"])){
    for ($i=0; $i < count($_POST["perm1_upload"]); $i++) {
        $permessions[$i]["perm1_upload"] = $_POST["perm1_upload"][$i];
    }
}
if (isset($_POST["perm2_upload"])&&!empty($_POST["perm2_upload"])){
    for ($i=0; $i < count($_POST["perm2_upload"]); $i++) {
        $permessions[$i]["perm2_upload"] = $_POST["perm2_upload"][$i];
    }
}
if (isset($_POST["perm3_upload"])&&!empty($_POST["perm3_upload"])){
    for ($i=0; $i < count($_POST["perm3_upload"]); $i++) {
        $permessions[$i]["perm3_upload"] = $_POST["perm3_upload"][$i];
    }
}
global $managers_file_names;
$managers_file_names = array();
if (isset($_FILES['upload_manager'])) {
    $counter = 0;
    foreach ($_FILES['upload_manager']['tmp_name'] as $key => $tmp_name) {
        $file_name = $key .generateRandomString().$_FILES['upload_manager']['name'][$key];
        $managers_file_names[$counter] = $file_name;
        $file_size = $_FILES['upload_manager']['size'][$key];
        $file_tmp = $_FILES['upload_manager']['tmp_name'][$key];
        $file_type = $_FILES['upload_manager']['type'][$key];
        move_uploaded_file($file_tmp, 'uploads/' . $file_name);
        $counter++;
    }
}
if (isset($_FILES["upload_manager"]["name"])) {
    for ($i=0; $i <count($_FILES["upload_manager"]["name"]) ; $i++) {
    $managers[$i]["upload_manager"] =  $managers_file_names[$i];
    }
}


//////////////////////////// insert company to database ///////////////////////////////
$insert_company = "INSERT INTO `companies`(`company_type`,`company_name` , `company_address`, `company_activity`, 
                    `capital_value`, `capital_share`,`user_id`) VALUES
                ('".$formdata["company_type"]."','".$formdata["company_name"]."','".$formdata["company_address"]."'
                ,'".$formdata["company_activity"]."','".$formdata["capital_value"]."','".$formdata["capital_share"]."'
                ,'".$formdata["userid"]."')";
$result1 = $connection->query($insert_company);
$formdata["company_id"] = $connection->insert_id;


/////////////////////////////// insert shareholders to database ///////////////////////////////
for ($i=0; $i < count($shareholders); $i++) {
    $insert_shareholder = "INSERT INTO `shareholders`(`shareholder_name`,`shareholder_nationality` ,
                       `shareholder_percenatage`, `shareholder_personal_id`,`company_id`) 
                       VALUES ('".$shareholders[$i]["shareholder_name"] ."','".$shareholders[$i]["shareholder_nationality"]."',
                       '".$shareholders[$i]["shareholder_percentage"]."',
                       '".$shareholders[$i]["personal_id"]."','".$formdata["company_id"]."');";
    $result = $connection->query($insert_shareholder);
}

/////////////////////////////// insert managers to database ////////////////////////////////
    for ($i=0; $i < count($managers); $i++) {
    $insert_manager = "INSERT INTO `managers`(`manager_name`,`manager_nationality` ,
                   `manager_personal_id`,`perm1`,`perm2`,`perm3`,`manager_type`,`company_id`)
                    VALUES ('".$managers[$i]["manager_name"]."','".$managers[$i]["manager_nationality"]."',
                    '".$shareholders[$i]["personal_id"] ."','".$permessions[$i]["perm1"]."','".$permessions[$i]["perm2"]."',
                    '".$permessions[$i]["perm3"]."','".$managers[$i]["manager_type"] ."','".$formdata["company_id"]."')";
    $result1 = $connection->query($insert_manager);
}

if(isset($_POST["manager_name_upload"][0])&& !empty($_POST["manager_name_upload"][0])){
    for ($i=0; $i < count($_POST["manager_name_upload"]); $i++) {
        $insert_manager = "INSERT INTO `managers`(`manager_name`,`manager_nationality` , `manager_personal_id`,
                    `perm1`,`perm2`,`perm3`,`manager_type`,`company_id`) 
                    VALUES ('".$managers[$i]["manager_name_upload"]."','".$managers[$i]["manager_nationality_upload"]."',
                    '".$managers[$i]["upload_manager"]."','".$permessions[$i]["perm1_upload"]."',
                    '".$permessions[$i]["perm2_upload"]."','".$permessions[$i]["perm3_upload"]."','".$managers[$i]["manager_type_upload"] ."',
                    '".$formdata["company_id"]."')";
        $result1 = $connection->query($insert_manager);
    }
}
///////////////////////////////////////// insert malek in database ////////////////////////////
if (isset($_POST["malek_name"]) && isset($_POST["malek_nationality"]) && isset($_POST["malek_personal_id"])) {
    $insert_malek = "INSERT INTO `managers`(`manager_name`,`manager_nationality` , `manager_personal_id`,
                   `company_id`) VALUES ('".$_POST["malek_name"]."','".$_POST["malek_nationality"]."',
                   '".$_POST["malek_personal_id"]."','".$formdata["company_id"]."')";
    $result = $connection->query($insert_malek);
}
// ///////////////////////////////// insert multiquery to database  and close connection ///////////////////////////////
// $result = $connection->multi_query($insert);
//     $database_instance->destructConnection();

?>