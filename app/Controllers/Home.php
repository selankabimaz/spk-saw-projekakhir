<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Laporan;

class Home extends BaseController
{
    protected $M_Laporan;
    public function __construct()
    {
        $this->model = new M_Laporan;
        helper('sn');

        $this->session = service('session');
        $this->auth = service('authentication');
    }
    public function index()
    {
        //jika belum login, user tidak memiliki akses
        if (!$this->auth->check()) {
            $redirectURL = session('redirect_url') ?? site_url('/login');
            unset($_SESSION['redirect_url']);

            return redirect()->to($redirectURL);
        }


        $data = [
            'judul' => 'Dashboard',
            'transaction' => $this->model->getAllData()
        ];

        tampilan('home/index', $data);

        // return view('welcome_message');
    }
}
