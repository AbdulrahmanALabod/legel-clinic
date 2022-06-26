<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>


<footer class="site-footer">
	<div class="container">
		<div class="row pt-5 pb-5 justify-content-between">
			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-2">
				<div class="footer-widget">
					<a href="" class="footer-widget__Logo">
						<img src="<?php echo base_url('assets/images/main/logofooter.svg') ?>" alt="" loading="lazy" />
					</a>

				</div>
			</div>

			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5 spec-hide">
				<h3 class="footer-widget__title">Company</h3>
				<ul class="list-unstyled footer-widget__contact">
				<li>
                    <a href="<?php echo site_url('index/about')?>">About Us</a>
                  </li>
                  <li>
                    <a href="">FAQs</a>
                  </li>
                  <li>
                    <a href="<?php echo site_url('index/price')?>">Pricing</a>
                  </li>
                  <li>
                    <a href="<?php echo site_url('index/contact')?>">Contact us</a>
                  </li>
                  <li>
                    <a href="">Events</a>
                  </li>
				</ul>
			</div>

			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3 pt-5">
				<h3 class="footer-widget__title">Get In Touch</h3>
				<ul class="list-unstyled footer-widget__contact">
					<li class="">
						<i><img src="<?php echo base_url('assets/images/main/carbon_phone.svg') ?>" alt="carbon_phone"></i>
						<a href="tel:666-888-0000">01000358970</a>
					</li>
					<li class="">
						<i><img src="<?php echo base_url('assets/images/main/akar-icons_location.svg') ?>" alt="akar-icons_location"></i>
						<a href="<?php echo site_url('index/contact')?>">Cairo, EGYPT</a>
					</li>
					<li class="">
						<i><img src="<?php echo base_url('assets/images/main/carbon_email (1).svg') ?>" alt="carbon_email"></i>
						<a href="mailto:info@thelegalclinics.com">info@thelegalclinics.com</a>
					</li>
				</ul>
			</div>

			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5">
				<h3 class="footer-widget__title">Follow us</h3>
				<div class="mc-form__response"></div>
				<div class="footer__social pt-1">
                    <a href="https://www.facebook.com/LegalClinic.Eg"><img src="<?php echo base_url('assets/images/main/brandico_facebook.svg')?>" alt="brandico_facebook"></a>
                    <a href="https://www.instagram.com/legalclinic.eg/"><img src="<?php echo base_url('assets/images/main/Frame.svg')?>" alt="Frame"></a>
                    <a href="https://twitter.com/TheLegalClinic2"><img src="<?php echo base_url('assets/images/main/foundation_social-twitter.svg')?>" alt="foundation_social-twitter"></a>
                    <a href="https://www.linkedin.com/company/legalclinic_eg/?original_referer="><img src="<?php echo base_url('assets/images/main/foundation_social-linkedin.svg')?>" alt="foundation_social-linkedin"></a>
                </div>
				<p class="work-time">Work Time<br>
					Sun- Thu: 9:00 - 18:00<br>
					Closed on Weekends</p>
			</div>
		</div>
	</div>
</footer>
<div class="search-popup">
	<div class="search-popup__overlay search-toggler"></div>
	<div class="search-popup__content">
		<form action="#">
			<label for="search" class="sr-only">search here</label>
			<input type="text" id="autocompleteinput" placeholder="Search Here...">
			<button type="submit" aria-label="search submit" class="thm-btn">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>
</div>
<a href="#" data-target="html" class="scroll-to-target scroll-to-top" style="display: inline;">
	<i class="fa fa-angle-up"></i>
</a>
</div>

<script src="<?php echo base_url('assets/js/jquery.js') ?>"></script>
<script src="<?php echo base_url('assets/js/popper.js') ?>"></script>
<script src="<?php echo base_url('assets/css/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/perfect-scrollbar.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/pcoded.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/menu-setting.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/magnific-popup') ?>"></script>
<script src="<?php echo base_url('assets/js/wow.js') ?>"></script>
<script src="<?php echo base_url('assets/js/dashboard.js') ?>"></script>
<script>
	function fnBrowserDetect() {
		let userAgent = navigator.userAgent;
		let browserName;
		if (userAgent.match(/safari/i)) {
			browserName = "safari";
			document.querySelector('body').style.fontFamily = 'Roboto, sans-serif';
		} else {
			document.querySelector('body').style.fontFamily = 'Gotham, sans-serif';
		}
		if (window.navigator.userAgent.indexOf("Mac") != -1) {
			// console.log("OS is Mac/iOS");
			document.querySelector('body').style.fontFamily = 'Roboto, sans-serif';

		} else {
			document.querySelector('body').style.fontFamily = 'Gotham, sans-serif';
		}
	}
	/* Window Load START */
	jQuery(window).on('load', function() {
		'use strict';
		$('#preloader').fadeOut(1000);
		setTimeout(() => {
			$('#main-wrapper').addClass('show');
		}, 1000);
	});

	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$(".hamburger").toggleClass("is-active");
		});
	});

	function changewidth(stylesidenav) {
		if (stylesidenav.matches) {
			$('#sidebar').toggleClass('responsive');
			$('#sidebar').toggleClass('active');
			$(".page").toggleClass("resp");
		} else {
			$('#sidebar').removeClass('responsive');
			$(".page").removeClass("resp");
		}
	}
	const stylesidenav = window.matchMedia("(max-width: 768px)");
	changewidth(stylesidenav);
	stylesidenav.addListener(changewidth);
</script>