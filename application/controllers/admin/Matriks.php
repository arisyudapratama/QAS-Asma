<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Matriks extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();        
        $this->load->model("bobot_m");
        $this->load->library('form_validation');
    }

    public function index()
    {        
        $this->load->view("admin/data/matriks_tfidf");              
    }

    public function coba(){
        $this->load->view("admin/data/coba");
    }    

    public function coba2(){
        $this->load->view("admin/data/coba2");
    }    
}
