<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The-Legal-clinic-Dashboard</title>
    <!-- css link -->
    <link rel="stylesheet" href="css/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/fontawesome-free-6.1.1-web/css/all.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/perfect-scrollbar-min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/dashboardstructure.css">
    
</head>
<body onload="fnBrowserDetect()">
    <!-- preloader -->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!-- main wrapper -->
    <div id="main-wrapper">
        <!-- nav header -->
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar" class="pcoded-navbar">
                <div class="nav-header">
                    <a href="index.html" class="brand-logo">
                        <img class="logo-abbr" src="images/logo-appr.svg" alt="logo-appr">
                        <img class="logo-compact" src="images/logo-nav.svg" alt="logo-nav">
                        <img class="brand-title" src="images/logo-nav.svg" alt="logo-nav">
                    </a>
                </div>
                <div class="navbar-content scroll-div " >
                    <span id="navBarContent"></span>
                    <ul class="nav pcoded-inner-navbar">                        
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/companyprofile.svg" alt="companyprofile">
                                    <span class="pcoded-mtext">Company profile</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
                            </a>
                            <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/invoice.svg" alt="invoice" class="img-inner">
                                        <span>Invoice</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/balance$.svg" alt="balance">
                                        <span>Balance</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/contacts.svg" alt="contacts">
                                        <span>Contacts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/mymatters.svg" alt="mymatters">
                                        <span>My Matters</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/onlineinco.svg" alt="onlineinco">
                                    <span class="pcoded-mtext">Online Incorporation</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
                            </a>
                            <!-- <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/invoice.svg" alt="invoice">
                                        <span>Invoice</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/balance$.svg" alt="balance">
                                        <span>Balance</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/contacts.svg" alt="contacts">
                                        <span>Contacts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/mymatters.svg" alt="mymatters">
                                        <span>My Matters</span>
                                    </a>
                                </li>
                            </ul> -->
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/makecontract.svg" alt="makecontract">
                                    <span class="pcoded-mtext">Make a Contract</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

                            </a>
                            <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="freeContracts.html" class="">
                                        <img src="images/freecontract.svg" alt="freecontract" class="img-inner">
                                        <span>Free Contracts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/paidcontract.svg" alt="paidcontract">
                                        <span>paied contracts</span>
                                    </a>
                                </li>
                                
                            </ul>
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/requestservice.svg" alt="requestservice">
                                    <span class="pcoded-mtext">Request service</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

                            </a>
                            <!-- <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/freecontract.svg" alt="freecontract">
                                        <span>Free Contracts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/paidcontract.svg" alt="paidcontract">
                                        <span>paied contracts</span>
                                    </a>
                                </li>
                                
                            </ul> -->
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/askalaywer.svg" alt="askalaywer">
                                    <span class="pcoded-mtext">Ask a Lawyer</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
                            </a>
                            <!-- <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/freecontract.svg" alt="freecontract">
                                        <span>Free Contracts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/paidcontract.svg" alt="paidcontract">
                                        <span>paied contracts</span>
                                    </a>
                                </li>
                                
                            </ul> -->
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/legalresource.svg" alt="legalresource">
                                    <span class="pcoded-mtext">our Legal Resources</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

                            </a>
                            <!-- <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/freecontract.svg" alt="freecontract">
                                        <span>Free Contracts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/paidcontract.svg" alt="paidcontract">
                                        <span>paied contracts</span>
                                    </a>
                                </li>
                                
                            </ul> -->
                        </li>
                        <li class="nav-item pcoded-hasmenu">
                            <a href="#!" class="nav-link justify-content-between">
                                <span class="pcoded-micon">
                                    <img src="images/home.svg" alt="home">
                                    <span class="pcoded-mtext">Home</span>
                                </span>
                                <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

                            </a>
                            <!-- <ul class="pcoded-submenu" style="display: none;">
                                <li class="inner-list">
                                    <a href="#" class="">
                                        <img src="images/freecontract.svg" alt="freecontract">
                                        <span>Free Contracts</span>
                                    </a>
                                </li>
                                <li class="inner-list">
                                    <a href="" class="">
                                        <img src="images/paidcontract.svg" alt="paidcontract">
                                        <span>paied contracts</span>
                                    </a>
                                </li>
                                
                            </ul> -->
                        </li>
                   </ul>
                </div>
                <span class="linesdashboard">
                    <img src="images/linesdashboard.svg" alt="linesdashboard">
                </span>
            </nav>
            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container">
                            <div class="nav-control" id="sidebarCollapse">
                                <div class="hamburger">
                                    <span class="line"></span>
                                    <span class="line"></span>
                                    <span class="line"></span>
                                </div>
                            </div>
                            <div class="social-icons spec col-auto col-lg-2 d-flex justify-content-end">
                                <div class=" social-icons-light mb-0 d-flex">
                                  <a href="#" class="search-toggler align-self-center" style="margin-right: 4rem;"><img src="images/search-icon.svg" alt="search-icon"></a>
                                    <div class="dropdown">
                                      <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                                        <img src="images/profile.svg" alt="profile">
                                      </a>
                                      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                                          <li><a class="dropdown-item" href="dashboardStructure.html"><img src="images/dashicon.svg" alt="dashicon"><span class="px-2">Dashboard</span></a></li>
                                          <li><a class="dropdown-item" href="#"><img src="images/settingicon.svg" alt="settingicon"><span class="px-2">Account setting</span></a></li>
                                          <li><a class="dropdown-item" href="#"><img src="images/logouticon.svg" alt="logouticon"><span class="px-2">Sign Out</span></a></li>
                                      </ul>
                                    </div>
                                  </div>
                              </div>
                    </div>
                </nav>
                <div class="content-wrap">
                   
                </div>
            </div>
        </div>
        <!-- footer -->
        <footer class="site-footer">
        <div class="container">
          <div class="row pt-5 pb-5 justify-content-between">
            <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2">
              <div class="footer-widget">
                <a href="" class="footer-widget__Logo">
                  <img src="images/logofooter.svg" alt="" loading="lazy"/>
                </a>
               
              </div>
            </div>
          
            <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5">
              <h3 class="footer-widget__title">Company</h3>
              <ul class="list-unstyled footer-widget__contact">
                <li>
                  <a href="">About Us</a>
                </li>
                <li>
                  <a href="">Login</a>
                </li>
                <li>
                  <a href="">FAQs</a>
                </li>
                <li>
                  <a href="">Pricing</a>
                </li>
                <li>
                  <a href="">Contact us</a>
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
                  <i><img src="images/carbon_phone.svg" alt="carbon_phone"></i>
                  <a href="tel:666-888-0000">01000358970</a>
                </li>
                <li  class="">
                  <!-- <i class="fa-solid fa-location-dot"></i> -->
                  <i><img src="images/akar-icons_location.svg" alt="akar-icons_location"></i>
                  <a href="#">Cairo, EGYPT</a>
                </li>
                <li  class="">
                  <!-- <i class="fa-solid fa-envelope"></i> -->
                  <i><img src="images/carbon_email (1).svg" alt="carbon_email"></i>
                  <a href="mailto:info@thelegalclinics.com">info@thelegalclinics.com</a>
                </li>
              </ul>
            </div>
  
            <div class="col-sm-6 col-md-6 col-lg-3 col-xl-2 pt-5">
              <h3 class="footer-widget__title">Follow us</h3>
              <div class="mc-form__response"></div>
                <div class="footer__social pt-1">
                  <a href="#"><img src="images/brandico_facebook.svg" alt="brandico_facebook"></a>
                  <a href="#"><img src="images/Frame.svg" alt="Frame"></a>
                  <a href="#"><img src="images/foundation_social-twitter.svg" alt="foundation_social-twitter"></a>
                  <a href="#"><img src="images/foundation_social-linkedin.svg" alt="foundation_social-linkedin"></a>
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
         <script src="js/jquery.js"></script>
         <script src="js/popper.js"></script>
         <script src="css/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
         <script src="js/perfect-scrollbar.min.js"></script>
         <script src="js/pcoded.min.js"></script>
         <script src="js/menu-setting.min.js"></script>
         <script src="js/magnific-popup"></script>
         <script src="js/wow.js"></script>
         <script src="js/index.js"></script>
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
            /* Window Load START */
        jQuery(window).on('load',function () {
            'use strict'; 
            $('#preloader').fadeOut(1000);
            setTimeout(()=>{
                $('#main-wrapper').addClass('show');            
            },1000);
        });
       
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(".hamburger").toggleClass("is-active");
            });
        });
        function changewidth(stylesidenav){
            if(stylesidenav.matches){
                $('#sidebar').toggleClass('active');
                $(".hamburger").toggleClass("is-active");
            } else{
                $('#sidebar').removeClass('active');
                $(".hamburger").removeClass("is-active");
            }
        }
        const stylesidenav = window.matchMedia("(max-width: 768px)");
        changewidth(stylesidenav);
        stylesidenav.addListener(changewidth);

        
        </script>
</body>
</html>