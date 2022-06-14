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
                        <div class="kt-subheader   kt-grid__item" id="kt_subheader" style="    margin: 0!important;">
                            <div class="kt-subheader__main">
                                <h3 class="kt-subheader__title" id="greeting"></h3>
                                <div class="kt-subheader__breadcrumbs">
                                    <a href="#" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                                    <span class="kt-subheader__breadcrumbs-separator"></span>
                                    <a href="" class="kt-subheader__breadcrumbs-link">
                                        Make a Contract </a>
                                    <!-- <span class="kt-subheader__breadcrumbs-separator"></span> -->
                                    <!-- <a href="" class="kt-subheader__breadcrumbs-link">
                                    Default Dashboard </a> -->
                                </div>
                            </div>
                        </div>

                        <!-- end:: Subheader -->

                        <div class="kt-container  kt-grid__item kt-grid__item--fluid" style="margin-bottom: 60px;">
                            <div class="row">
                                <div class="" style="width:100%;">
                                    <div class="kt-portlet" id="kt_portlet" style="padding-bottom:30px;margin: inherit!important;">
                                        <div class="kt-portlet__body">
                                            <div class="row">
                                                <style>
                                                    .service_btn{
                                                        display: block;
                                                        min-width: 40%;
                                                        width: 44%;
                                                        border: 1px solid #ffc107;
                                                        margin: 20px;
                                                        background-color: #f8f8f8
                                                    }
                                                </style>

                                                <a target="_blank" type="button" class="btn btn-lg service_btn" href="https://thelegalclinics.com/consultancy-agreement/">
                                                    Consultancy Agreement
                                                </a>
                                                
                                                <a target="_blank" type="button" class="btn btn-lg service_btn" href="https://thelegalclinics.com/lease-contract/">
                                                Lease Contract 
                                                </a>

                                                <a target="_blank" type="button" class="btn btn-lg service_btn" href="https://thelegalclinics.com/memorandum-of-understanding/">
                                                Memorandum of Understanding 
                                                </a>

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
