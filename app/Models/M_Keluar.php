<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Keluar extends Model
{
  protected $table = 'keluar';


  public function __construct()
  {
    $this->db = db_connect();
    $this->builder = $this->db->table($this->table);
    helper('sn');
  }

  public function getAllData($no_surat = null)
  {
    if ($no_surat == null) {
      return $this->builder->get();
    } else {
      $this->builder->where('no_surat', $no_surat);
      return $this->builder->get()->getRowArray();
    }
  }

  public function tambah($data)
  {
    return $this->builder->insert($data);
  }

  public function hapus($no_surat)
  {
    return $this->builder->delete(['no_surat' => $no_surat]);
  }

  public function ubah($data, $no_surat)
  {
    return $this->builder->update($data, ['no_surat' => $no_surat]);
  }
}
