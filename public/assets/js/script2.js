$(document).on('click', '#btn-edit', function(){
  $('.modal-body #id-laporan').val($(this).data('id'));
  $('.modal-body #nik').val($(this).data('nik'));
  $('.modal-body #nama').val($(this).data('nama'));
  $('.modal-body #laporan').val($(this).data('laporan'));
})