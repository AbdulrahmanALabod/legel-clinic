<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<div class="row">
    <div class="col-12">
        <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-grid--stretch">
            <div class="kt-container kt-body  kt-grid kt-grid--ver" id="kt_body">
                <div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor">
                    <div class="kt-subheader   kt-grid__item" id="kt_subheader" style="    margin: 0!important;">
                        <div class="kt-subheader__main">
                            <h3 class="kt-subheader__title" id="greeting"></h3>
                            <div class="kt-subheader__breadcrumbs">
                                <a href="#" class="kt-subheader__breadcrumbs-home"><i class="flaticon2-shelter"></i></a>
                                <span class="kt-subheader__breadcrumbs-separator"></span>
                            </div>
                        </div>
                    </div>
                    <div class="kt-container  kt-grid__item kt-grid__item--fluid" style="margin-bottom: 60px;">
                        <div class="row">
                            <div class="" style="width:100%;">
                                <div class="kt-portlet" id="kt_portlet" style="padding-bottom:30px;margin: inherit!important;">
                                    <div class="kt-portlet__body">
                                        <div class="row">
                                            <style>
                                                .service_btn {
                                                    display: block;
                                                    min-width: 250px;
                                                    width: 250px;
                                                    border: 1px solid #ffc107;
                                                    margin: 31px;
                                                    background-color: #f8f8f8
                                                }
                                            </style>

                                            <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('pickups/start_company'); ?>">
                                                Start a business
                                            </a>

                                            <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('clients/open_ticket'); ?>">
                                                Request service
                                            </a>

                                            <a type="button" class="btn btn-lg service_btn" href="<?php echo base_url('surveys/survey/3/de5fbbfb2cf044b6b092d3638aa86dd5'); ?>">
                                                Send Documents
                                            </a>

                                            <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('surveys/survey/4/65035651fac36c08126dae358f71f335'); ?>">
                                                Receive Documents
                                            </a>

                                            <a type="button" class="btn btn-lg service_btn" href="<?php echo site_url('clients/calendar'); ?>">
                                                Calender
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>