<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="<?php echo $locale; ?>">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title><?php if (isset($title)){ echo $title; } ?></title>
	<?php //echo compile_theme_css(); ?>
	<script src="<?php echo base_url('assets/plugins/jquery/jquery.min.js'); ?>"></script>
	<?php app_customers_head(); ?>
	
	
	<link rel="stylesheet" href="https://unruffled-hugle.45-76-42-208.plesk.page/css/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unruffled-hugle.45-76-42-208.plesk.page/css/fontawesome-free-6.1.1-web/css/all.min.css">
    <link rel="stylesheet" href="https://unruffled-hugle.45-76-42-208.plesk.page/css/main.css">
    <link rel="stylesheet" href="https://unruffled-hugle.45-76-42-208.plesk.page/css/signup.css">
	
</head>
<body class="customers <?php echo strtolower($this->agent->browser()); ?><?php if(is_mobile()){echo ' mobile';}?><?php if(isset($bodyclass)){echo ' ' . $bodyclass; } ?>" <?php if($isRTL == 'true'){ echo 'dir="rtl"';} ?>>
	<?php hooks()->do_action('customers_after_body_start'); ?>
