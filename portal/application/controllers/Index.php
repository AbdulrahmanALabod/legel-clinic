<?php

defined('BASEPATH') or exit('No direct script access allowed');

use app\services\ValidatesContact;

class Index extends App_Controller
{
    use ValidatesContact;

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {

        $this->load->view('themes/' . active_clients_theme() . '/views/main');
    }

    public function about()
    {
        $this->load->view('themes/' . active_clients_theme() . '/views/about');
    }
}
