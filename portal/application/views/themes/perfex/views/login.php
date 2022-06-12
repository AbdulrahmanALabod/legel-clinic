<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div class="page-wraper d-flex  min-vh-100 justify-content-center align-items-center">
   <div class="container-signup">
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

               <?php echo form_open($this->uri->uri_string(), array('class' => 'row gx-0', "id" => "sign-up-info")); ?>
                  <?php hooks()->do_action('clients_login_form_start'); ?>
                  <div class="col-12">
                     <input type="email" autofocus="true" class="form-control" placeholder="Email" name="email" id="emailSignin">

                  </div>
                  <div class="col-12">
                     <input type="password" class="form-control" name="password" id="passSignin" placeholder="Password">
                  </div>
                  <div class="12">
                     <button type="submit"  class="btn btn-info btn-block"><?php echo _l('Sign In'); ?></button>

                  </div>
                  <?php hooks()->do_action('clients_login_form_end'); ?>
                  <?php echo form_close(); ?>
               <a href="<?php echo base_url('/'); ?>" class="backtohome"> Back to Home &gt;&gt; </a>
            </div>
         </div>
         <div class="sign-up" id="sign-up-info">
            <div class="px-5 py-5">
               <h2>Create Account</h2>
               <?php echo form_open('authentication/register', ['id' => 'register-form' ,'class'=>"row gx-0"]); ?>

                  <div class="col-6 " style="padding-right: .5rem;">
                     <input type="text" class="form-control" name="<?php echo $fields['firstname']; ?>"
                       value="<?php echo set_value($fields['firstname']); ?>"
                      placeholder="First Name" id="inputFname">
                  </div>
                  <div class="col-6 ">
                     <input type="text" class="form-control" name="<?php echo $fields['lastname']; ?>"
                      placeholder="Last Name"  id="inputLname"
                       value="<?php echo set_value($fields['lastname']); ?>">

                  </div>
                  <div class="col-12">
                     <input type="email" class="form-control" name="<?php echo $fields['email']; ?>"
                      value="<?php echo set_value($fields['email']); ?>" placeholder="Email" id="inputEmail">
                  </div>
                  <div class="col-12">
                     <input type="text" class="form-control" name="phonenumber" placeholder="Phone"
                       value="<?php echo set_value('phonenumber'); ?>" id="inputPhone">

                  </div>
                  <div class="col-12">
                     <input type="text" class="form-control" placeholder="Company" name="<?php echo $fields['company']; ?>"
                     value="<?php echo set_value($fields['company']); ?>" id="inputComp">
                  </div>
                  <div class="col-12">
                     <input type="password" class="form-control" name="password" placeholder="Password" 
                     id="inputPass">

                  </div>
                  <div class="col-12">
                     <input type="password" class="form-control" name="passwordr"  placeholder="Confirm Password"
                     id="inputConfPass">
                  </div>
                  <div class="col-12">
                     <button class="control-button up btn" type="submit">Sign Up</button>
                  </div>
                  <?php echo form_close(); ?>
               <a href="<?php echo site_url('')?>" class="backtohome">Back to Home &gt;&gt;</a>
            </div>
         </div>
      </div>
   </div>
</div>