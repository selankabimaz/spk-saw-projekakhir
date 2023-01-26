<?php

namespace App\Models;

use CodeIgniter\Model;

class M_Laporan extends Model
{
  protected $table = 'masuk';


  public function __construct()
  {

    $this->db = db_connect();
    $this->builder = $this->db->table($this->table);
    helper('sn');
  }

  public function getAllData($no_transaksi = null)
  {
    if ($no_transaksi == null) {
      return $this->builder->get();
    } else {

      $this->builder->where('no_transaksi', $no_transaksi);
      return $this->builder->get()->getRowArray();
    }

    // return $this->db->table('siswa')->get();
    // return $this->builder->get();
  }

  public function tambah($data)
  {
    // return $this->db->table('siswa')->insert($data);
    return $this->builder->insert($data);
  }

  public function hapus($no_transaksi)
  {
    // return $this->db->table('siswa')->delete(['no_transaksi' => $no_transaksi]);
    return $this->builder->delete(['no_transaksi' => $no_transaksi]);
  }

  public function ubah($data, $no_transaksi)
  {
    // return $this->db->table('siswa')->update($data);
    // return $this->builder->update(['no_transaksi => $no_transaksi']);

    // <!-- ini bener bisa ubah tapi kenapa ubahnya semua data -->
    return $this->builder->update($data, ['no_transaksi' => $no_transaksi]);
  }
}
