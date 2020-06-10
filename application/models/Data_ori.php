<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Data_ori extends CI_Model
{
    private $_table = "data_ori";
    public $id_data_ori;
    public $pertanyaan;
    public $jawaban;

    public function rules()
    {
        return [
            ['field' => 'pertanyaan',
            'label' => 'pertanyaan',
            'rules' => 'required'],
            // 'rules' => 'required|is_unique[data.pertanyaan]'],

            ['field' => 'jawaban',
            'label' => 'jawaban',
            'rules' => 'required']
        ];
    }

    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id_data_ori" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->pertanyaan = $post["pertanyaan"];
        $this->jawaban = $post["jawaban"];
        $this->db->insert($this->_table, $this);
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id_data_ori = $post["id"];
        $this->pertanyaan = $post["pertanyaan"];
        $this->jawaban = $post["jawaban"];
        $this->db->update($this->_table, $this, array('id_data_ori' => $post['id']));
    }

    public function delete($id)
    {
        // return $this->db->delete($this->_table, array("id_data_ori" => $id));
        // return $this->db->delete($this->_table2, array("id_data_proses" => $id));

        $ori = $this->db->delete($this->_table, array("id_data_ori" => $id));
        // $proses = $this->db->delete($this->_table2, array("id_data_proses" => $id));
        return $ori;
        // return $proses;
    }
}
