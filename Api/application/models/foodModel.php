<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class foodModel extends CI_Model {

    public function postFood($t, $data)
    {
        $this->db->insert($t, $data);
        return $this->db->affected_rows();
    }

    public function getData($id = null)
    {
        if ($id != null) {
            $this->db->where('idFood', $id);
            return $this->db->get('food')->row_array();
        }else{
            return $this->db->get('food')->result();
        }
    }

    // public function detailFood($id = null)
    // {
    //     // $this->db->select(', idWorkout, name, image, set, duration, rest');
    //     $this->db->join('ingridients', 'ingridients.idFood = food.idfood', 'left');
    //     $this->db->join('methods', 'methods.idFood = ingridients.idFood', 'left');
    //     return $this->db->get_where('food', ['food.idFood' => $id])->result_array();
    // }

    public function getIngri($id = null)
    {
        $this->db->join('food', 'food.idFood = ingridients.idFood', 'left');
        return $this->db->get_where('ingridients', ['ingridients.idFood' => $id])->result_array();
    }

    public function getMet($id = null)
    {
        $this->db->join('food', 'food.idFood = methods.idFood', 'left');
        return $this->db->get_where('methods', ['methods.idFood' => $id])->result_array();
    }

}

/* End of file foodModel.php */
