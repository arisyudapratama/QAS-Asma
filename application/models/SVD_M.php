<?php defined('BASEPATH') OR exit('No direct script access allowed');
class SVD_M extends CI_Model
{
    private $_table = "svd";
    
    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }
}