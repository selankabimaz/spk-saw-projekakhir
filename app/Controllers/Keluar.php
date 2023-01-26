<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Keluar;

class Keluar extends Controller
{
  protected $M_Transaction;
  public function __construct()
  {
    $this->model = new M_Keluar;
    helper('sn');

    $this->session = service('session');
    $this->auth = service('authentication');
  }

  public function index()
  {

    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }
    $data = [
      'judul' => 'Surat Keluar',
      'keluar' => $this->model->getAllData()
    ];
    // load view
    tampilan('keluar/index', $data);
  }

  public function tambah()
  {
    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }

    if (isset($_POST['tambah'])) {
      $val = $this->validate([
        'no_surat'     => 'required',
        'tgl_surat'    => 'required',
        'surat_dari'   => 'required',
        'surat_kepada' => 'required',
        'perihal'      => 'required'
      ]);
      if (!$val) {
        session()->setFlashdata('err', \Config\Services::validation()->listErrors());
        $data = [
          'judul' => 'Surat Keluar',
          'keluar' => $this->model->getAllData()
        ];


        // load view
        tampilan('keluar/index', $data);
      } else {
        $data = [
          'no_surat'      => $this->request->getPost('no_surat'),
          'tgl_surat'     => $this->request->getPost('tgl_surat'),
          'surat_dari'    => $this->request->getPost('surat_dari'),
          'surat_kepada'  => $this->request->getPost('surat_kepada'),
          'perihal'       => $this->request->getPost('perihal')
        ];

        // insert data 
        $success = $this->model->tambah($data);
        if ($success) {
          session()->setFlashdata('message ',  'Ditambahkan');
          return redirect()->to('/keluar/index');
        }
      }
    } else {
      return redirect()->to('/keluar/index');
    }
  }
  public function ubah()
  {
    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }

    if (isset($_POST['ubah'])) {
      $val = $this->validate([
        'surat_dari' => 'required'
      ]);

      if (!$val) {
        session()->setFlashdata('err', \Config\Services::validation()->listErrors());
        $data = [
          'judul' => 'Data Surat Masuk',
          'masuk' => $this->model->getAllData()
        ];


        // load view
        tampilan('keluar/index', $data);
      } else {
        $no_surat = $this->request->getPost('no_surat');

        $data = [
          'no_surat' => $this->request->getPost('no_surat'),
          'tgl_surat' => $this->request->getPost('tgl_surat'),
          'surat_dari' => $this->request->getPost('surat_dari'),
          'surat_kepada' => $this->request->getPost('surat_kepada'),
          'perihal' => $this->request->getPost('perihal'),
        ];

        // insert data 
        $success = $this->model->ubah($data, $no_surat);
        if ($success) {
          session()->setFlashdata('message ',  'Diubah');
          return redirect()->to('/keluar/index');
        }
      }
    } else {
      return redirect()->to('/keluar/index');
    }
  }

  public function excel()
  {
    $data = [
      'keluar' => $this->model->getAllData()
    ];
    echo view('keluar/excel', $data);
  }
}
