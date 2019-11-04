<div class="row">
  <div class="col-md-10 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Personal</li>
        <!-- <li class="breadcrumb-item" aria-current="page">Data <?=ucfirst($title)?></li> -->
        <li class="breadcrumb-item active" aria-current="page">Form <?=ucfirst($button)?></li>
      </ol>
    </nav>
  </div>



  <form action="<?=$action?>" id="form" autocomplete="off">
  <div class="col-md-10 grid-margin mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Data Personal</h5>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">NIK</label><span style="font-size:11px" class="text-primary pl-2">*</span>
                  <input type="text" class="form-control" id="nik" name="nik" placeholder="NIK" value="<?=$nik?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Nama</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai nama pada buku rekening</span>
                  <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama" value="<?=$nama?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Tempat Lahir</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas</span>
                  <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Tempat lahir" value="<?=$tempat_lahir?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group calendarss">
                  <label for="">Tanggal Lahir</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas</span>
                    <input type="text" class="form-control tanggal" id="tanggal_lahir" readonly name="tanggal_lahir" placeholder="Tanggal Lahir" value="<?=$tanggal_lahir?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Telepon 1</label><span style="font-size:11px" class="text-primary pl-2">* No.telepon yang aktif</span>
                  <input type="text" class="form-control" id="telepon1" name="telepon1" placeholder="Telepon 1"value="<?=$telepon1?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Telepon 2</label>
                  <input type="text" class="form-control" id="telepon2" name="telepon2" placeholder="Telepon 2"value="<?=$telepon2?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Email</label><span style="font-size:11px" class="text-primary pl-2">* Email harus aktif</span>
                  <input type="text" class="form-control" id="email" name="email" placeholder="Email" value="<?=$email?>">
                </div>
              </div>

              <div class="col-sm-6">
                <div class="form-group">
                  <label for="">Pekerjaan</label>
                  <input type="text" class="form-control" id="pekerjaan" name="pekerjaan" placeholder="Pekerjaan" value="<?=$pekerjaan?>">
                </div>
              </div>

              <div class="col-sm-12">
                <div class="form-group">
                  <label for="">Alamat</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas/domisili</span>
                  <textarea class="form-control" id="alamat" name="alamat" placeholder="Alamat" rows="3" cols="80"><?=$alamat?></textarea>
                </div>
              </div>

            </div>

      </div>
    </div>
  </div>


  <div class="col-md-10 grid-margin mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Data Ahli Waris</h5>

        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Nama</label>
              <input type="text" class="form-control" id="nama_ahli_waris" name="nama_ahli_waris" placeholder="Nama" value="<?=$waris_nama?>">
            </div>
          </div>

          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Hubungan Keluarga</label>
              <input type="text" class="form-control" id="hubungan_ahli_waris" name="hubungan_ahli_waris" placeholder="Hubungan Keluarga" value="<?=$waris_hubungan?>">
            </div>
          </div>

          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Telepon</label>
              <input type="text" class="form-control" id="telepon_ahli_waris" name="telepon_ahli_waris" placeholder="Telepon" value="<?=$waris_telepon?>">
            </div>
          </div>

          <div class="col-sm-12">
            <div class="form-group">
              <label for="">Alamat</label>
              <textarea class="form-control" id="alamat_ahli_waris" name="alamat_ahli_waris" placeholder="Alamat" rows="3" cols="80"><?=$waris_alamat?></textarea>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-md-10 grid-margin mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Data Rekening</h5>

        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Nama Rekening</label>
              <input type="text" class="form-control" id="nama_rekening" name="nama_rekening" placeholder="Nama Rekening" value="<?=$nama_rekening?>">
            </div>
          </div>

          <div class="col-sm-6">
            <div class="form-group">
              <label for="">No.rekening</label>
              <input type="text" class="form-control" id="no_rekening" name="no_rekening" placeholder="No.Rekening" value="<?=$no_rekening?>">
            </div>
          </div>


          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Bank</label>
              <input type="text" class="form-control" id="bank" name="bank" placeholder="Bank" value="<?=$bank?>">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div class="col-md-10 grid-margin mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Data account</h5>

        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Username</label><span style="font-size:11px" class="text-primary pl-2">*</span>
                <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="<?=$username?>">
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div class="col-md-10 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Status</h5>

        <div class="row">
          <div class="col-sm-6">
            <div class="form-group">
              <label for="">Status Personal</label><span style="font-size:11px" class="text-primary pl-2">*</span>
              <?php if (profile("id_level")==1): ?>
              <select class="form-control" id="status_level" name="status_level">
                <option value="">-- pilih --</option>
                  <option data-op="1" value="2">CO FOUNDER</option>
                <option data-op="2" value="">AGENCY</option>
                <option data-op="3" value="4">MEMBER</option>
              </select>
              <?php else: ?>
                <input type="text" class="form-control" id="status_level" readonly name="status_level" value="MEMBER">
            <?php endif; ?>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div class="col-md-10 mx-auto mt-2">
      <button type="submit" name="button" id="submit" class="btn btn-primary btn-sm btn-form-member"> Tambahkan</button>
  </div>


</form>

</div>


<script type="text/javascript">
$(document).ready(function(){
  $('.tanggal').datepicker({
    format: 'yyyy-mm-dd',
    autoclose: true
  });
});

$("#form").submit(function(e){
e.preventDefault();
var me = $(this);
$("#submit").prop('disabled',true).html('<div class="spinner-border spinner-border-sm text-white"></div> Loading...');
$.ajax({
      url             : me.attr('action'),
      type            : 'post',
      data            :  new FormData(this),
      contentType     : false,
      cache           : false,
      dataType        : 'JSON',
      processData     :false,
      success:function(json){
        if (json.success==true) {
            $.toast({
              text: json.alert,
              showHideTransition: 'slide',
              icon: 'success',
              loaderBg: '#f96868',
              position: 'bottom-right',
              afterHidden: function () {
                  location.href=json.url;
              }
            });
        }else {
          $("#submit").prop('disabled',false)
                      .html('Tambahkan');
          $.each(json.alert, function(key, value) {
            var element = $('#' + key);
            $(element)
            .closest('.form-group')
            .find('.text-danger').remove();
            $(element).after(value);
          });
        }
      }
});
});
</script>
