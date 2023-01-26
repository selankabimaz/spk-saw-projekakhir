$(document).on('click', '#btn-edit', function(){
  $('.modal-body #id-siswa').val($(this).data('id'));
  $('.modal-body #nisn').val($(this).data('nisn'));
  $('.modal-body #nama').val($(this).data('nama'));
});

$(document).on('click', '#btn-edit', function(){
  $('.modal-body #id-laporan').val($(this).data('id'));
  $('.modal-body #gambar').val($(this).data('gambar'));
  $('.modal-body #nik').val($(this).data('nik'));
  $('.modal-body #nama').val($(this).data('nama'));
  $('.modal-body #laporan').val($(this).data('laporan'));
});

//sweet alert 2
const swal = $('.swal').data('swal');
if(swal){
  Swal.fire({
    title: 'Berhasil Login',
    text: swal,
    icon: 'success'
  })
}

$(document).on('click','.btn-hapus', function (e){
//hentikan aksi default
e.preventDefault();
const href = $(this).attr('href');

Swal.fire({
  title: 'Are you sure?',
  text: "You won't be able to revert this!",
  icon: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#3085d6',
  cancelButtonColor: '#d33',
  confirmButtonText: 'Yes, delete it!'
}).then((result) => {
  if (result.value) {
      document.location.href= href;
  }
})
})

//dropify (image preview)
$(document).ready(function (){
  $('.dropify').dropify();
});