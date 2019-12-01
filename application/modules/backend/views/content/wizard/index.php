<div class="row">
  <form action="<?=$action?>" id="form" autocomplete="off">
  <div class="col-md-8 mx-auto mb-2">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title"> Data Personal</h5>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">ID.REG</label>
                      <input type="text" class="form-control" readonly  value="<?=$row->kode_person?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Username</label>
                      <input type="text" class="form-control" readonly value="<?=$row->username?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">NIK</label><span style="font-size:11px" class="text-primary pl-2">*</span>
                      <input type="text" class="form-control" id="nik" name="nik" placeholder="NIK" value="<?=$row->nik?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Nama</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai nama pada buku rekening</span>
                      <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama" value="<?=$row->nama?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Tempat Lahir</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas</span>
                      <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Tempat lahir" value="<?=$row->tempat_lahir?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Tanggal Lahir</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas</span>
                      <input type="text" class="form-control tanggal" readonly id="tanggal_lahir" name="tanggal_lahir" placeholder="Tanggal Lahir" value="<?=$row->tanggal_lahir?>">
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label for="">Telepon 1</label><span style="font-size:11px" class="text-primary pl-2">* No.telepon yang aktif</span>
                      <input type="text" class="form-control" id="telepon1" name="telepon1" placeholder="Telepon 1"value="<?=$row->telepon1?>">
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label for="">Telepon 2</label>
                      <input type="text" class="form-control" id="telepon2" name="telepon2" placeholder="Telepon 2"value="<?=$row->telepon2?>">
                    </div>
                  </div>

                  <div class="col-sm-4">
                    <div class="form-group">
                      <label for="">Ukuran Baju</label>
                      <select class="form-control" id="ukuran_baju" name="ukuran_baju">
                        <option value="">-- pilih ukuran baju--</option>
                        <option <?=strtoupper($row->ukuran_baju)=="S" ? "selected" : ""?> value="S">S</option>
                        <option <?=strtoupper($row->ukuran_baju)=="M" ? "selected" : ""?> value="M">M</option>
                        <option <?=strtoupper($row->ukuran_baju)=="L" ? "selected" : ""?> value="L">L</option>
                        <option <?=strtoupper($row->ukuran_baju)=="XL" ? "selected" : ""?> value="XL">XL</option>
                        <option <?=strtoupper($row->ukuran_baju)=="XXL" ? "selected" : ""?> value="XXL">XXL</option>
                      </select>
                      <!-- <input type="text" class="form-control" id="ukuran_baju" name="ukuran_baju" placeholder="S,M,L,XL,XXL" value="<?=$row->ukuran_baju?>"> -->
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Email</label><span style="font-size:11px" class="text-primary pl-2">* Email harus aktif</span>
                      <input type="text" class="form-control" id="email" name="email" placeholder="Email" value="<?=$row->email?>">
                    </div>
                  </div>

                  <div class="col-sm-6">
                    <div class="form-group">
                      <label for="">Pekerjaan</label>
                      <input type="text" class="form-control" id="pekerjaan" name="pekerjaan" placeholder="Pekerjaan" value="<?=$row->pekerjaan?>">
                    </div>
                  </div>

                  <div class="col-sm-12">
                    <div class="form-group">
                      <label for="">Alamat</label><span style="font-size:11px" class="text-primary pl-2">* Sesuai kartu identitas/domisili</span>
                      <textarea class="form-control" id="alamat" name="alamat" placeholder="Alamat" rows="2" cols="80"><?=$row->alamat?></textarea>
                    </div>
                  </div>
                </div>

          </div>
        </div>
  </div>


  <div class="col-md-8 mb-2 mx-auto">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title"> Data Ahli Waris</h5>

          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label for="">Nama</label>
                <input type="text" class="form-control" id="nama_ahli_waris" name="nama_ahli_waris" placeholder="Nama" value="<?=$row->waris_nama?>">
              </div>
            </div>

            <div class="col-sm-4">
              <div class="form-group">
                <label for="">Hubungan Keluarga</label>
                <input type="text" class="form-control" id="hubungan_ahli_waris" name="hubungan_ahli_waris" placeholder="Hubungan Keluarga" value="<?=$row->waris_hubungan?>">
              </div>
            </div>

            <div class="col-sm-4">
              <div class="form-group">
                <label for="">Telepon</label>
                <input type="text" class="form-control" id="telepon_ahli_waris" name="telepon_ahli_waris" placeholder="Telepon" value="<?=$row->waris_telepon?>">
              </div>
            </div>

            <div class="col-sm-12">
              <div class="form-group">
                <label for="">Alamat</label>
                <textarea class="form-control" id="alamat_ahli_waris" name="alamat_ahli_waris" placeholder="Alamat" rows="2" cols="80"><?=$row->waris_alamat?></textarea>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-8 mb-2 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Data Rekening</h5>

        <div class="row">
          <div class="col-sm-4">
            <div class="form-group">
              <label for="">Nama Rekening</label>
              <input type="text" class="form-control" id="nama_rekening" name="nama_rekening" placeholder="Nama Rekening" value="<?=$row->nama_rekening?>">
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group">
              <label for="">No.rekening</label>
              <input type="text" class="form-control" id="no_rekening" name="no_rekening" placeholder="No.Rekening" value="<?=$row->no_rekening?>">
            </div>
          </div>


          <div class="col-sm-4">
            <div class="form-group">
              <label for="">Bank</label>
              <select class="form-control" id="bank" name="bank">
                <option value="">-- pilih BANK --</option>
                <option <?=strtoupper($row->bank)=="BRI" ?"selected":""?> value="BRI">BRI</option>
                <option <?=strtoupper($row->bank)=="BCA" ?"selected":""?> value="BCA">BCA</option>
                <option <?=strtoupper($row->bank)=="MANDIRI" ?"selected":""?> value="MANDIRI">MANDIRI</option>
              </select>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <input type="hidden" name="nik_lama" value="<?=$row->nik?>">
  <input type="hidden" name="email_lama" value="<?=$row->email?>">


      <div class="col-md-12 mx-auto text-center">
        <a href="<?=site_url("backend/dashboard")?>" class="btn btn-sm btn-secondary text-white"> Dashboard</a>
        <button type="submit" id="submit" name="submit" class="btn btn-primary btn-sm"> Simpan & Lanjutkan</button>
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
                      .html('Simpan & Lanjutkan');
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
