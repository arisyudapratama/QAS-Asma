<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Query_M extends CI_Model
{    
    private $_table = "aktivasi_query";
    public $id_aktivasi_query;
    public $pertanyaan;

    private $tablePropagasi = "SELECT * FROM propagasi ORDER BY propagasi DESC";
    private $tablePropagasi2 = "SELECT * FROM propagasi2 ORDER BY propagasi DESC";
    private $hasil = "SELECT * FROM propagasi ORDER BY propagasi DESC LIMIT 1";
    private $hasil2 = "SELECT * FROM propagasi2 ORDER BY propagasi DESC LIMIT 1";

    public function rules()
    {
        return [
            ['field' => 'pertanyaan',
            'label' => 'pertanyaan',
            'rules' => 'required'],            
        ];
    }

    public function getPropagasi()
    {
        return $this->db->query($this->tablePropagasi)->result();
    }

    public function getPropagasi2()
    {
        return $this->db->query($this->tablePropagasi2)->result();
    }

    public function getQuery()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getHasil()
    {
        return $this->db->query($this->hasil)->result();
    }

    public function getHasilSVD()
    {
        return $this->db->query($this->hasil2)->result();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->pertanyaan = $post["pertanyaan"];        
        $this->db->insert($this->_table, $this);
    }
}
