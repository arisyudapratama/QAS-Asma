<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Kateglo extends CI_Controller
{
    // var $API ="";
    
    function __construct() {
        parent::__construct();
        $this->API="https://kateglo.com/api.php?format=json&phrase=kumat";
    }
    
    // menampilkan data mahasiswa
    function index(){        
        $data = json_decode($this->curl->simple_get($this->API));        
        // print_r ($data);              
        $jumlah_index = count($data->kateglo->definition);
        for ($i=0; $i < $jumlah_index; $i++) { 
            // echo $data->kateglo->definition[$i]->def_text;        
            // echo "<br>";            
            $kateglo = $data->kateglo->definition[$i]->def_text;
            $akateglo = explode(";", trim($kateglo));
            foreach ($akateglo as $get) {
                echo $get;
                echo "<br>";                
            }
        }                  
    }
}