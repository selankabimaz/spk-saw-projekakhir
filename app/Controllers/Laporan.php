<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Laporan;

class Laporan extends Controller
{
  protected $M_Laporan;
  public function __construct()
  {
    $this->model = new M_Laporan;
    helper('sn');

    $this->session = service('session');
    $this->auth = service('authentication');

    // $this->pager = \Config\Services::pager();
  }
  public function index()
  {

    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }

    $data = [
      'judul' => 'Laporan',
      'transaction' => $this->model->getAllData()
    ];

    // load view
    tampilan('laporan/index', $data);
  }
  public function excel()
  {
    $data = [
      'transaction' => $this->model->getAllData()
    ];

    echo view('transaction/excel', $data);
  }
}
