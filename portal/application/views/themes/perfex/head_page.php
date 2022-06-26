<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<header>
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
            <div class="nav-header">
              <a href="<?php echo site_url('') ?>" class="brand-logo">
                <!-- <img class="logo-abbr" src="<?php echo base_url('assets/images/main/logo-appr.svg')?>" alt="logo-appr"> -->
                <!-- <img class="logo-compact" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav"> -->
                <img class="brand-title" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav">
              </a>
              <div class="nav-control" id="sidebarCollapse">
                <div class="hamburger">
                    <span class="line"></span> 
                    <span class="line"></span>
                    <span class="line"></span>
                </div>
              </div>
            </div>
            <!-- <div class="container justify-content-end"> -->
                <div class="social-icons spec dash col-auto col-lg-2 d-flex justify-content-end">
                    <div class=" social-icons-light mb-0 d-flex">
                        <a href="#" class="search-toggler align-self-center" style="margin-right: 4rem;"><img src="<?php echo base_url('assets/images/main/search-icon.svg') ?>" alt="search-icon"></a>
                        <div class="dropdown">
                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                                <img src="<?php echo base_url('assets/images/main/profile.svg"') ?>" alt="profile">
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                                <li><a class="dropdown-item" href="<?php echo site_url('clients'); ?>"><img src="<?php echo base_url('assets/images/main/dashicon.svg"') ?>" alt="dashicon"><span class="px-2">Dashboard</span></a></li>
                                <li><a class="dropdown-item" href="<?php echo site_url('clients/profile'); ?>"><img src="<?php echo base_url('assets/images/main/settingicon.svg"') ?>" alt="settingicon"><span class="px-2">Account setting</span></a></li>
                                <li><a class="dropdown-item" href="<?php echo site_url('authentication/logout'); ?>"><img src="<?php echo base_url('assets/images/main/logouticon.svg"') ?>" alt="logouticon"><span class="px-2">Sign Out</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <!-- </div> -->
        </nav>
    </div>
</header>