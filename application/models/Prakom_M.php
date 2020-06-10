<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Prakom_M extends CI_Model
{
    private $_table = "prakomputasi";
    
    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
}