<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Data_proses extends CI_Model
{
    private $_table = "data_proses";
    public $id_data_proses;
    public $pertanyaan;

    public function rules()
    {
        return [
            ['field' => 'pertanyaan',
            'label' => 'pertanyaan',
            'rules' => 'required']
            // 'rules' => 'required|is_unique[data.pertanyaan]'],
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_data_proses" => $id])->row();
    }    

    public function save()
    {
        $post = $this->input->post();
        $this->pertanyaan = $post["pertanyaan"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_data_proses = $post["id"];
        $satu = slug($post["pertanyaan"]);
        $this->pertanyaan = implode(' ',array_unique(explode(' ', $satu)));
        $this->db->update($this->_table, $this, array('id_data_proses' => $post['id']));
    }

    public function delete($id)
    {
        return $this->db->delete($this->_table, array("id_data_proses" => $id));
    }
}
