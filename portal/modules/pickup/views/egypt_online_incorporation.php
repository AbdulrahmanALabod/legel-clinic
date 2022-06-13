<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div style="margin-top: 30px;">
    <div class="row">

        <div class="col-lg-3">
            <!-- <?php //get_template_part('side_menu'); ?> -->
        </div>
        <div class="col-lg-9">
            <!--Content-->

            <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-grid--stretch">
                <div class="kt-container kt-body  kt-grid kt-grid--ver" id="kt_body">
                    <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">

                        <!-- begin:: Subheader -->
                        <!-- begin:: Subheader -->
                        <div class="kt-subheader   kt-grid__item" id="kt_subheader" style="    margin: 0!important;">
                            <div class="kt-subheader__main">
                                <h3 class="kt-subheader__title">Egypt Online Incorporation</h3>
                            </div>
                        </div>

                        <!-- end:: Subheader -->

                        <div class="kt-container  kt-grid__item kt-grid__item--fluid" style="margin-bottom: 60px;">
                            <div class="row">
                                <div class="" style="width:100%;">
                                    <div class="kt-portlet" id="kt_portlet" style="padding-bottom:30px;margin: inherit!important;">
                                        <div class="kt-portlet__body">
                                            <div class="row">
                                                <!-- <iframe width="600" height="850" src="<?php echo base_url('forms/wtl/9fea4f449eb1abfe71e83d6ea3d43580');?>" frameborder="0" allowfullscreen style="margin: 0 auto;"></iframe> -->
                                                <iframe width="600" height="1050" src="https://thelegalclinics.com/office/multi_page_wtl/form/8180f80d9046e25510e61c69b5020e70" frameborder="0" allowfullscreen style="margin: 0 auto;width: 100vw;"></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--End::Dashboard 4-->
                </div>
                <!-- end:: Content -->
            </div>
        </div>
        <!--/Content-->
    </div>
</div>

<script>
    var greetDate = new Date();
    var hrsGreet = greetDate.getHours();

    var greet;
    if (hrsGreet < 12)
        greet = "<?php echo _l('good_morning'); ?>,";
    else if (hrsGreet >= 12 && hrsGreet <= 17)
        greet = "<?php echo _l('good_afternoon'); ?>,";
    else if (hrsGreet >= 17 && hrsGreet <= 24)
        greet = "<?php echo _l('good_evening'); ?>,";

    if(greet) {
        document.getElementById('greeting').innerHTML =
            '<b>' + greet + ' <?php echo $contact->firstname; ?></b>';
    }
</script>
