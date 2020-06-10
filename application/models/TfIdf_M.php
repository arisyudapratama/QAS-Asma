<?php defined('BASEPATH') OR exit('No direct script access allowed');
class TfIdf_M extends CI_Model
{
    private $_table = "tfidf";    
    public $bobot;

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
}