<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Masuk;

class Masuk extends Controller
{
  protected $M_Masuk;
  public function __construct()
  {
    $this->model = new M_Masuk;
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
      'judul' => 'Surat Masuk',
      'masuk' => $this->model->getAllData()
    ];

    // load view
    tampilan('masuk/index', $data);
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
        'no_surat' => [
          'label' => 'No Masuk',
          'rules' => 'required|max_length[10]|is_unique[masuk.no_surat]',
          'errors' => [
            'required' => '{field} tidak boleh kosong.',
          ]
        ],
        'surat_dari' => 'required'
      ]);

      if (!$val) {
        session()->setFlashdata('err', \Config\Services::validation()->listErrors());
        $data = [
          'judul' => 'Data Surat Masuk',
          'masuk' => $this->model->getAllData()
        ];


        // load view
        tampilan('masuk/index', $data);
      } else {

        $data = [
          'no_surat' => $this->request->getPost('no_surat'),
          'tgl_diterima' => $this->request->getPost('tgl_diterima'),
          'surat_dari' => $this->request->getPost('surat_dari'),
          'surat_kepada' => $this->request->getPost('surat_kepada'),
          'perihal' => $this->request->getPost('perihal'),
        ];

        // insert data 
        $success = $this->model->tambah($data);
        if ($success) {
          session()->setFlashdata('message ',  'Ditambahkan');
          return redirect()->to('/masuk/index');
        }
      }
    } else {
      return redirect()->to('/masuk/index');
    }
  }

  public function hapus($no_surat)
  {

    if (!$this->auth->check()) {
      $redirectURL = session('redirect_url') ?? site_url('/login');
      unset($_SESSION['redirect_url']);

      return redirect()->to($redirectURL);
    }

    $data = [
      'masuk' => $this->model->getAllData($no_surat)
    ];

    $this->model->hapus($no_surat);

    session()->setFlashdata('message ',  'Dihapus');
    return redirect()->to('/masuk/index');
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
        tampilan('masuk/index', $data);
      } else {
        $no_surat = $this->request->getPost('no_surat');

        $data = [
          'no_surat' => $this->request->getPost('no_surat'),
          'tgl_diterima' => $this->request->getPost('tgl_diterima'),
          'surat_dari' => $this->request->getPost('surat_dari'),
          'surat_kepada' => $this->request->getPost('surat_kepada'),
          'perihal' => $this->request->getPost('perihal'),
        ];

        // insert data 
        $success = $this->model->ubah($data, $no_surat);
        if ($success) {
          session()->setFlashdata('message ',  'Diubah');
          return redirect()->to('/masuk/index');
        }
      }
    } else {
      return redirect()->to('/masuk/index');
    }
  }

  public function excel()
  {
    $data = [
      'masuk' => $this->model->getAllData()
    ];

    echo view('masuk/excel', $data);
  }
}
