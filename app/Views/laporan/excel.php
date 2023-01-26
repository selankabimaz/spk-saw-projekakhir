<?php

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attacthment; filename=Data Product.xls");
?>

<html>

<body>
  <table border="1">
    <thead>
      <tr>
        <th>No</th>
        <th>Nama</th>
        <th>Tanggal</th>
        <th>Harga</th>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1;  ?>
      <?php foreach ($transaction->getResultArray() as $row) : ?>
        <tr>
          <td><?= $row['no_transaksi']; ?></td>
          <td><?= $row['nama_produk']; ?></td>
          <td><?= $row['date']; ?></td>
          <th><?= $row['harga']; ?></th>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
    </tbody>
  </table>
</body>

</html>