        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $judul; ?></h1>

          <!-- mengecek sweetalert 2 -->
          <!-- <button onclick="Swal.fire()">Swal</button> -->

          <!-- alert manual tanpa sweetalert -->

          <div class="swal" data-swal="<?= session()->get('message') ?>"></div>

          <div class="row">
            <div class="col-md-8">
              <?php
              if (session()->get('err')) {
                echo "<div class='alert alert-danger' role='alert'>" . session()->get('err') . "</div>";
                session()->remove('err');
              }
              ?>
            </div>
          </div>

          <div class="card">
            <div class="card-header">
              <form action="/masuk/tambah" method="post" enctype="multipart/form-data">
                <h2>Tambah data</h2>
                <div class="row">
                  <div class="col-md">
                    <div class="form-group">
                      <label for="no_surat"></label>
                      <input type="int" name="no_surat" id="no_surat" class="form-control" placeholder="Nomor Surat">
                    </div>
                    <div class="form-group">
                      <label for="tgl_diterima"></label>
                      <input type="date" name="tgl_diterima" id="tgl_diterima" class="form-control" placeholder="Tgl Diterima">
                    </div>
                    <div class="form-group">
                      <label for="surat_dari"></label>
                      <input type="text" name="surat_dari" id="surat_dari" class="form-control" placeholder="Surat Dari">
                    </div>
                    <button type="submit" name="tambah" method="post" class="btn btn-primary">Tambah Data</button>
                  </div>
                  <div class="col-md">
                    <div class="form-group">
                      <label for="surat_kepada"></label>
                      <input type="text" name="surat_kepada" id="surat_kepada" class="form-control" placeholder="Surat Kepada">
                    </div>
                    <div class="form-group">
                      <label for="perihal"></label>
                      <input type="text" name="perihal" id="perihal" class="form-control" placeholder="Perihal">
                    </div>
                  </div>
                </div>
              </form>
              <div class="row">
                <div class="col-md">
                  <button onclick="window.print()" class="btn btn-outline-secondary shadow float-right ml-2">Print <i class="fa fa-print"></i></button>
                  <a href="/masuk/excel" class="btn btn-outline-success shadow float-right">Excel <i class="fa fa-file-excel"></i></a>
                </div>
              </div>

              <div class="row">
                <div class="col-md">
                  <div class="card-body">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <td>No Surat</td>
                          <td>Tgl Diterima</td>
                          <td>Surat Dari</td>
                          <td>Surat Kepada</td>
                          <td>Perihal</td>
                          <td>Perintah</td>
                        </tr>
                      </thead>
                      <tbody>
                        <?php if (!empty($masuk->getResultArray())) :   ?>
                          <?php $i = 1;  ?>
                          <?php foreach ($masuk->getResultArray() as $row) : ?>
                            <tr>
                              <td><?= $row['no_surat']; ?></td>
                              <td><?= $row['tgl_diterima']; ?></td>
                              <td><?= $row['surat_dari']; ?></td>
                              <td><?= $row['surat_kepada']; ?></td>
                              <td><?= $row['perihal']; ?></td>
                              <td>
                                <button type="button" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#modalUbah">
                                  <i class="fa"> Ubah</i>
                                </button>
                                <a href="/masuk/hapus/<?= $row['no_surat']; ?>" class="btn btn-sm btn-danger btn-hapus"><i class="fa fa-trash-alt"></i> </a>
                              </td>
                            </tr>
                            <?php $i++; ?>
                          <?php endforeach; ?>
                        <?php else : ?>
                          <td colspan="6">
                            <h1 class="text-gray-500 text-center">Data tidak ada</h1>
                          </td>
                        <?php endif; ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End of Main Content -->

          <!-- Button trigger modal -->

          <!-- Modal Ubah-->
          <div class=" modal fade" id="modalUbah">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Ubah <?= $judul; ?></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="<?= base_url('masuk/ubah'); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group mb-0">
                      <label for="no_surat"></label>
                      <input type="text" name="no_surat" id="no_surat" class="form-control" placeholder="Masukkan No Surat">
                    </div>
                    <div class="form-group mb-0">
                      <label for="surat_kepada"></label>
                      <input type="text" name="surat_kepada" id="surat_kepada" class="form-control" placeholder="Masukkan Surat Kepada">
                    </div>
                    <div class="form-group mb-0">
                      <label for="tgl_diterima"></label>
                      <input type="date" name="tgl_diterima" id="tgl_diterima" class="form-control" placeholder="">
                    </div>
                    <div class="form-group mb-0">
                      <label for="perihal"></label>
                      <input type="text" name="perihal" id="perihal" class="form-control" placeholder="Masukkan Perihal">
                    </div>
                    <div class="form-group mb-0">
                      <label for="surat_dari"></label>
                      <input type="text" name="surat_dari" id="surat_dari" class="form-control" placeholder="Masukkan Surat Dari">
                    </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="submit" name="ubah" method="post" class="btn btn-primary">Ubah Data</button>
                </div>
                </form>
              </div>
            </div>
          </div>