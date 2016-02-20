<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Destroys session variables related to user login.
 */
class Logout extends MY_Controller {
    //destroy the session variable and redirect to home page
    function index() {
        $this->session->unset_userdata('playername');
        $this->session->sess_destroy();
        redirect('/');
    }
}