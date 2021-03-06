<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The-Legal-clinic</title>
    <!-- css link -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-5.0.2-dist/css/bootstrap.min.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/fontawesome-free-6.1.1-web/css/all.min.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/swiper.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/jarallax.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/magnific-popup.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-select.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/nouislider.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/jquery-nouislider.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/animate.css')?>">
    
    <link rel="stylesheet" href="<?php echo base_url('assets/css/main.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/about.css')?>">
</head>
<body onload="fnBrowserDetect()">
    <div class="page-wrapper">
      <!-- main page content -->
       <section class="about-content">
        <!-- header -->
        <header> 
          <div class="container">
            <nav class="navbar navbar-expand-lg nav-style bg-style navbar-text-light pt-4">
              <div class="col-auto col-lg-2"> 
                  <!-- Logo --> 
                  <a class="logo pt-4" href="<?php echo site_url('')?>" title="legal-clinic-logo"><img src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt=""></a>  
                  <!-- Logo End --> 
                </div>
                <div class="col col-lg-8  align-self-start">
                  <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#header-nav">
                    <span></span>
                    <span></span>
                    <span></span>
                  </button>
                  <div id="header-nav" class="collapse navbar-collapse justify-content-center">
                    <ul class="navbar-nav">
                      <li class="nav-item"><a class="nav-link" href="<?php echo site_url('/')?>">Home</a></li>
                      <li class="nav-item"><a class="nav-link active" href="<?php echo site_url('index/about')?>">About</a></li>
                      <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/price'); ?>">Pricing</a></li>
                      <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/contact'); ?>">Contact us</a></li>
                      <li class="nav-item search-toggler at-spec-width"><a class="nav-link" href="contact.html">Search</a></li>
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
                  <a href="#" class="search-toggler align-self-center" style="padding-right: 4rem;"><img src="<?php echo base_url('assets/images/main/search-icon.svg')?>" alt=""></a>
                  <!-- <li> -->
                  <?php if (isset($_SESSION['client_logged_in'])) { ?>
                          <div class="dropdown" >
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                              <img src="<?php echo base_url('assets/images/main/profile.svg')?>" alt="">
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                              <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><i class="fa-solid fa-table-columns"></i>Dashboard</a></li>
                              <li><a class="dropdown-item" href="<?php echo site_url('clients/profile'); ?>"><i class="fa-solid fa-gear"></i>Account setting</a></li>
                      <li><a class="dropdown-item"  href="<?php echo site_url('authentication/logout'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Sign Out</a></li>
                      </ul>
                          </div>
                    <?php } else { ?>
                      <div class="signin-out">
                            <a class="btn btn-signIn"  href="<?php echo site_url('authentication/login'); ?>"><i class="fa-solid fa-arrow-right-from-bracket"></i>Login</a>
                          </div>
                      <?php } ?>
                  <!-- </li> -->
                  <!-- <a href="#"><img src="<?php echo base_url('assets/images/main/profile.svg')?>" alt=""></a> -->
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
                  <h2>About Us</h2>
                  <p class="pt-4 pb-4">Is the first law firm specialized in serving and <br>supporting startups and empowering <br>entrepreneurship in MENA Region.</p>
                </div>
            </div>  
          </div>
         
        </div>
    <!-- shapes -->
     <!-- <div class="shapes"> -->
      <span class="lines-about">
        <img src="<?php echo base_url('assets/images/main/aboutlines.svg')?>" alt="aboutlines">
      </span>
      <span class="xshades-about">
        <img src="<?php echo base_url('assets/images/main/xshadowsmall.svg')?>" alt="xshadowsmall">
      </span>
      <span class="circles-about">
        <img src="<?php echo base_url('assets/images/main/circlelines.svg')?>" alt="circlelines">
      </span>
      <span class="circleshadow-about">
        <img src="<?php echo base_url('assets/images/main/circleshadow.svg')?>" alt="circleshadow">
      </span>
    <!-- </div>  -->
    
    </section>
      <!-- about us -->
      <section class="about-us">
          <!-- <div class="title text-center">
            <h2>About Us</h2>
          </div> -->
          <span class="quotes">
            <img src="<?php echo base_url('assets/images/main/quote.svg')?>" alt="quote">
          </span>
          <span class="dotscircle">
            <img src="<?php echo base_url('assets/images/main/dotscircles.svg')?>" alt="dotscircles">
          </span>
          <div class="content">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-12 col-lg-9">
                <div class="365-program text-center">
                  <svg width="98" height="49" viewBox="0 0 98 49" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M36.1924 25.9433C35.382 23.0376 34.101 20.5629 32.2514 18.3428C33.7546 16.2664 35.2382 14.2226 36.7218 12.1723C39.3622 8.53525 42.0091 4.90477 44.6234 1.2547C44.9632 0.778031 45.3162 0.595201 45.9109 0.601731C48.8389 0.634379 51.7669 0.61479 54.8974 0.61479C51.8061 4.81335 48.8062 8.88133 45.7345 13.0538C47.9958 13.204 50.0611 13.6153 51.9891 14.5295C58.7861 17.7421 62.4134 23.129 62.6422 30.6251C62.8317 36.7368 67.7138 41.3206 73.6547 40.6872C78.3277 40.191 82.1184 36.3516 82.4909 31.722C82.8765 26.9423 79.9028 22.5805 75.3605 21.2746C71.2627 20.0993 66.7923 21.7056 64.3741 25.2185C64.2434 25.4079 64.1127 25.5972 63.897 25.9041C63.0997 23.0572 61.8252 20.5759 59.9756 18.3428C60.8122 17.1609 61.6488 15.9986 62.4722 14.8298C65.6747 10.3179 68.8837 5.80586 72.0666 1.27428C72.4064 0.791091 72.7659 0.61479 73.3541 0.61479C81.3799 0.627849 89.4056 0.61479 97.4379 0.60826C97.5883 0.60826 97.732 0.627849 98 0.640909C97.8039 0.934743 97.6732 1.14369 97.5229 1.34611C95.9282 3.51395 94.3139 5.66221 92.7453 7.84964C92.3859 8.3459 92.0199 8.54831 91.399 8.54831C86.7456 8.5222 82.0922 8.54831 77.4389 8.52873C76.8768 8.52873 76.5369 8.70503 76.2167 9.15557C75.3213 10.4354 74.3736 11.6825 73.3998 13.0081C74.3867 13.1517 75.3017 13.2562 76.2102 13.4325C84.2294 14.9996 90.2749 22.2606 90.3598 30.4161C90.4513 39.3748 84.4516 46.6488 75.5958 48.3204C66.459 50.0442 57.0084 43.6452 55.2504 34.4906C54.9628 32.9888 54.9497 31.4347 54.7929 29.9003C54.355 25.6038 51.4335 22.1953 47.303 21.1505C43.3032 20.145 39.055 21.797 36.663 25.2838C36.5257 25.4601 36.4081 25.6299 36.1924 25.9433Z" fill="#000086"/>
                    <path d="M11.1217 20.9285C14.1869 16.7626 17.1475 12.7338 20.2128 8.57443C14.6509 8.57443 9.21981 8.57443 3.57301 8.57443C4.49454 7.31421 5.28535 6.23029 6.0827 5.1529C7.08919 3.7882 8.08914 2.41044 9.12831 1.07187C9.30477 0.843328 9.67077 0.640909 9.94527 0.634379C18.4155 0.60826 26.8857 0.61479 35.3559 0.61479C35.4539 0.61479 35.5585 0.634379 35.833 0.653968C32.2972 5.47938 28.8202 10.2068 25.4543 14.7841C27.0752 16.1423 28.7548 17.3176 30.16 18.7607C33.4932 22.1822 34.8069 26.433 34.9768 31.1474C35.1794 36.789 39.7609 40.968 45.375 40.6872C48.5252 40.5305 51.0871 39.1593 52.9629 36.5866C53.1459 36.332 53.3223 36.0773 53.5053 35.8292C53.5184 35.8096 53.5511 35.8031 53.6295 35.7704C54.4007 38.5194 55.6752 41.0072 57.5444 43.2469C55.7797 45.0491 53.7537 46.3811 51.4466 47.2953C40.7674 51.5199 29.0293 44.7552 27.3235 33.374C27.0883 31.8004 27.1209 30.181 26.8072 28.6335C25.755 23.5143 21.0885 20.7457 17.2587 20.922C15.2718 21.0004 13.2915 20.9285 11.1217 20.9285Z" fill="#000086"/>
                    <path d="M0.0110856 30.7752C2.61227 30.7752 5.16117 30.7752 7.71661 30.7752C8.10875 35.568 10.3766 38.9961 15.0496 40.2759C19.8991 41.6079 23.4087 39.3748 25.9903 35.4244C26.5131 36.7433 26.9576 38.1015 27.585 39.3683C28.2189 40.6481 29.0424 41.8299 29.8006 43.0902C26.9445 46.5574 19.5984 50.2597 11.9844 47.5891C3.47498 44.605 -0.230733 36.7303 0.0110856 30.7752Z" fill="#000086"/>
                    </svg>     
                    <h2 class="pt-3 pb-3">The 365 Legal Program</h2>               
                    <p class="text-about pb-5">Recently, we have launched a new program ???365 Legal Program??? that covers all the startups legal requirements all over the year from legal awareness workshops to company formation, contract review, drafting, legal consultation and much more.
                      365 Legal Program is mainly tailored to provide legal support to all startups providing them with a high-quality service that accommodates their financial statue by offering a fixed monthly fee of EGP 1,000.
                      Our mission is to create a high quality and strong legal infrastructure for startups so the business can grow and expand without any legal obstacles now and in the future.
                    </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <span class="linesbreak">
          <img src="<?php echo base_url('assets/images/main/linesbreak.svg')?>" alt="linesbreak">
        </span>
      </section>
      <!-- our partners -->
      <section class="our-partner">
          <span class="linesbreak-two">
            <img src="<?php echo base_url('assets/images/main/linesbreak.svg')?>" alt="linesbreak">
          </span>
        <div class="container">
          <div class="d-flex flex-wrap justify-content-center">
            <div class="partner text-center">
              <img src="<?php echo base_url('assets/images/main/partnericon.svg')?>" alt="partnericon">
              <h2>Our Partners</h2>
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="row justify-content-evenly align-items-center">
              <div class="col-12 col-sm-6 col-md-6 col-lg-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/edventures.svg')?>" alt="edventures">
              </div>
              <div class="col-12 col-sm-6 col-md-6 col-lg-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/flux.svg')?>" alt="flux">
              </div>
              <div class="col-12 col-sm-6 col-md-6 col-lg-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/icealex.svg')?>" alt="icealex">
              </div>
            </div>
            <div class="row  justify-content-between align-items-center">
              <div class="col-12 col-sm-6 col-md-6 col-lg-5 col-xl-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/creativehub.svg')?>" alt="creativehub">
              </div>
              <div class="col-12 col-sm-6 col-md-6 col-lg-5 col-xl-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/khanfounda.svg')?>" alt="khanfounda">
              </div>
              <div class="col-12 col-sm-6 col-md-6 col-lg-5 col-xl-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/hultprize.svg')?>" alt="hultprize">
              </div>
              <div class="col-12 col-sm-6 col-md-6 col-lg-5 col-xl-2 d-flex justify-content-center">
                <img src="<?php echo base_url('assets/images/main/genegypt.svg')?>" alt="genegypt">
              </div>
            </div>
          </div>
          
          </div>
          <span class="dotscircle-two">
            <img src="<?php echo base_url('assets/images/main/dotscircles.svg')?>" alt="dotscircles">
          </span>
      </section>
      <!-- our goal -->
      <section class="our-goal">
        <div class="content">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-12 col-lg-7">
                <div class="text-center title-goal">
                  <img src="<?php echo base_url('assets/images/main/ourgoal.svg')?>" alt="ourgoal">
                  <h2>Our Goal</h2>
                  <p>Our goal is to increase startups and entrepreneurs legal awareness and benefit the whole ecosystem, ensuring that they are in the right track to prevent any legal struggles they might have.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- logo -->
      <section class="logo">
        <div class="d-flex justify-content-center logo-padding">
          <img src="<?php echo base_url('assets/images/main/logo.svg')?>" alt="logo" class="img-logo">
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
     <script src="<?php echo base_url('assets/js/jquery.js')?>"></script>
     <script src="<?php echo base_url('assets/js/popper.js')?>"></script>
     <script src="<?php echo base_url('assets/css/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js')?>"></script>
     <script src="<?php echo base_url('assets/js/swiper.js')?>"></script>
     <script src="<?php echo base_url('assets/js/jquery-ajaxchimp')?>"></script>
     <script src="<?php echo base_url('assets/js/magnific-popup')?>"></script>
     <script src="<?php echo base_url('assets/js/jquery-validate.js')?>"></script>
     <script src="<?php echo base_url('assets/js/bootstrap-select.js')?>"></script>
     <script src="<?php echo base_url('assets/js/wow.js')?>"></script>
     <script src="<?php echo base_url('assets/js/jquery-appear.js')?>"></script>
     <script src="<?php echo base_url('assets/js/jarallax.js')?>"></script>
     <script src="<?php echo base_url('assets/js/circle-progress.js')?>"></script>
     <script src="<?php echo base_url('assets/css/OwlCarousel2-2.3.4/dist/owl.carousel.min.js')?>"></script>
     <script src="<?php echo base_url('assets/js/wNumb.js')?>"></script>
     <script src="<?php echo base_url('assets/js/nouislider.js')?>"></script>
     <script src="<?php echo base_url('assets/js/isotope.js')?>"></script>
     <script src="<?php echo base_url('assets/js/index.js')?>"></script>
     <script>
       function fnBrowserDetect(){
         let userAgent = navigator.userAgent;
         let browserName;
         if(userAgent.match(/safari/i)){
           browserName = "safari";
           document.querySelector('body').style.fontFamily  = 'Roboto, sans-serif';
          } else{
          document.querySelector('body').style.fontFamily  = 'Gotham, sans-serif';
         }
          if (window.navigator.userAgent.indexOf("Mac") != -1) {
            // console.log("OS is Mac/iOS");
            document.querySelector('body').style.fontFamily  = 'Roboto, sans-serif';
          } else{
          document.querySelector('body').style.fontFamily  = 'Gotham, sans-serif';
         }
        }
     </script>
</body>
</html>