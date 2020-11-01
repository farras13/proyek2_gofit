<?php

class Mahasiswa extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->model('mahasiswa_m');
    }

    function index()
    {
        $data['data'] = $this->mahasiswa_m->tampil_mahasiswa();
        $this->template->load('template', 'mahasiswa/index', $data);
    }

    function tambah()
    {
        if (isset($_POST['submit'])) {
            $this->mahasiswa_m->tambah_mahasiswa();
            redirect('mahasiswa/index');
        } else {
            $this->template->load('template', 'mahasiswa/tambah');
        }
    }

    function edit()
    {
        if (isset($_POST['submit'])) {
            $this->mahasiswa_m->edit();
            redirect('mahasiswa/index');
        } else {
            $id = $this->uri->segment(3);
            $data['row'] = $this->mahasiswa_m->get($id)->row_array();
            $this->template->load('template', 'mahasiswa/edit', $data);
        }
    }

    function detail()
    {
        $id     = $this->uri->segment(3);
        $data['row']   = $this->db->get_where('mahasiswa', array('mhs_id' => $id))->row_array();
        $this->template->load('template', 'mahasiswa/detail', $data);
    }

    function delete()
    {
        $id     = $this->uri->segment(3);
        $this->mahasiswa_m->hapus($id);
        redirect('mahasiswa/index');
    }
}
