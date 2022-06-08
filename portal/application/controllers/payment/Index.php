
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
            $root  = ("http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] . "/legel-form/portal/");

            header('Location: ' . $root);
            exit;
        }

        $this->load->view('form/index');
    }
}
?>
