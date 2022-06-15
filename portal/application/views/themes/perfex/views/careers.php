<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The-Legal-clinic</title>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-5.0.2-dist/css/bootstrap.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/fontawesome-free-6.1.1-web/css/all.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/swiper.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/jarallax.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/magnific-popup.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-select.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/nouislider.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/jquery-nouislider.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/animate.css') ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/css/main.css') ?>">
</head>

<body onload="fnBrowserDetect()">
  <div class="page-wrapper">
    <section class="about-content">
      <header>
        <div class="container">
          <nav class="navbar navbar-expand-lg nav-style bg-style navbar-text-light pt-4">
            <div class="col-auto col-lg-2">
              <a class="logo pt-4" href="<?php echo site_url(''); ?>" title="legal-clinic-logo"><img src="<?php echo base_url('assets/images/main/logo-nav.svg') ?>" alt=""></a>
            </div>
            <div class="col col-lg-8  align-self-start">
              <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#header-nav">
                <span></span>
                <span></span>
                <span></span>
              </button>
              <div id="header-nav" class="collapse navbar-collapse justify-content-center">
                <ul class="navbar-nav">
                  <li class="nav-item"><a class="nav-link" href="<?php echo site_url('') ?>">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/about'); ?>">About</a></li>
                  <li class="nav-item"><a class="nav-link active" href="<?php echo site_url('index/price'); ?>">Pricing</a></li>
                  <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/contact'); ?>">Contact us</a></li>
                  <li class="nav-item search-toggler at-spec-width"><a class="nav-link" href="contact.html">Search</a></li>
                  <li class="nav-item dropdown at-spec-width">
                    <a href="#" class="pro-spec">Profile
                      <button aria-label="dropdown toggler" id="drop-menu-profile" type="button">
                        <i class="fa fa-angle-down"></i>
                      </button>
                    </a>
                    <ul style="display: none;" id="ul-menu-profile">
                      <li class="current"><a href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a></li>
                      <li><a href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a></li>
                      <?php if (isset($_SESSION['client_logged_in'])) { ?>
                        <li><a class="dropdown-item" href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a></li>
                      <?php } else { ?>
                        <li><a class="dropdown-item" href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a></li>
                      <?php } ?>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <div class="social-icons col-auto col-lg-2 d-flex justify-content-end">
              <div class=" social-icons-light mb-0 d-flex">
                <a href="#" class="search-toggler align-self-center" style="padding-right: 4rem;"><img src="<?php echo base_url('assets/images/main/search-icon.svg') ?>" alt=""></a>
                <?php if (isset($_SESSION['client_logged_in'])) { ?>
                  <div class="dropdown">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                      <img src="<?php echo base_url('assets/images/main/profile.svg') ?>" alt="">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                      <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a></li>
                      <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a></li>
                      <li><a class="dropdown-item" href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a></li>
                    </ul>
                  </div>
                <?php } else { ?>
                  <div class="signin-out">
                    <a class="btn btn-signIn" href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a>
                  </div>
                <?php } ?>
              </div>
            </div>
          </nav>
        </div>
      </header>
      <iframe width="100%" height="850" style="margin-bottom:20px;" src="<?php echo site_url('multi_page_wtl/form/ebbaa8ed443a5163615b7a3a502f8d1d')?>" frameborder="0" allowfullscreen></iframe>
      <footer class="site-footer">
        <div class="container">
          <div class="row pt-5 pb-5 justify-content-between">
            <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 spec-logo">
              <div class="footer-widget">
                <a href="<?php echo site_url('') ?>" class="footer-widget__Logo">
                  <img src="<?php echo base_url('assets/images/main/logofooter.svg') ?>" alt="logofooter" />
                </a>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5 spec-hide">
              <h3 class="footer-widget__title">Company</h3>
              <ul class="list-unstyled footer-widget__contact">
                <li>
                  <a href="<?php echo site_url('index/about') ?>">About Us</a>
                </li>
                <li>
                  <a href="">FAQs</a>
                </li>
                <li>
                  <a href="<?php echo site_url('index/price') ?>">Pricing</a>
                </li>
                <li>
                  <a href="<?php echo site_url('index/contact') ?>">Contact us</a>
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
                  <a href="<?php echo site_url('index/contact') ?>">Cairo, EGYPT</a>
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
                <a href="#"><img src="<?php echo base_url('assets/images/main/brandico_facebook.svg') ?>" alt="brandico_facebook"></a>
                <a href="#"><img src="<?php echo base_url('assets/images/main/Frame.svg') ?>" alt="Frame"></a>
                <a href="#"><img src="<?php echo base_url('assets/images/main/foundation_social-twitter.svg') ?>" alt="foundation_social-twitter"></a>
                <a href="#"><img src="<?php echo base_url('assets/images/main/foundation_social-linkedin.svg') ?>" alt="foundation_social-linkedin"></a>
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
  <script src="<?php echo base_url('assets/js/swiper.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/jquery-ajaxchimp') ?>"></script>
  <script src="<?php echo base_url('assets/js/magnific-popup') ?>"></script>
  <script src="<?php echo base_url('assets/js/jquery-validate.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/bootstrap-select.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/wow.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/jquery-appear.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/jarallax.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/circle-progress.js') ?>"></script>
  <script src="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/owl.carousel.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/wNumb.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/nouislider.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/isotope.js') ?>"></script>
  <script src="<?php echo base_url('assets/js/index.js') ?>"></script>
  <script>
    $('.switch label').on('click', function() {
      var indicator = $(this).parent('.switch').find('span');
      if ($(this).hasClass('right')) {
        $(indicator).addClass('right');
        if (areatwo.style.display === 'none') {
          areatwo.style.display = 'block';
          areaone.style.display = 'none';
        }
      } else {
        $(indicator).removeClass('right');

        if (areaone.style.display === 'none') {
          areaone.style.display = 'block';
          areatwo.style.display = 'none';
        }

      }
    });
    const spanright = document.getElementById('span-right');
    const optionone = document.getElementById('optionone');
    const optiontwo = document.getElementById('optiontwo');

    const areaone = document.getElementById('program-365');
    const areatwo = document.getElementById('case-by-case');

    const pricing365 = document.querySelector('.pricing-365');
    const cardWrap365 = pricing365.querySelectorAll('.col');

    const programrow = document.querySelector('.program-row');
    const cardWrap = programrow.querySelectorAll('.col');

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
        [...cardWrap].forEach(element => {
          element.classList.add('mac');
        });
        [...cardWrap365].forEach(element => {
          element.classList.add('mac');
        });
      } else {
        document.querySelector('body').style.fontFamily = 'Gotham, sans-serif';
        [...cardWrap].forEach(element => {
          element.classList.remove('mac');
        });
        [...cardWrap365].forEach(element => {
          element.classList.remove('mac');
        });
      }
    }
  </script>
</body>

</html>