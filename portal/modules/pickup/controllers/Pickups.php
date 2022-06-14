<?php

defined('BASEPATH') or exit('No direct script access allowed');
set_time_limit(0);

class Pickups extends ClientsController
{
//    public function index()
//    {
//
//        echo "Test";
//        die();
//
//
////        $this->app_css->theme('surveys-css', module_dir_url('surveys', 'assets/css/surveys.css'));
//
//        $this->disableNavigation()
//            ->disableSubMenu();
//
////        $this->data(['survey' => $survey]);
//        $this->title("Islam");
//        no_index_customers_area();
//        $this->view('pickup');
//        $this->layout();
//    }

    public function tracking(){


//        $this->data(['sample_data' => []]);
        $this->title('Page Title');
        $this->view('helloo');
        $this->layout();
    }

    public function partners(){


//        $this->data(['sample_data' => []]);
        $this->title('Partners');
        $this->view('partners');
        $this->layout();
    }

    public function ask(){
        $this->title('Ask a lawyer');
        $this->view('ask');
        $this->layout();
    }

    public function request_service(){
        $this->title('Request Service');
        $this->view('request_service');
        $this->layout();
    }

    public function help(){
        $this->title('Help');
        $this->view('help');
        $this->layout();
    }

    public function send_documents(){
        $this->title('Send Documents');
        $this->view('send_documents');
        $this->layout();
    }

    public function start_company(){
        $this->title('Start a Company');
        $this->view('start_company');
        $this->layout();
    }

    public function make_contract(){
        $this->title('Make a Contract');
        $this->view('make_contract');
        $this->layout();
    }

    public function incorporation(){
        $this->title('Online Incorporation');
        $this->view('online_incorporation');
        $this->layout();
    }

    public function incorporation_egypt(){
        $this->title('Egypt Online Incorporation');
        $this->view('egypt_online_incorporation');
        $this->layout();
    }

}
