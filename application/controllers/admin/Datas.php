<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Datas extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("data_ori");
        $this->load->model("data_proses");
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data["datas"] = $this->data_ori->getAll();
        $this->load->view("admin/data/list", $data);
    }

    public function DataProses()
    {
        $data["data_pro"] = $this->data_proses->getAll(); 
        $this->load->view("admin/data/DataProses", $data);
    }

    public function add()
    {
        $data = $this->data_ori;        
        $validation = $this->form_validation;
        $validation->set_rules($data->rules());
        if ($validation->run()) {
            $data->save();            
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }
        $this->load->view("admin/data/new_form");
    }

    public function proses()
    {
        $this->db->query('DELETE FROM data_proses');
        $this->db->query("ALTER TABLE data_proses AUTO_INCREMENT = 1");
        include_once APPPATH. '/vendor/autoload.php';
        
        // Meload library Sastrawi
        $stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
        $stemmer = $stemmerFactory->createStemmer();
        $StopWordRemoverFactory = new \Sastrawi\stopWordRemover\StopWordRemoverFactory();
        $stopword = $StopWordRemoverFactory->createStopWordRemover();

        // $query = $this->db->query('SELECT pertanyaan FROM data_ori LIMIT 1');
        $query = $this->db->query('SELECT jawaban FROM data_ori LIMIT 1');
        $row = $query->row();
        $tanya = $row->pertayaan;                            
        $stim = $stemmer->stem($tanya);
        $output = $stopword->remove($stim);

        $query = $this->db->get('data_ori');
        $no = 1;   
        $ang =1;     
        foreach ($query->result() as $field)
        {
        // echo "pertanyaan ". $no++ .'. ';
        $asli = $field->pertanyaan;        
        // echo "<br>";
        // echo "hasil pre-processing : ";
        $stim = $stemmer->stem($asli);
        $output = $stopword->remove($stim);
        // $output_unik = implode(' ',array_unique(explode(' ', $output))); //opsi tambahan
            // echo $output . "\n"; // Menampilkan hasil stemming
        // echo "<br> <br>";
            
        $data = array(            
            'id_proses' => $ang++,
            'pertanyaan' => $output);
            // 'pertanyaan' => $output_unik); //opsi tambahan
        $this->db->insert('data_proses', $data);
        
        }
        redirect('admin/datas/DataProses'); 
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('admin/datas');

        $data = $this->data_ori;
        $data2 = $this->data_proses;
        $validation = $this->form_validation;
        $validation->set_rules($data->rules());

        if ($validation->run()) {
            $data->update();
            $data2->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data->data = $data->getById($id);
        if (!$data->data) show_404();

        $this->load->view("admin/data/edit_form", $data);
    }

    public function delete($id=null)
    {
        if (!isset($id)) show_404();

        if ($this->data_ori->delete($id)) {
            redirect(site_url('admin/datas'));
        }
    }
}
