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

    public function getMuscleDetail($id)
    {
       
        // $this->db->join('muscle', 'listsubmuscle.idMuscle = muscle.idMuscle', 'left');
        $this->db->select('idDetailMuscle, idMuscle, name, image, set, duration, rest');
        return $this->db->get_where('listsubmuscle', ['idMuscle' => $id])->result_array();
       
    }

    public function getVideo($id)
    {
        $this->db->select('link, start, end');
        $this->db->where('idMuscle', $id);
        return $this->db->get('listsubmuscle')->result_array();        
    }

    public function dataPost($t,$object)
    {
        $this->db->insert($t, $object);
        return $this->db->affected_rows();
    }

}

/* End of file Workmdel.php */
