
<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Index extends ClientsController
{
    public function __construct()
    {
        parent::__construct();

        $this->load->helper('url');
    }

    public function index()
    {
        if (!isset($_SESSION['contact_user_id'])) {
            

            header('Location: ' . site_url('authentication/login'));
            exit;
        }

        $this->load->view('form/index');
    }

    public function form()
    {
        if (!isset($_SESSION['contact_user_id'])) {

            header('Location: ' . site_url('authentication/login'));
            exit;
        }

        $this->load->view('form/index_ar');
    }
}
?>
