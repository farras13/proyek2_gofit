<?php

defined('BASEPATH') OR exit('No direct script access allowed');
use Restserver\Libraries\REST_Controller;

    require(APPPATH . 'libraries/REST_Controller.php');

    class Workout extends REST_Controller {
        var $API ="https://api.edamam.com/api/food-database/v2/parser?ingr=*&app_id=e5c0b3ca&app_key=ee28dc1c5fc9d3c94942d8ae4786b596";

function __construct() {
    parent::__construct();
        $this->load->model('Workmodel', 'ls');
        
    }

    public function detail_get()
    {
        $id = $this->get('idWorkout');
        $detail = $this->ls->getWorkDetail($id);    

        if ($detail) {
            $this->response([
                'status' => "true", 
                'data' => $detail
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }
    public function listWorkout_get()
    {
        $id = $this->get('idWorkout');
        if ($id === null) {
            $list = $this->ls->getWork();
        } else {
            $list = $this->ls->getWork($id);
        }

        if ($list) {
            $this->response([
                'status' => "true", 
                'data' => $list
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }
}
/** End of file Workout.php **/