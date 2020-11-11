<?php
use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';

class Food extends REST_Controller {
    var $API ="";
    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->API = "https://api.edamam.com/api/food-database/v2/parser?ingr=*&app_id=e5c0b3ca&app_key=ee28dc1c5fc9d3c94942d8ae4786b596";
        $this->haha = "https://api.edamam.com/api/food-database/v2/nutrients?app_id=e5c0b3ca&app_key=ee28dc1c5fc9d3c94942d8ae4786b596";
        $this->load->library('curl');
        $this->load->library('Cloudinarylib');
        $this->load->model('foodModel','f');
    }
    
    public function index_get()
    {
        // $food = json_decode($this->curl->simple_get($this->API));
        $id = $this->get('idFood');
        
        if ($id === null) {
            $list = $this->f->getData();
        } else {
            $list = $this->f->getData($id);
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

    public function detail_get()
    {
        // $food = json_decode($this->curl->simple_get($this->API));
        $id = $this->get('idFood');
        // $list = $this->f->detailFood($id);    
        $food = $this->f->getData($id);
        $ing = $this->f->getIngri($id);
        $met = $this->f->getMet($id);
        $gabung = array(
            'portion' => $food['image'], 
            'time   ' => $food['image'], 
            'calories' => $food['image'], 
            'ingridients' => $ing, 
            'methods' => $met, 
        );
        if ($gabung) {
            $this->response([
                'status' => "true", 
                'data' => $gabung
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'id not found'
            ], 404);
        }
    }

    public function index_post()
    {
        $files['image'] = \Cloudinary\Uploader::upload($this->input->post('image'));
        $data = array(
            'name' => $this->input->post('food'), 
        );
        $this->Image_post($files['image'], $data, 'listsubmuscle');
        
    }

    public function Image_post($img, $data)
    {
        $data['image'] = $img['url'];  
        if ($this->ls->postFood($data) > 0) {
            $this->response([
                'status' => "true", 
                'data' => $data
            ], 200);
        } else {
            $this->response([
                'status' => "false", 
                'massage' => 'data not found'
            ], 404);
        }
    }

}

/* End of file Food.php */
