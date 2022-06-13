<?php defined('BASEPATH') or exit('No direct script access allowed');
echo theme_head_view();
// get_template_part($navigationEnabled ? 'navigation' : '');
?>
<div class="wrapper">
<?php echo theme_sidebar_view(); ?>
  
  <!-- Page Content  -->
  <div id="content">
    <?php echo theme_head_page_view();?>
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

  (() => {
  'use strict'
  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')
  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }
      form.classList.add('was-validated')
    }, false)
  })
})()
// function checkPasswordMatch(){
//   if(inputPass.value == inputConfPass.value){
//     inputPass.classList.add('was-validated');
//     inputConfPass.classList.add('was-validated');
//   } else{
//     inputPass.classList.remove('was-validated');
//     inputConfPass.classList.remove('was-validated');
//   }
// }
inputConfPass.onkeyup = function() {
  // Validate lowercase letters
  if(inputConfPass.value == inputPass.value) {
    inputPass.setAttribute("valid","valid");
    inputConfPass.setAttribute("valid","valid");
  } else {
    inputPass.setAttribute("invalid","invalid");
    inputConfPass.setAttribute("invalid","invalid");
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
