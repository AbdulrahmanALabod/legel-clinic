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
    <link rel="stylesheet" href="<?php echo base_url('assets/css/contact.css') ?>">
</head>

<body onload="fnBrowserDetect()">
    <div class="page-wrapper">
        <section class="about-content">
            <header>
                <div class="container">
                    <nav class="navbar navbar-expand-lg nav-style bg-style navbar-text-light pt-4">
                        <div class="col-auto col-lg-2">
                            <a class="logo pt-4" href="<?php echo site_url('')?>" title="legal-clinic-logo"><img src="<?php echo base_url('assets/images/main/logo-nav.svg') ?>" alt=""></a>
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
                                    <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/price'); ?>">Pricing</a></li>
                                    <li class="nav-item"><a class="nav-link active" href="<?php echo site_url('index/contact'); ?>">Contact us</a></li>
                                    <li class="nav-item search-toggler at-spec-width"><a class="nav-link" href="<?php echo site_url('index/price'); ?>">Search</a></li>
                                    <li class="nav-item dropdown at-spec-width">
                              <?php if (isset($_SESSION['client_logged_in'])) { ?>
                                <a href="" class="pro-spec">Profile
                                  <button aria-label="dropdown toggler" id="drop-menu-profile" type="button">
                                    <i class="fa fa-angle-down"></i>
                                  </button>
                                </a>
                                <?php } else { ?>
                                  <a class="nav-link" href="<?php echo site_url('authentication/login'); ?>">Login</a>
                                <?php } ?>  
                                <ul style="display: none;" id="ul-menu-profile">
                                  <li class="drop-item">
                                    <a href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a>
                                  </li>
                                  <li class="drop-item">
                                    <a href="<?php echo site_url('clients/profile'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a>
                                  </li>
                                  <?php   if(isset($_SESSION['client_logged_in'])){?>
                                    <li class="drop-item">
                                      <a href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a>
                                    </li>
                                  <?php }else{?>
                                      <li class="drop-item">
                                        <a href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a>
                                      </li>
                                  <?php }?>
                                </ul>
                            </li>
                                </ul>
                            </div>
                        </div>
                        <div class="social-icons col-auto col-lg-2 d-flex justify-content-end">
                            <div class=" social-icons-light mb-0 d-flex">
                                <!-- <li></li> -->
                                <a href="#" class="search-toggler align-self-center" style="padding-right: 4rem;"><img src="<?php echo base_url('assets/images/main/search-icon.svg') ?>" alt=""></a>
                                <!-- <li> -->
                                <?php if (isset($_SESSION['client_logged_in'])) { ?>
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                                            <img src="<?php echo base_url('assets/images/main/profile.svg') ?>" alt="">
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                                            <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a></li>
                                            <li><a class="dropdown-item" href="<?php echo site_url('clients/profile'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a></li>
                                            <li><a class="dropdown-item" href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a></li>
                                        </ul>
                                    </div>
                                <?php } else { ?>
                                    <div class="signin-out">
                                        <a class="btn btn-signIn" href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a>
                                    </div>
                                <?php } ?>
                                <!-- </li> -->
                                <!-- <a href="#"><img src="<?php echo base_url('assets/images/main/profile.svg') ?>" alt=""></a> -->
                            </div>
                        </div>
                    </nav>
                </div>
            </header>
            <div class="hero-wrap">
                <div class="container my-auto">
                    <div class="title-about d-flex justify-content-center align-items-center">
                        <!-- <div class=""> -->
                        <div class="col-12 text-center">
                            <h2>Contact us</h2>
                            <p class="pt-4 pb-4">Thank you for your interest</p>
                            <div class="but-contact">
                                <button class="btn btn-getin" data-bs-toggle="modal" data-bs-target="#exampleModal" type="button">Get In Touch</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- shapes -->
            <span class="lines-about">
                <img src="<?php echo base_url('assets/images/main/aboutlines.svg') ?>" alt="aboutlines">
            </span>
            <span class="xshades-about">
                <img src="<?php echo base_url('assets/images/main/xshadowsmall.svg') ?>" alt="xshadowsmall">
            </span>
            <span class="circles-about">
                <img src="<?php echo base_url('assets/images/main/circlelines.svg') ?>" alt="circlelines">
            </span>
            <span class="circleshadow-about">
                <img src="<?php echo base_url('assets/images/main/circleshadow.svg') ?>" alt="circleshadow">
            </span>
        </section>
        <!-- Modal -->
        <div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <form  action="<?php echo base_url('index/sendMessage'); ?>" method="post">                
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="d-flex justify-content-end">
                        <button type="button" class="btn" data-bs-dismiss="modal" aria-label="Close"><img src="<?php echo base_url('assets/images/main/ant-design_close-circle-outlined.svg') ?>" alt=""></button>
                    </div>
                    <div class="modal-header">
                        <h5 class="modal-title text-center" id="exampleModalLabel">Please fill out the form below to inquire about our work</h5>
                    </div>
                    <div class="modal-body">
                        <div class="row g-4">
                            <div class="col-md-6">
                                <!-- <label for="inputEmail4" class="form-label">Email</label> -->
                                <input name="name" type="text" class="form-control" id="inputEmail4" placeholder="Name" required>
                            </div>
                            <div class="col-md-6">
                                <!-- <label for="inputPassword4" class="form-label">Password</label> -->
                                <input name="email" type="email" class="form-control" id="inputPassword4" placeholder="Email" required>
                            </div>
                            <div class="col-12">
                                <!-- <label for="inputAddress" class="form-label">Address</label> -->
                                <input name="organization"  type="text" class="form-control" id="inputAddress" placeholder="Organization" required>
                            </div>
                            <div class="col-12">
                                <!-- <label for="inputAddress2" class="form-label">Address 2</label> -->
                                <input name="subject" type="text" class="form-control" id="inputAddress2" placeholder="Subject" required>
                            </div>
                            <div class="col-12">
                                <!-- <div class="form-floating"> -->
                                <textarea name="message" class="form-control" placeholder="Describe briefly" id="floatingTextarea2" style="height: 100px;resize: none;" required></textarea>
                                <!-- <label for="floatingTextarea2">Comments</label> -->
                                <!-- </div> -->
                            </div>
                    </div>
                    <div class="modal-footer justify-content-center">
                        <!-- <div class="col-12"> -->
                        <button type="submit" class="btn btn-getin">Lets Go</button>
                        <!-- </div> -->
                        <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button> -->
                    </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <section class="location">
            <div class="container">
                <div class="content row justify-content-center">
                    <div class="title text-center">
                        <div class="location-icon">
                            <img src="<?php echo base_url('assets/images/main/location.svg') ?>" alt="location">
                        </div>
                        <h2 class="pt-5 pb-5">Our Locations</h2>
                    </div>
                    <div class="address pb-5">
                        <div class="container">
                            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4 justify-content-center">
                                <div class="col">
                                    <div class="card">
                                        <div class="add-1">
                                            <h4>Downtown</h4>
                                            <p>Office 123, Greek Building,<br>
                                                Greek Campus, Downtown,<br>
                                                Cairo, Egypt.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="card">
                                        <div class="add-2">
                                            <h4>Abdeen</h4>
                                            <p>171 Tahrir St.,<br>
                                                Bab El Louk?? Ad Dawawin,<br>
                                                Abdeen, Cairo, Egypt</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="card">
                                        <div class="add-3">
                                            <h4>Cairo festival</h4>
                                            <p>230 Creative Hub ,<br>
                                                Cairo festival ,<br>
                                                Cairo , Egypt.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact">
                        <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4 g-4 justify-content-evenly">
                            <div class="col text-center">
                                <h6><img src="<?php echo base_url('assets/images/main/emaill.svg') ?>" alt="emaill"></h6>

                                <a href="mailto:info@thelegalclinics.com">info@thelegalclinics.com</a>
                            </div>
                            <div class="col text-center">
                                <h6><img src="<?php echo base_url('assets/images/main/phonee.svg') ?>" alt="phonee"></h6>

                                <a href="tel:+2 01000358970">(+2) 01000358970</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- shapes -->
            <!-- <div class="shapes"> -->
            <!-- <span class="lines-about-two">
      <img src="<?php echo base_url('assets/images/main/aboutlines.svg') ?>" alt="aboutlines">
    </span>
    <span class="xshades-about-two">
      <img src="<?php echo base_url('assets/images/main/xshadowsmall.svg') ?>" alt="xshadowsmall">
    </span>
    <span class="circles-about-two">
      <img src="<?php echo base_url('assets/images/main/circlelines.svg') ?>" alt="circlelines">
    </span>
    <span class="circleshadow-about-two">
      <img src="<?php echo base_url('assets/images/main/circleshadow.svg') ?>" alt="circleshadow">
    </span> -->
            <!-- </div>  -->
        </section>
        <section class="social">
            <div class="container">
                <div class="row row-cols-1 row-cols-md-2 row-cols-xl-6 g-4 justify-content-center">
                    <div class="col d-flex justify-content-center">
                        <a href="#"><img src="<?php echo base_url('assets/images/main/facebook.svg') ?>" alt="facebook"></a>
                    </div>
                    <div class="col d-flex justify-content-center">
                        <a href="#"><img src="<?php echo base_url('assets/images/main/twiter.svg') ?>" alt="twiter"></a>
                    </div>
                    <div class="col d-flex justify-content-center">
                        <a href="#"><img src="<?php echo base_url('assets/images/main/linkedin.svg') ?>" alt="linkedin"></a>
                    </div>
                    <div class="col d-flex justify-content-center">
                        <a href="#"><img src="<?php echo base_url('assets/images/main/instgram.svg') ?>" alt="instgram"></a>
                    </div>
                </div>
            </div>
        </section>
        <section class="geo-location">
            <div class="mapouter">
                <div class="gmap_canvas">
                    <iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=The%20Legal%20Clinic%20Office%20123,%20Greek%20Building,%20Greek%20Campus,%20Downtown%20Cairo,%2012451&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    <a href="https://123movies-to.org">123 movies</a><br>
                    <style>
                        .mapouter {
                            position: relative;
                            text-align: right;
                            height: 500px;
                            width: 100%;
                        }
                    </style>
                    <a href="https://www.embedgooglemap.net">interactive google maps for website</a>
                    <style>
                        .gmap_canvas {
                            overflow: hidden;
                            background: none !important;
                            height: 500px;
                            width: 100%;
                        }
                    </style>
                </div>
            </div>
        </section>
        <!-- footer -->
        <footer class="site-footer">
          <div class="container">
            <div class="row pt-5 pb-5 justify-content-between">
              <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 spec-logo">
                <div class="footer-widget">
                  <a href="<?php echo site_url('')?>" class="footer-widget__Logo">
                    <img src="<?php echo base_url('assets/images/main/logofooter.svg')?>" alt="logofooter"/>
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
                    <!-- <i class="fa-solid fa-phone-volume"></i> -->
                    <i><img src="<?php echo base_url('assets/images/main/carbon_phone.svg')?>" alt="carbon_phone"></i>
                    <a href="tel:666-888-0000">01000358970</a>
                  </li>
                  <li  class="">
                    <!-- <i class="fa-solid fa-location-dot"></i> -->
                    <i><img src="<?php echo base_url('assets/images/main/akar-icons_location.svg')?>" alt="akar-icons_location"></i>
                    <a href="<?php echo site_url('index/contact')?>">Cairo, EGYPT</a>
                  </li>
                  <li  class="">
                    <!-- <i class="fa-solid fa-envelope"></i> -->
                    <i><img src="<?php echo base_url('assets/images/main/carbon_email (1).svg')?>" alt="carbon_email"></i>
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
        <!-- search pop up -->
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
        <!-- back top  -->
        <a href="#" data-target="html" class="scroll-to-target scroll-to-top" style="display: inline;">
            <i class="fa fa-angle-up"></i>
        </a>
    </div>
    <!--js links-->
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
        const address = document.querySelector('.address');
        const cardWrap = address.querySelectorAll('.col');

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

            } else {
                document.querySelector('body').style.fontFamily = 'Gotham, sans-serif';
                [...cardWrap].forEach(element => {
                    element.classList.remove('mac');
                });

            }
        }
    </script>
</body>

</html>