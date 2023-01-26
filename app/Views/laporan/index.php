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
              <div class="row">
                <div class="col">
                  <a href="/masuk/excel" class="btn btn-outline-success shadow float-right">Laporan Data Surat Masuk <i class="fa fa-file-excel"></i></a>
                </div>
                <div class="col">
                  <a href="/diposisi/excel" class="btn btn-outline-success shadow float-right">Laporan Data Diposisi <i class="fa fa-file-excel"></i></a>
                </div>
                <div class="col">
                  <a href="/keluar/excel" class="btn btn-outline-success shadow float-right">Laporan Data Surat Keluar <i class="fa fa-file-excel"></i></a>
                </div>
              </div>
            </div>
          </div>
          <!-- End of Main Content -->