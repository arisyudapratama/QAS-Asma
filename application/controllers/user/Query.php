<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Query extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("Query_M");
        $this->load->library('form_validation');
    }

    public function index()
    {        
        $data["query"] = $this->Query_M->getQuery();
        $data["hasil"] = $this->Query_M->getHasil();        
        $data["hasilSVD"] = $this->Query_M->getHasilSVD();        
        $this->load->view("user/HasilView", $data);        
    }

    public function add()
    {
        $data = $this->Query_M;
        $validation = $this->form_validation;
        $validation->set_rules($data->rules());
        if ($validation->run()) {
            $this->db->query('DELETE FROM aktivasi_query');
            $this->db->query("ALTER TABLE aktivasi_query AUTO_INCREMENT = 1");
            $data->save();            
            $this->session->set_flashdata('success', 'Terkirim');            
            redirect('user/query/proses');             
        }
        $this->load->view("user/KonsultasiView");        
    }

    public function proses()
    {
        $this->db->query('DELETE FROM query_proses');
        $this->db->query("ALTER TABLE query_proses AUTO_INCREMENT = 1");
        include_once APPPATH. '/vendor/autoload.php';
        
        // Load library Sastrawi
        $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
        $stemmer = $stemmerFactory->createStemmer();
        $StopWordRemoverFactory = new \Sastrawi\stopWordRemover\StopWordRemoverFactory();
        $stopword = $StopWordRemoverFactory->createStopWordRemover();

        $query = $this->db->query('SELECT pertanyaan FROM aktivasi_query LIMIT 1');
        $row = $query->row();
        $tanya = $row->pertanyaan;                    
        $stim = $stemmer->stem($tanya);
        $output = $stopword->remove($stim);

        $query = $this->db->get('aktivasi_query');
        $no = 1;   
        $ang =1;     
        foreach ($query->result() as $field)
        {
        // echo "pertanyaan ". $no++ .'. ';
        $asli = $field->pertanyaan;
        // echo $asli;
        // echo "<br>";
        // echo "hasil pre-processing : ";
        $stim = $stemmer->stem($asli);
        $output = $stopword->remove($stim);
        $output_unik = implode(' ',array_unique(explode(' ', $output)));
            echo $output_unik . "\n"; // Menampilkan hasil stemming
        echo "<br> <br>";
            
        $data = array(  
            'id_aktivasi' => $no++,          
            'pertanyaan' => $output_unik);
        $this->db->insert('query_proses', $data);
        }
        redirect('user/bobot_query'); 
    }

    public function propagasi()
    {
        $data["propagasi"] = $this->Query_M->getPropagasi();
        // $data["propagasi2"] = $this->Query_M->getPropagasi2();
        $this->load->view("user/hasil/propagasiView", $data);
    }

    public function propagasi2()
    {
        $data["propagasi2"] = $this->Query_M->getPropagasi2();
        $this->load->view("user/hasil/propagasi2View", $data);
    }
}