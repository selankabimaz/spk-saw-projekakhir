<?php

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attacthment; filename=Data Surat Masuk.xls");
?>

<html>

<body>
  <table border="1">
    <thead>
      <tr>
        <th>No Surat</th>
        <th>Tanggal Surat</th>
        <th>Surat Dari</th>
        <th>Surat Kepada</th>
        <th>Perihal</th>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1;  ?>
      <?php foreach ($masuk->getResultArray() as $row) : ?>
        <tr>
          <td><?= $row['no_surat']; ?></td>
          <td><?= $row['tgl_diterima']; ?></td>
          <td><?= $row['surat_dari']; ?></td>
          <td><?= $row['surat_kepada']; ?></td>
          <td><?= $row['perihal']; ?></td>
        </tr>
        <?php $i++; ?>
      <?php endforeach; ?>
    </tbody>
  </table>
</body>

</html>