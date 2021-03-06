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
    <link rel="stylesheet" href="<?php echo base_url('assets/css/pricing.css')?>">
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
                  <a class="logo pt-4" href="<?php echo site_url(''); ?>" title="legal-clinic-logo"><img src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="" ></a>  
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
                          <li class="nav-item"><a class="nav-link" href="<?php echo site_url('')?>">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="<?php echo site_url('index/about'); ?>">About</a></li>
                            <li class="nav-item"><a class="nav-link active" href="<?php echo site_url('index/price'); ?>">Pricing</a></li>
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
                                  <a class="nav-link" href="<?php echo site_url('authentication/login'); ?>">Log in</a>
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
                  <h2>The Legal Clinic</h2>
                  <p class="pt-4 pb-4">Is the first law firm specialized in serving and <br>supporting startups and empowering <br>entrepreneurship in MENA Region.</p>
                  <div class="switch">
                    <input name="radio" type="radio" value="optionone" id="optionone" checked>
                    <label for="optionone"><svg width="60" height="36" viewBox="0 0 72 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M26.5903 19.0063C25.9949 16.827 25.0538 14.971 23.6949 13.3059C24.7993 11.7486 25.8893 10.2158 26.9793 8.67803C28.9192 5.95027 30.8639 3.22741 32.7845 0.48985C33.0342 0.132352 33.2935 -0.00477098 33.7305 0.000126254C35.8816 0.0246124 38.0328 0.00992073 40.3328 0.00992073C38.0616 3.15884 35.8576 6.20982 33.6008 9.33916C35.2622 9.45179 36.7795 9.76032 38.196 10.4459C43.1898 12.8554 45.8548 16.8956 46.0228 22.5176C46.1621 27.1014 49.7489 30.5393 54.1137 30.0643C57.5469 29.6921 60.3319 26.8125 60.6056 23.3404C60.8889 19.7556 58.7041 16.4842 55.3669 15.5048C52.3563 14.6233 49.0719 15.828 47.2953 18.4627C47.1992 18.6047 47.1032 18.7468 46.9447 18.9769C46.3589 16.8417 45.4226 14.9808 44.0637 13.3059C44.6783 12.4195 45.293 11.5478 45.898 10.6712C48.2508 7.28722 50.6084 3.90322 52.9469 0.504542C53.1965 0.142146 53.4606 0.00992073 53.8928 0.00992073C59.7893 0.0197152 65.6858 0.00992073 71.5871 0.00502349C71.6975 0.00502349 71.8031 0.0197152 72 0.0295097C71.8559 0.249885 71.7599 0.406597 71.6495 0.558411C70.4779 2.18429 69.2918 3.79549 68.1394 5.43606C67.8753 5.80825 67.6064 5.96006 67.1503 5.96006C63.7315 5.94047 60.3127 5.96006 56.8939 5.94537C56.4809 5.94537 56.2312 6.0776 55.9959 6.41551C55.3381 7.37537 54.6419 8.31074 53.9264 9.30488C54.6515 9.41262 55.3237 9.49097 55.9911 9.6232C61.8828 10.7985 66.3244 16.2443 66.3868 22.3609C66.454 29.0799 62.0461 34.5354 55.5398 35.7891C48.827 37.082 41.8838 32.2827 40.5921 25.4168C40.3808 24.2904 40.3712 23.1249 40.256 21.974C39.9343 18.7516 37.7879 16.1953 34.7532 15.4117C31.8146 14.6576 28.6935 15.8966 26.9361 18.5117C26.8352 18.6439 26.7488 18.7712 26.5903 19.0063Z" fill="#F6F9FF"/>
                      <path d="M8.17103 15.2452C10.423 12.1208 12.5982 9.09919 14.8502 5.97965C10.7639 5.97965 6.77374 5.97965 2.62507 5.97965C3.30211 5.03449 3.88311 4.22154 4.46892 3.4135C5.20838 2.38998 5.94304 1.35666 6.70651 0.352727C6.83616 0.181324 7.10505 0.0295097 7.30673 0.0246124C13.5297 0.00502349 19.7527 0.00992073 25.9757 0.00992073C26.0478 0.00992073 26.1246 0.0246124 26.3263 0.0393042C23.7285 3.65836 21.174 7.20396 18.7012 10.6369C19.892 11.6556 21.126 12.5371 22.1584 13.6193C24.6072 16.1855 25.5724 19.3736 25.6972 22.9094C25.8461 27.1406 29.2121 30.2748 33.3367 30.0643C35.6511 29.9467 37.5334 28.9183 38.9115 26.9888C39.0459 26.7978 39.1756 26.6068 39.31 26.4207C39.3196 26.406 39.3437 26.4011 39.4013 26.3766C39.9679 28.4384 40.9042 30.3042 42.2775 31.984C40.981 33.3356 39.4925 34.3347 37.7975 35.0203C29.9515 38.1888 21.3277 33.1152 20.0744 24.5794C19.9016 23.3991 19.9256 22.1846 19.6951 21.024C18.922 17.1845 15.4936 15.1081 12.6798 15.2403C11.2201 15.2991 9.76519 15.2452 8.17103 15.2452Z" fill="#F6F9FF"/>
                      <path d="M0.0081445 22.6303C1.91922 22.6303 3.79188 22.6303 5.66935 22.6303C5.95745 26.2248 7.62364 28.7959 11.0569 29.7557C14.6197 30.7548 17.1982 29.0799 19.0949 26.1171C19.479 27.1063 19.8055 28.125 20.2665 29.075C20.7323 30.0349 21.3373 30.9213 21.8943 31.8665C19.7959 34.4669 14.3988 37.2436 8.80485 35.2406C2.55304 33.0026 -0.169518 27.0965 0.0081445 22.6303Z" fill="#F6F9FF"/>
                      </svg> program</label>
                    <input name="radio" type="radio" value="optiontwo" id="optiontwo">
                    <label for="optiontwo" class="right">Case-By-Case</label>
                    <span aria-hidden="true" id="span-right"></span>
                  </div>                
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
      <div id="program-365" >
        <!-- pricing 365 pref -->
        <section class="pref-365">
          <div class="container">
            <div class="365-content d-flex justify-content-center">
             <!-- <div class="container"> -->
               <div class="row justify-content-center">
                 <div class="col-12 col-lg-9">
                   <div class="365-program text-center">
                     <svg width="98" height="49" viewBox="0 0 98 49" fill="none" xmlns="http://www.w3.org/2000/svg">
                       <path d="M36.1924 25.9433C35.382 23.0376 34.101 20.5629 32.2514 18.3428C33.7546 16.2664 35.2382 14.2226 36.7218 12.1723C39.3622 8.53525 42.0091 4.90477 44.6234 1.2547C44.9632 0.778031 45.3162 0.595201 45.9109 0.601731C48.8389 0.634379 51.7669 0.61479 54.8974 0.61479C51.8061 4.81335 48.8062 8.88133 45.7345 13.0538C47.9958 13.204 50.0611 13.6153 51.9891 14.5295C58.7861 17.7421 62.4134 23.129 62.6422 30.6251C62.8317 36.7368 67.7138 41.3206 73.6547 40.6872C78.3277 40.191 82.1184 36.3516 82.4909 31.722C82.8765 26.9423 79.9028 22.5805 75.3605 21.2746C71.2627 20.0993 66.7923 21.7056 64.3741 25.2185C64.2434 25.4079 64.1127 25.5972 63.897 25.9041C63.0997 23.0572 61.8252 20.5759 59.9756 18.3428C60.8122 17.1609 61.6488 15.9986 62.4722 14.8298C65.6747 10.3179 68.8837 5.80586 72.0666 1.27428C72.4064 0.791091 72.7659 0.61479 73.3541 0.61479C81.3799 0.627849 89.4056 0.61479 97.4379 0.60826C97.5883 0.60826 97.732 0.627849 98 0.640909C97.8039 0.934743 97.6732 1.14369 97.5229 1.34611C95.9282 3.51395 94.3139 5.66221 92.7453 7.84964C92.3859 8.3459 92.0199 8.54831 91.399 8.54831C86.7456 8.5222 82.0922 8.54831 77.4389 8.52873C76.8768 8.52873 76.5369 8.70503 76.2167 9.15557C75.3213 10.4354 74.3736 11.6825 73.3998 13.0081C74.3867 13.1517 75.3017 13.2562 76.2102 13.4325C84.2294 14.9996 90.2749 22.2606 90.3598 30.4161C90.4513 39.3748 84.4516 46.6488 75.5958 48.3204C66.459 50.0442 57.0084 43.6452 55.2504 34.4906C54.9628 32.9888 54.9497 31.4347 54.7929 29.9003C54.355 25.6038 51.4335 22.1953 47.303 21.1505C43.3032 20.145 39.055 21.797 36.663 25.2838C36.5257 25.4601 36.4081 25.6299 36.1924 25.9433Z" fill="#000086"/>
                       <path d="M11.1217 20.9285C14.1869 16.7626 17.1475 12.7338 20.2128 8.57443C14.6509 8.57443 9.21981 8.57443 3.57301 8.57443C4.49454 7.31421 5.28535 6.23029 6.0827 5.1529C7.08919 3.7882 8.08914 2.41044 9.12831 1.07187C9.30477 0.843328 9.67077 0.640909 9.94527 0.634379C18.4155 0.60826 26.8857 0.61479 35.3559 0.61479C35.4539 0.61479 35.5585 0.634379 35.833 0.653968C32.2972 5.47938 28.8202 10.2068 25.4543 14.7841C27.0752 16.1423 28.7548 17.3176 30.16 18.7607C33.4932 22.1822 34.8069 26.433 34.9768 31.1474C35.1794 36.789 39.7609 40.968 45.375 40.6872C48.5252 40.5305 51.0871 39.1593 52.9629 36.5866C53.1459 36.332 53.3223 36.0773 53.5053 35.8292C53.5184 35.8096 53.5511 35.8031 53.6295 35.7704C54.4007 38.5194 55.6752 41.0072 57.5444 43.2469C55.7797 45.0491 53.7537 46.3811 51.4466 47.2953C40.7674 51.5199 29.0293 44.7552 27.3235 33.374C27.0883 31.8004 27.1209 30.181 26.8072 28.6335C25.755 23.5143 21.0885 20.7457 17.2587 20.922C15.2718 21.0004 13.2915 20.9285 11.1217 20.9285Z" fill="#000086"/>
                       <path d="M0.0110856 30.7752C2.61227 30.7752 5.16117 30.7752 7.71661 30.7752C8.10875 35.568 10.3766 38.9961 15.0496 40.2759C19.8991 41.6079 23.4087 39.3748 25.9903 35.4244C26.5131 36.7433 26.9576 38.1015 27.585 39.3683C28.2189 40.6481 29.0424 41.8299 29.8006 43.0902C26.9445 46.5574 19.5984 50.2597 11.9844 47.5891C3.47498 44.605 -0.230733 36.7303 0.0110856 30.7752Z" fill="#000086"/>
                       </svg>     
                       <h2 class="pt-4 pb-4">The 365 Legal Program</h2>               
                       <p class="text-about">Recently, we have launched a new program ???365 Legal Program??? that covers all the startups legal requirements all over the year from legal awareness workshops to company formation, contract review, drafting, legal consultation and much more.
                         365 Legal Program is mainly tailored to provide legal support to all startups providing them with a high-quality service that accommodates their financial statue by offering a fixed monthly fee of EGP 1,000.
                         Our mission is to create a high quality and strong legal infrastructure for startups so the business can grow and expand without any legal obstacles now and in the future.
                       </p>
                   </div>
                 </div>
               </div>
             <!-- </div> -->
            </div>
          </div>
        </section>
        <section class="pricing-365">
          <div class="container">
            <div class="row row-cols-1 row-cols-md-2 row-cols-xl-3 g-4 justify-content-center">
              
              <div class="col">
                <div class="card">
                  <div class="card-header d-flex justify-content-center">
                    <svg width="98" height="48" viewBox="0 0 98 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path d="M36.1924 25.3417C35.382 22.436 34.101 19.9613 32.2514 17.7412C33.7546 15.6648 35.2382 13.621 36.7218 11.5707C39.3622 7.93369 42.0091 4.30321 44.6234 0.653133C44.9632 0.176469 45.3162 -0.00636131 45.9109 0.000168339C48.8389 0.0328166 51.7669 0.0132276 54.8974 0.0132276C51.8061 4.21179 48.8062 8.27976 45.7345 12.4522C47.9958 12.6024 50.0611 13.0138 51.9891 13.9279C58.7861 17.1405 62.4134 22.5275 62.6422 30.0235C62.8317 36.1353 67.7138 40.7191 73.6547 40.0857C78.3277 39.5894 82.1184 35.75 82.4909 31.1205C82.8765 26.3408 79.9028 21.979 75.3605 20.673C71.2627 19.4977 66.7923 21.104 64.3741 24.6169C64.2434 24.8063 64.1127 24.9957 63.897 25.3026C63.0997 22.4556 61.8252 19.9744 59.9756 17.7412C60.8122 16.5594 61.6488 15.3971 62.4722 14.2283C65.6747 9.71629 68.8837 5.2043 72.0666 0.672722C72.4064 0.189528 72.7659 0.0132276 73.3541 0.0132276C81.3799 0.0262869 89.4056 0.0132276 97.4379 0.00669799C97.5883 0.00669799 97.732 0.0262869 98 0.0393462C97.8039 0.33318 97.6732 0.542129 97.5229 0.744548C95.9282 2.91239 94.3139 5.06065 92.7453 7.24808C92.3859 7.74433 92.0199 7.94675 91.399 7.94675C86.7456 7.92063 82.0922 7.94675 77.4389 7.92716C76.8768 7.92716 76.5369 8.10346 76.2167 8.55401C75.3213 9.83382 74.3736 11.081 73.3998 12.4065C74.3867 12.5502 75.3017 12.6546 76.2102 12.8309C84.2294 14.398 90.2749 21.659 90.3598 29.8145C90.4513 38.7732 84.4516 46.0473 75.5958 47.7188C66.459 49.4427 57.0084 43.0436 55.2504 33.889C54.9628 32.3872 54.9497 30.8332 54.7929 29.2987C54.355 25.0022 51.4335 21.5937 47.303 20.549C43.3032 19.5434 39.055 21.1954 36.663 24.6822C36.5257 24.8585 36.4081 25.0283 36.1924 25.3417Z" fill="#041851"/>
                      <path d="M11.1217 20.327C14.1869 16.161 17.1475 12.1323 20.2128 7.97287C14.6509 7.97287 9.21981 7.97287 3.57301 7.97287C4.49454 6.71265 5.28535 5.62873 6.0827 4.55133C7.08919 3.18664 8.08914 1.80888 9.12831 0.470303C9.30477 0.241765 9.67077 0.0393462 9.94527 0.0328166C18.4155 0.00669799 26.8857 0.0132276 35.3559 0.0132276C35.4539 0.0132276 35.5585 0.0328166 35.833 0.0524055C32.2972 4.87782 28.8202 9.60528 25.4543 14.1826C27.0752 15.5407 28.7548 16.7161 30.16 18.1591C33.4932 21.5807 34.8069 25.8315 34.9768 30.5459C35.1794 36.1875 39.7609 40.3665 45.375 40.0857C48.5252 39.929 51.0871 38.5577 52.9629 35.9851C53.1459 35.7304 53.3223 35.4758 53.5053 35.2276C53.5184 35.208 53.5511 35.2015 53.6295 35.1689C54.4007 37.9178 55.6752 40.4056 57.5444 42.6453C55.7797 44.4475 53.7537 45.7795 51.4466 46.6937C40.7674 50.9184 29.0293 44.1537 27.3235 32.7725C27.0883 31.1988 27.1209 29.5795 26.8072 28.032C25.755 22.9127 21.0885 20.1441 17.2587 20.3204C15.2718 20.3988 13.2915 20.327 11.1217 20.327Z" fill="#041851"/>
                      <path d="M0.0110856 30.1737C2.61227 30.1737 5.16117 30.1737 7.71661 30.1737C8.10875 34.9664 10.3766 38.3945 15.0496 39.6743C19.8991 41.0064 23.4087 38.7732 25.9903 34.8228C26.5131 36.1418 26.9576 37.4999 27.585 38.7667C28.2189 40.0465 29.0424 41.2284 29.8006 42.4886C26.9445 45.9558 19.5984 49.6582 11.9844 46.9875C3.47498 44.0035 -0.230733 36.1287 0.0110856 30.1737Z" fill="#041851"/>
                      </svg>                                     
                  </div>
                  <div class="card-body justify-content-center align-items-center">
                    <ul>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Incorporation</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>IP registration</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Insurance File</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Tax Card Renewal</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Terms and Conditions</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Privacy Policy</span>
                      </li>
                      <li>
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10.0001 7.62939e-05C4.48612 7.62939e-05 0.00012207 4.48608 0.00012207 10.0001C0.00012207 15.5141 4.48612 20.0001 10.0001 20.0001C15.5141 20.0001 20.0001 15.5141 20.0001 10.0001C20.0001 4.48608 15.5141 7.62939e-05 10.0001 7.62939e-05ZM8.00112 14.4131L4.28812 10.7081L5.70012 9.29208L7.99912 11.5871L13.2931 6.29308L14.7071 7.70708L8.00112 14.4131Z" fill="#000086"/>
                        </svg>
                        <span>Different types of <br>Contracts /Agreements</span>
                      </li>
                    </ul>
                  </div>
                  <div class="card-footer">
                    <h6>12,500<small>LE/Year</small></h6>
                    <p>One Time Payment</p>
                    <div class="d-flex justify-content-center">
                    <form action="<?php echo site_url('payment/Cashier_Create'); ?>" id="form" method="POST" class="needs-validation" enctype="multipart/form-data" novalidate>
                     <input type="hidden" name="plan_id" value="1">
                    <button type="submit" class="btn btn-choose">Choose</button>
                    </form>
                    </div>
                  </div>
                </div>
              </div>
             
            </div>
          </div>
        </section>
      </div>
      <div id="case-by-case" style="display: none;">
        <section class="program-case">
          <div class="container">
            <div class="text-center">
              <h2>Case By Case</h2>
            </div>
            <div class="selection-sort d-flex justify-content-between">
              <!-- <div class="select-pages">
                <p style="margin-top: 1rem;">Showing 1???16 of 23 results</p>
              </div> -->
              <!-- <div class="select-sort">
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
                    Default sorting
                  </button>
                  <ul class="dropdown-menu  dropdown-menu-end dropdown-menu-lg-start" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="#">Sort by popularity</a></li>
                    <li><a class="dropdown-item" href="#">Sort by average rating</a></li>
                    <li><a class="dropdown-item" href="#">Sort by latest</a></li>
                    <li><a class="dropdown-item" href="#">Sort by price: low to high</a></li>
                    <li><a class="dropdown-item" href="#">Sort by price: high to low</a></li>
                  </ul>
                </div>
              </div> -->
            </div>
            <div class="program-row row row-cols-1 row-cols-sm-2 row-cols-lg-3 row-cols-xl-4 g-4 justify-content-center">
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                    <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -03.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Basic agency agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 8000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div> 
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -01.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Basic distribution agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 8000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -04.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Basic employment contract template</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 0</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -05.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Basic memorandum of understanding template</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 0</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -06.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Basic non-disclosure agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 0</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -07.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Capital completion</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 7500</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>           
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -09.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Capital increase ( JSC )</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5900</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -08.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Capital increase ( LLC )</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -11.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Copyrights registration</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5700</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -10.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Freelance agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -20.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Joint Stock Company Incorporation</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 6700</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -21.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Limited liability company incorporation</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -13.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>One person company incorporation</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -14.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>SAAS Agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 8000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -15.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Services agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 6000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -17.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Supply agreement</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 8000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -16.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Tax ID Renewal</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 2500</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -12.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Trademark registration</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -19.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Transfer of shares ( JSC )</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 7500</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card ">
                  <div class="card-header text-center">
                  <img src="<?php echo base_url('assets/images/main/price-case/TLC SERVICES V. -18.jpg')?>" alt="cardimg1" width="100%">                
                  </div>
                  <div class="card-body text-center">
                    <h4>Transfer of shares ( LLC )</h4>
                  </div>
                  <div class="card-footer text-center">
                    <h4>EGP 5000</h4>
                  </div>
                  <div class="get d-flex justify-content-center align-items-center">
                    <button class="btn btn-get">Get</button>
                  </div>
                </div>
              </div>
            </div>            
          <!-- <div class="ptt-5 pb-5">
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-center" id="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-disabled="true"><i class="fa-solid fa-angle-left"></i></a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item">
                  <a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a>
                </li>
              </ul>
            </nav>
          </div> -->
          </div>
        </section>
      </div>
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
                  <div class="footer__social pt-1">
                    <a href="https://www.facebook.com/LegalClinic.Eg"><img src="<?php echo base_url('assets/images/main/brandico_facebook.svg')?>" alt="brandico_facebook"></a>
                    <a href="https://www.instagram.com/legalclinic.eg/"><img src="<?php echo base_url('assets/images/main/Frame.svg')?>" alt="Frame"></a>
                    <a href="https://twitter.com/TheLegalClinic2"><img src="<?php echo base_url('assets/images/main/foundation_social-twitter.svg')?>" alt="foundation_social-twitter"></a>
                    <a href="https://www.linkedin.com/company/legalclinic_eg/?original_referer="><img src="<?php echo base_url('assets/images/main/foundation_social-linkedin.svg')?>" alt="foundation_social-linkedin"></a>
                  </div>
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
              $('.switch label').on('click', function(){
              var indicator = $(this).parent('.switch').find('span');
              if ( $(this).hasClass('right') ){
                $(indicator).addClass('right');
                if(areatwo.style.display === 'none'){
              areatwo.style.display = 'block';
              areaone.style.display = 'none';
            }
              } else {
                $(indicator).removeClass('right');
                       
            if(areaone.style.display === 'none'){
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
			  [...cardWrap].forEach(element => {
                element.classList.add('mac');
              });
			  [...cardWrap365].forEach(element => {
                element.classList.add('mac');
              });
          } else{
          document.querySelector('body').style.fontFamily  = 'Gotham, sans-serif';
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