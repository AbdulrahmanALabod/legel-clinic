<?php defined('BASEPATH') or exit('No direct script access allowed');
echo theme_head_view();
get_template_part($navigationEnabled ? 'navigation' : '');
?>
<div id="wrapper">
   <div id="content">
      <div class="container">
         <div class="row">
            <?php get_template_part('alerts'); ?>
         </div>
      </div>
      <?php if(isset($knowledge_base_search)){ ?>
         <?php get_template_part('knowledge_base/search'); ?>
      <?php } ?>
      <div class="container">
         <?php hooks()->do_action('customers_content_container_start'); ?>
         <div class="row">
            <?php
            /**
             * Don't show calendar for invoices, estimates, proposals etc.. views where no navigation is included or in kb area
             */
            if(is_client_logged_in() && $subMenuEnabled && !isset($knowledge_base_search)){ ?>
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

      signinbtn.addEventListener('click',(e)=>{
        e.preventDefault();
        formbox.classList.add('active');
        forgetpass.style.display = 'none';
        signininfo.style.display = 'flex';
      });

      signupbtn.addEventListener('click',(e)=>{
        e.preventDefault();
        formbox.classList.remove('active');
        forgetpass.style.display = 'none';
      });
      function getforget(){
        signininfo.style.display = 'none';
        forgetpass.style.display = 'flex';
      }
      function backtosignin(){
        signininfo.style.display = 'flex';
        forgetpass.style.display = 'none';
      }

      btnSignup.addEventListener('click',(e)=>{
        e.preventDefault();
        formValidation();
      });

      btnSignin.addEventListener('click',(e)=>{
        e.preventDefault();
        signinValidation();
      })
      function formValidation(){
        let arrayValid = [];
        if(inputFname.value == ''){
          inputFname.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          inputFname.style.border = "none";
          arrayValid.push(true); 
        }
        if(inputLname.value == ''){
          inputLname.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          inputLname.style.border = "none";
          arrayValid.push(true); 
        }
        if(inputEmail.value == ''){
          inputEmail.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          if(!(emailPattern.test(inputEmail.value))){
            inputEmail.style.border = "1px solid red";
            arrayValid.push(false);
          }else{
            inputEmail.style.border = "none";
            arrayValid.push(true); 
          }
        }
        if(inputPhone.value == ''){
          inputPhone.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          if(!(phonePattern.test(inputPhone.value))){
            inputPhone.style.border = "1px solid red";
            arrayValid.push(false);
          }else{
            inputPhone.style.border = "none";
            arrayValid.push(true); 
          }
        }
        if(inputComp.value == ''){
          inputComp.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          inputComp.style.border = "none";
          arrayValid.push(true); 
        }
        if(inputPass.value == ''){
          inputPass.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          if(inputPass.value.length < 5){
            inputPass.style.border = "1px solid red";
            arrayValid.push(false);
          }else{
            inputPass.style.border = "none";
            arrayValid.push(true); 
          }
        }
        if(inputConfPass.value == ''){
          inputConfPass.style.border = "1px solid red";
          arrayValid.push(false);
        }else{
          if(inputConfPass.value !== inputPass.value){
            inputConfPass.style.border = "1px solid red";
            arrayValid.push(false);
          }else{
            inputConfPass.style.border = "none";
            arrayValid.push(true); 
          }
        }
        // console.log(arrayValid);
      }
      function signinValidation(){
        arrsigninValid = [];
        if(emailSignin.value == ''){
          emailSignin.style.border = "1px solid red";
          arrsigninValid.push(false);
        }else{
          emailSignin.style.border = "none";
          arrsigninValid.push(true); 
        }
        if(passSignin.value == ''){
          passSignin.style.border = "1px solid red";
          arrsigninValid.push(false);
        }else{
          passSignin.style.border = "none";
          arrsigninValid.push(true); 
        }
      }
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
