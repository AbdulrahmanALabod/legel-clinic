<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div class="page-wraper d-flex  min-vh-100 justify-content-content align-items-center">
   <div class="container">
      <div class="overlay-signup" id="overlay">
         <div class="sign-in box" id="sign-in">
            <div class="pt-3 pb-3">
               <h2>Welcome Back!</h2>
               <p>To keep connected with us please login with your personal info</p>
               <button class="switch-button btn" id="slide-right-button">Sign In</button>
            </div>
         </div>
         <div class="sign-up box" id="sign-up">
            <div class="pt-5 pb-3">
               <h2>Hello, Friend!</h2>
               <p>Enter your personal details and start a journey with us</p>
               <button class="switch-button btn" id="slide-left-button">Sign Up</button>
            </div>
         </div>
      </div>
      <div class="form">
         <div class="sign-in" id="sign-in-info">
            <div class="px-5 py-5">
               <h2>Sign In</h2>

               <form action="<?php echo $this->uri->uri_string() ?>" id="sign-in-form" class="row gx-0">
                  <?php hooks()->do_action('clients_login_form_start'); ?>
                  <div class="col-12">
                     <input type="email" class="form-control" placeholder="Email" id="emailSignin" />
                  </div>
                  <div class="col-12">
                     <input type="password" class="form-control" placeholder="Password" id="passSignin" />
                  </div>
                  <p class="forgot-password"><a href="#" onclick="getforget()">Forgot your password?</a></p>
                  <div class="12">
                     <button class="control-button in btn" type="submit" id="btnSignin">Sign In</button>
                  </div>
                  <?php hooks()->do_action('clients_login_form_end'); ?>
               </form>
               <a href="index.html" class="backtohome"> Back to Home &gt;&gt; </a>
            </div>
         </div>
         <div class="forget-pass" id="forgetpass">
            <div class="px-5 py-5">
               <a href="<?php echo site_url('authentication/forgot_password'); ?>">Forgot your password?</h2>
            </div>
         </div>
         <div class="sign-up" id="sign-up-info">
            <div class="px-5 py-5">
               <h2>Create Account</h2>

               <form id="sign-up-form" class="row gx-0">
                  <div class="col-6 " style="padding-right: .5rem;">
                     <input name="email" type="text" class="form-control" placeholder="First Name" id="inputFname" />
                  </div>
                  <div class="col-6 ">
                     <input name="email" type="text" class="form-control" placeholder="Last Name" id="inputLname" />
                  </div>
                  <div class="col-12">
                     <input name="email" type="email" class="form-control" placeholder="Email" id="inputEmail" />
                  </div>
                  <div class="col-12">
                     <input name="email" type="text" class="form-control" placeholder="Phone" id="inputPhone" />
                  </div>
                  <div class="col-12">
                     <input name="email" type="text" class="form-control" placeholder="Company" id="inputComp" />
                  </div>
                  <div class="col-12">
                     <input name="email" type="password" class="form-control" placeholder="Password" id="inputPass" />
                  </div>
                  <div class="col-12">
                     <input name="email" type="password" class="form-control" placeholder="Confirm Password" id="inputConfPass" />
                  </div>
                  <div class="col-12">
                     <button class="control-button up btn" type="submit" id="btnSignup">Sign Up</button>
                  </div>
               </form>
               <a href="index.html" class="backtohome">Back to Home &gt;&gt;</a>
            </div>
         </div>
      </div>
   </div>
</div>