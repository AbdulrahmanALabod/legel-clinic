<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div style="margin-top: 30px;">
    <div class="row">

         <div class="col-lg-3">
            <?php //get_template_part('side_menu'); ?>
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
                                        Request service </a>
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
                                                        min-width: 250px;
                                                        width: 250px;
                                                        border: 1px solid #ffc107;
                                                        margin: 31px;
                                                        background-color: #f8f8f8
                                                    }
                                                </style>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('pickup/pickups/start_company'); ?>">
                                                    Start a business
                                                </a>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('clients/open_ticket'); ?>">
                                                    Request service
                                                </a>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo base_url('surveys/survey/3/314c5ae18675897e1a3d347292a494d4');?>">
                                                    Send Documents
                                                </a>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('surveys/survey/4/d4c0e02142e873547ca8ba969dee136d'); ?>">
                                                    Receive Documents
                                                </a>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('clients/calendar'); ?>">
                                                    Calender
                                                </a>

                                                <!-- <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('pickup/pickups/help'); ?>">
                                                    Help
                                                </a>

                                                <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('pickup/pickups/ask'); ?>">
                                                    Ask a Lawyer
                                                </a> -->

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


