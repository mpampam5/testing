<style media="screen">
  .table-detail tr th,td{
    text-transform: uppercase;
  }
</style>

<div class="row">
  <div class="col-md-8 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Account</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-8 mx-auto mb-2">
    <div class="card">
      <div class="card-body">
            <h5 class="card-title">Data Pribadi</h5>
            <table class="table-detail">

              <tr>
                <th>Status Level</th>
                <td>: <span class="badge badge-primary"><?=strtoupper($row->level)?></span></td>
              </tr>

              <tr>
                <th>ID.REG</th>
                <td class="text-primary">: <?=$row->kode_person?></td>
              </tr>

              <tr>
                <th>Username</th>
                <td>: <?=$row->username?></td>
              </tr>

              <tr>
                <th>Nik</th>
                <td>: <?=$row->nik?></td>
              </tr>

              <tr>
                <th>Nama</th>
                <td>: <?=$row->nama?></td>
              </tr>

              <tr>
                <th>Tempat, Tanggal lahir</th>
                <td>: <?=ucfirst($row->tempat_lahir)?>, <?=date_indo($row->tanggal_lahir)?></td>
              </tr>

              <tr>
                <th>Telepon 1</th>
                <td>: <?=$row->telepon1?></td>
              </tr>

              <tr>
                <th>Telepon 2</th>
                <td>: <?=$row->telepon2?></td>
              </tr>

              <tr>
                <th>Email</th>
                <td>: <?=$row->email?></td>
              </tr>

              <tr>
                <th>Pekerjaan</th>
                <td>: <?=$row->pekerjaan?></td>
              </tr>

              <tr>
                <th>Alamat</th>
                <td>: <?=$row->alamat?></td>
              </tr>

            </table>

      </div>
    </div>
  </div>




  <div class="col-md-8 mx-auto mb-2">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Data Ahli Waris</h5>
        <table class="table-detail">
          <tr>
            <th>Nama</th>
            <td>: <?=$row->waris_nama?></td>
          </tr>

          <tr>
            <th>Hubungan Keluarga</th>
            <td>: <?=$row->waris_hubungan?></td>
          </tr>


          <tr>
            <th>Telepon</th>
            <td>: <?=$row->waris_telepon?></td>
          </tr>

          <tr>
            <th>Alamat</th>
            <td>: <?=$row->waris_alamat?></td>
          </tr>

        </table>
      </div>
    </div>
  </div>


  <div class="col-md-8 mx-auto mb-2">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Data Rekening</h5>
        <table class="table-detail">
          <tr>
            <th>Nama Rekening</th>
            <td>: <?=$row->nama_rekening?></td>
          </tr>

          <tr>
            <th>No. Rekening</th>
            <td>: <?=$row->no_rekening?></td>
          </tr>

          <tr>
            <th>Bank</th>
            <td>: <?=strtoupper($row->bank)?></td>
          </tr>
        </table>
      </div>
    </div>
  </div>

  <div class="col-md-8 mx-auto mb-2">
        <a href="<?=site_url("backend/account/ubah_data")?>" class="badge badge-sm badge-warning text-white"><i class="ti-pencil-alt"></i> UPDATE DATA</a>
        <a id="rst_pwd" href="<?=site_url("backend/account/reset_password")?>" class="badge badge-sm badge-warning text-white"  id="reset_password"> <i class="ti-key"></i> UPDATE PASSWORD</a>
  </div>


  <div class="col-md-8 mx-auto mb-2">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">File Berkas</h5>
        <table class="table-detail">
          <tr>
            <th width="200">Foto</th>
            <td>
              <a href="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_foto?>" data-fancybox="gallery" class="badge badge-primary"><i class="ti-zoom-in"></i> Lihat</a>
            </td>
          </tr>

          <tr>
            <th>File KTP</th>
            <td>
              <a href="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_ktp?>" data-fancybox="gallery" class="badge badge-primary"><i class="ti-zoom-in"></i> Lihat</a>
            </td>
          </tr>

          <tr>
            <th>File Buku Rekening</th>
            <td>
              <a href="<?=base_url()."/_template/files/".enc_uri($row->kode_person)."/".$row->file_foto_rek?>" data-fancybox="gallery" class="badge badge-primary"><i class="ti-zoom-in"></i> Lihat</a>
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>




  <div class="col-md-8 mx-auto mb-2">
        <a href="<?=site_url("backend/account/berkas")?>" class="badge badge-sm badge-warning text-white"><i class="ti-pencil-alt"></i> UPDATE FILE BERKAS</a>
  </div>




</div>


<script type="text/javascript">
$(document).on("click","#rst_pwd",function(e){
  e.preventDefault();
  $('.modal-dialog').removeClass('modal-lg')
                    .removeClass('modal-sm')
                    .addClass('modal-md');
  $("#modalTitle").text('Form Reset Password');
  $('#modalContent').load($(this).attr('href'));
  $("#modalGue").modal('show');
});
</script>
