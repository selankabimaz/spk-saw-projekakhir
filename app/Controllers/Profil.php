<?php

namespace App\Controllers;

class Profil extends BaseController
{
  public function __construct()
  {
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
      'judul' => 'Profil Author'
    ];

    tampilan('profil/index', $data);

    // return view('welcome_message');
  }
}
