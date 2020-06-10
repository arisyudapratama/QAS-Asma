<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Bobots extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();        
        $this->load->model("bobot_m");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["bobot_toh"] = $this->bobot_m->getAll();         
        $this->load->view("admin/data/bobot_view", $data);
    }

    public function tfidf()
    {        
        $this->load->view("admin/data/tfidf_matriks_view");
    }

    public function euclideanDistance()
    {        
        $this->load->view("admin/data/euclideanDistance");
    }

    public function praKomputasi()
    {        
        $this->load->view("admin/data/praKomputasi");
    }

    public function SVD()
    {        
        $this->load->view("admin/data/svd_view");
    }

    public function praKomputasi2()
    {        
        $this->load->view("admin/data/praKomputasi2");
    }

    public function coba()
    {        
        $this->load->view("admin/data/coba");
    }
}