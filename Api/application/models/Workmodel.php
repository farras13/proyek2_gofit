<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Workmodel extends CI_Model {

    public function getWork($id=null)
    {
        if ($id == null) {
            return $this->db->get('listworkout')->result_array();
        } else {
            return $this->db->get_where('listworkout', ['idWorkout' => $id])->result();
        }
    }
    public function getMuscle($id=null)
    {
        if ($id == null) {
            return $this->db->get('muscle')->result_array();
        } else {
            return $this->db->get_where('muscle', ['idmuscle' => $id])->result();
        }
    }

    public function getWorkDetail($id=null)
    {
       
        $this->db->join('listworkout', 'listsubworkout.idWorkout = listworkout.idWorkout', 'left');
        return $this->db->get_where('listsubworkout', ['idWorkoutDetail' => $id])->result_array();
       
    }

    public function getMuscleDetail($id=null)
    {
       
        $this->db->join('muscle', 'listsubmuscle.idMuscle = muscle.idMuscle', 'left');
        return $this->db->get_where('listsubmuscle', ['idDetailMuscle' => $id])->result_array();
       
    }

    public function dataPost($t,$object)
    {
        $this->db->insert($t, $object);
        return $this->db->affected_rows();
    }

}

/* End of file Workmdel.php */
