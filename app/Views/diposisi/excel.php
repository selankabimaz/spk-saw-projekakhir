<?php

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attacthment; filename=Data Diposisi.xls");
?>

<html>

<body>
  <table border="1">
    <thead>
      <tr>
        <th>Nama Agenda</th>
        <th>No Surat</th>
        <th>Tanggal Surat</th>
        <th>Surat Dari</th>
        <th>Surat Kepada</th>
        <th>Perihal</th>
      </tr>
    </thead>
    <tbody>
      <?php $i = 1;  ?>
      <?php foreach ($diposisi->getResultArray() as $row) : ?>
        <tr>
          <td><?= $row['nama_agenda']; ?></td>
          <td><?= $row['no_surat']; ?></td>
          <td><?= $row['tgl_surat']; ?></td>
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