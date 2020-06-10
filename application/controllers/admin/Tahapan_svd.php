<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tahapan_svd extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();                
        $this->load->model("SVD_M");
    }

    public function index()
    {
        
    }

    // tahap 1
    public function AT()
    {
        $this->load->view("admin/data/svd/tahap1/AT");
    }
    public function AAT()
    {
        $this->load->view("admin/data/svd/tahap1/AAT");
    }
    public function Ueigenvalue()
    {
        $this->load->view("admin/data/svd/tahap1/Ueigenvalue");
    }
    public function Ueigenvector()
    {
        $this->load->view("admin/data/svd/tahap1/Ueigenvector");
    }
    public function U()
    {
        $this->load->view("admin/data/svd/tahap1/U");
    }

    // tahap 2
    public function ATA()
    {
        $this->load->view("admin/data/svd/tahap2/ATA");
    }    
    public function Deigenvalue()
    {
        $this->load->view("admin/data/svd/tahap2/Deigenvalue");
    }
    public function Deigenvector()
    {
        $this->load->view("admin/data/svd/tahap2/Deigenvector");
    }
    public function D()
    {
        $this->load->view("admin/data/svd/tahap2/D");
    }

    // tahap 3
    public function S()
    {
        $this->load->view("admin/data/svd/tahap3/S");
    }    
    public function S2()
    {
        $this->load->view("admin/data/svd/tahap3/S2");
    }
    public function UT()
    {
        $this->load->view("admin/data/svd/tahap3/UT");
    }

}