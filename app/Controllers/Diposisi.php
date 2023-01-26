<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Diposisi;

class Diposisi extends Controller
{
  protected $M_Diposisi;
  public function __construct()
  {
    $this->model = new M_Diposisi;
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
      'judul' => 'Diposisi',
      'diposisi' => $this->model->getAllData()
    ];
    // load view
    tampilan('diposisi/index', $data);
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
        'nama_agenda' => 'required',
        'no_surat' => 'required'
      ]);
      if (!$val) {
        session()->setFlashdata('err', \Config\Services::validation()->listErrors());
        $data = [
          'judul' => 'Diposisi',
          'diposisi' => $this->model->getAllData()
        ];

        // load view
        tampilan('diposisi/index', $data);
      } else {
        $data = [
          'nama_agenda' => $this->request->getPost('nama_agenda'),
          'no_surat' => $this->request->getPost('no_surat'),
          'tgl_surat' => $this->request->getPost('tgl_surat'),
          'surat_dari' => $this->request->getPost('surat_dari'),
          'surat_kepada' => $this->request->getPost('surat_kepada'),
          'perihal' => $this->request->getPost('perihal')
        ];

        // insert data 
        $success = $this->model->tambah($data);
        if ($success) {
          session()->setFlashdata('message ',  'Ditambahkan');
          return redirect()->to('/diposisi/index');
        }
      }
    } else {
      return redirect()->to('/diposisi/index');
    }
  }

  public function hapus($no_surat)
  {
    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }
    $this->model->hapus($no_surat);
    session()->setFlashdata('message ',  'Dihapus');

    return redirect()->to('/diposisi/index');
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
          'judul' => 'Data Diposisi',
          'diposisi' => $this->model->getAllData()
        ];


        // load view
        tampilan('diposisi/index', $data);
      } else {
        $no_surat = $this->request->getPost('no_surat');

        $data = [
          'nama_agenda' => $this->request->getPost('nama_agenda'),
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
          return redirect()->to('/diposisi/index');
        }
      }
    } else {
      return redirect()->to('/diposisi/index');
    }
  }

  public function excel()
  {
    $data = [
      'diposisi' => $this->model->getAllData()
    ];

    echo view('diposisi/excel', $data);
  }
}
