<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tabel extends CI_Controller
{

	public function index()
	{
		// $this->load->view('template');
		$this->template->load('template', 'datatable');
	}
}
