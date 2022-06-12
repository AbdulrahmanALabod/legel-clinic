<?php defined('BASEPATH') or exit('No direct script access allowed');
echo theme_head_view();
// get_template_part($navigationEnabled ? 'navigation' : '');
?>
<div class="wrapper">
  <nav id="sidebar" class="pcoded-navbar">
    <div class="nav-header">
      <a href="index.html" class="brand-logo">
        <img class="logo-abbr" src="<?php echo base_url('assets/images/main/logo-appr.svg')?>" alt="logo-appr">
        <img class="logo-compact" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav">
        <img class="brand-title" src="<?php echo base_url('assets/images/main/logo-nav.svg')?>" alt="logo-nav">
      </a>
    </div>
    <div class="navbar-content scroll-div ">
      <span id="navBarContent"></span>
      <ul class="nav pcoded-inner-navbar">
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/companyprofile.svg"') ?>" alt="companyprofile">
              <span class="pcoded-mtext">Company profile</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="#" class="">
                <img src="<?php echo base_url('assets/images/main/invoice.svg"') ?>" alt="invoice" class="img-inner">
                <span>Invoice</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="" class="">
                <img src="<?php echo base_url('assets/images/main/balance$.svg"') ?> "alt="balance">
                <span>Balance</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="" class="">
                <img src="<?php echo base_url('assets/images/main/contacts.svg"') ?>" alt="contacts">
                <span>Contacts</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="" class="">
                <img src="<?php echo base_url('assets/images/main/mymatters.svg"') ?> "alt="mymatters">
                <span>My Matters</span>
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/onlineinco.svg"') ?>"alt="onlineinco">
              <span class="pcoded-mtext">Online Incorporation</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/makecontract.svg"') ?>"alt="makecontract">
              <span class="pcoded-mtext">Make a Contract</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
          <ul class="pcoded-submenu" style="display: none;">
            <li class="inner-list">
              <a href="freeContracts.html" class="">
                <img src="<?php echo base_url('assets/images/main/freecontract.svg"') ?>"alt="freecontract" class="img-inner">
                <span>Free Contracts</span>
              </a>
            </li>
            <li class="inner-list">
              <a href="" class="">
                <img src="<?php echo base_url('assets/images/main/paidcontract.svg"') ?>"alt="paidcontract">
                <span>paied contracts</span>
              </a>
            </li>

          </ul>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/requestservice.svg"') ?>"alt="requestservice">
              <span class="pcoded-mtext">Request service</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
       
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/askalaywer.svg"') ?>"alt="askalaywer">
              <span class="pcoded-mtext">Ask a Lawyer</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>
          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/legalresource.svg"') ?>"alt="legalresource">
              <span class="pcoded-mtext">our Legal Resources</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
        </li>
        <li class="nav-item pcoded-hasmenu">
          <a href="#!" class="nav-link justify-content-between">
            <span class="pcoded-micon">
              <img src="<?php echo base_url('assets/images/main/home.svg"') ?>"alt="home">
              <span class="pcoded-mtext">Home</span>
            </span>
            <span class="arrow"><i class="fa-solid fa-angle-down"></i></span>

          </a>
        </li>
      </ul>
    </div>
    <span class="linesdashboard">
      <img src="<?php echo base_url('assets/images/main/linesdashboard.svg"') ?>"alt="linesdashboard">
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
            <a href="#" class="search-toggler align-self-center" style="margin-right: 4rem;"><img src="<?php echo base_url('assets/images/main/search-icon.svg')?>" alt="search-icon"></a>
            <div class="dropdown">
              <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false" data-bs-display="static">
                <img src="<?php echo base_url('assets/images/main/profile.svg"') ?>"alt="profile">
              </a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-start" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="dashboardStructure.html"><img src="<?php echo base_url('assets/images/main/dashicon.svg"') ?>"alt="dashicon"><span class="px-2">Dashboard</span></a></li>
                <li><a class="dropdown-item" href="#"><img src="<?php echo base_url('assets/images/main/settingicon.svg"') ?>"alt="settingicon"><span class="px-2">Account setting</span></a></li>
                <li><a class="dropdown-item" href="#"><img src="<?php echo base_url('assets/images/main/logouticon.svg"') ?>"alt="logouticon"><span class="px-2">Sign Out</span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <div id="wrapper">
      <div id="content">
        <div class="container">
          <div class="row">
            <?php get_template_part('alerts'); ?>
          </div>
        </div>
        <?php if (isset($knowledge_base_search)) { ?>
          <?php get_template_part('knowledge_base/search'); ?>
        <?php } ?>
        <div class="container">
          <?php hooks()->do_action('customers_content_container_start'); ?>
          <div class="row">
            <?php
            /**
             * Don't show calendar for invoices, estimates, proposals etc.. views where no navigation is included or in kb area
             */
            if (is_client_logged_in() && $subMenuEnabled && !isset($knowledge_base_search)) { ?>
              <ul class="submenu customer-top-submenu">
                <?php hooks()->do_action('before_customers_area_sub_menu_start'); ?>
                <li class="customers-top-submenu-files"><a href="<?php echo site_url('clients/files'); ?>"><i class="fa fa-file" aria-hidden="true"></i> <?php echo _l('customer_profile_files'); ?></a></li>
                <li class="customers-top-submenu-calendar"><a href="<?php echo site_url('clients/calendar'); ?>"><i class="fa fa-calendar-minus-o" aria-hidden="true"></i> <?php echo _l('calendar'); ?></a></li>
                <?php hooks()->do_action('after_customers_area_sub_menu_end'); ?>
              </ul>
              <div class="clearfix"></div>
            <?php } ?>
            <?php echo theme_template_view(); ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php
echo theme_footer_view();
?>
<?php
/* Always have app_customers_footer() just before the closing </body>  */
app_customers_footer();
/**
 * Check for any alerts stored in session
 */
app_js_alerts();
?>
<script>
  let emailPattern = /^(\D)+(\w)*((\.(\w)+)?)+@(\D)+(\w)*((\.(\D)+(\w)*)+)?(\.)[a-z]{2,}$/;
  let phonePattern = /1?-?\.?\(?\d{3}[\-\)\.\s]?\d{3}[\-\.\s]?\d{4}/;
  const signinbtn = document.querySelector('#slide-right-button');
  const signupbtn = document.querySelector('#slide-left-button');
  const formbox = document.querySelector('.form');

  const btnSignup = document.getElementById('btnSignup');
  const btnSignin = document.getElementById('btnSignin');
  const signupform = document.getElementById('sign-up-form');

  const inputFname = document.getElementById('inputFname');
  const inputLname = document.getElementById('inputLname');
  const inputEmail = document.getElementById('inputEmail');
  const inputPhone = document.getElementById('inputPhone');
  const inputComp = document.getElementById('inputComp');
  const inputPass = document.getElementById('inputPass');
  const inputConfPass = document.getElementById('inputConfPass');
  const emailSignin = document.getElementById('emailSignin');
  const passSignin = document.getElementById('passSignin');


  const forgetpass = document.getElementById('forgetpass');
  const signininfo = document.getElementById('sign-in-info');

  signinbtn.addEventListener('click', (e) => {
    e.preventDefault();
    formbox.classList.add('active');
    forgetpass.style.display = 'none';
    signininfo.style.display = 'flex';
  });

  signupbtn.addEventListener('click', (e) => {
    e.preventDefault();
    formbox.classList.remove('active');
    forgetpass.style.display = 'none';
  });

  function getforget() {
    signininfo.style.display = 'none';
    forgetpass.style.display = 'flex';
  }

  function backtosignin() {
    signininfo.style.display = 'flex';
    forgetpass.style.display = 'none';
  }

  btnSignup.addEventListener('click', (e) => {
    e.preventDefault();
    formValidation();
  });

  btnSignin.addEventListener('click', (e) => {
    e.preventDefault();
    signinValidation();
  })

  function formValidation() {
    let arrayValid = [];
    if (inputFname.value == '') {
      inputFname.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      inputFname.style.border = "none";
      arrayValid.push(true);
    }
    if (inputLname.value == '') {
      inputLname.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      inputLname.style.border = "none";
      arrayValid.push(true);
    }
    if (inputEmail.value == '') {
      inputEmail.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      if (!(emailPattern.test(inputEmail.value))) {
        inputEmail.style.border = "1px solid red";
        arrayValid.push(false);
      } else {
        inputEmail.style.border = "none";
        arrayValid.push(true);
      }
    }
    if (inputPhone.value == '') {
      inputPhone.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      if (!(phonePattern.test(inputPhone.value))) {
        inputPhone.style.border = "1px solid red";
        arrayValid.push(false);
      } else {
        inputPhone.style.border = "none";
        arrayValid.push(true);
      }
    }
    if (inputComp.value == '') {
      inputComp.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      inputComp.style.border = "none";
      arrayValid.push(true);
    }
    if (inputPass.value == '') {
      inputPass.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      if (inputPass.value.length < 5) {
        inputPass.style.border = "1px solid red";
        arrayValid.push(false);
      } else {
        inputPass.style.border = "none";
        arrayValid.push(true);
      }
    }
    if (inputConfPass.value == '') {
      inputConfPass.style.border = "1px solid red";
      arrayValid.push(false);
    } else {
      if (inputConfPass.value !== inputPass.value) {
        inputConfPass.style.border = "1px solid red";
        arrayValid.push(false);
      } else {
        inputConfPass.style.border = "none";
        arrayValid.push(true);
      }
    }
    // console.log(arrayValid);
  }

  function signinValidation() {
    arrsigninValid = [];
    if (emailSignin.value == '') {
      emailSignin.style.border = "1px solid red";
      arrsigninValid.push(false);
    } else {
      emailSignin.style.border = "none";
      arrsigninValid.push(true);
    }
    if (passSignin.value == '') {
      passSignin.style.border = "1px solid red";
      arrsigninValid.push(false);
    } else {
      passSignin.style.border = "none";
      arrsigninValid.push(true);
    }
  }

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
</script>
</body>
</html>
