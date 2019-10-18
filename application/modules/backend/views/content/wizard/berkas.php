<style media="screen">
.form-group label.label-title {
font-size: 13px;
line-height: 1.4rem;
vertical-align: top;
margin-bottom: 1px;
font-weight: 600;
}


.form-group label.error {
margin-bottom: 0;
}

.font-form{
margin-top: 3px;
font-size: 9px;
display: block;
line-height: 10px;
}
</style>

<div class="row">
  <div class="col-md-7 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title"> Berkas</h5>
        <form class="" action="<?=$action?>" id="form">

        <div class="col-sm-12">
          <div id="data-info"></div>
          <div class="form-group" id="foto">
            <label class="label-title" id="foto_personal">FOTO PERSONAL</label>
            <input type="file" name="foto_personal" id="upload-foto" class="file-upload-default" accept="image/JPEG">
            <div class="input-group col-xs-12">
              <input type="text" name="foto_personal" id="image-foto" class="form-control file-upload-info" value="<?=$row->file_foto?>" readonly placeholder="Upload File">
              <span class="input-group-append">
                <button class="file-upload-browse btn btn-primary" id="btn-upload-foto" type="button">Upload</button>
              </span>
            </div>
            <?php if ($row->file_foto!=""): ?>
                <p class="font-form">

                  <a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'.$row->file_foto?>" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>
                </p>
              <?php else: ?>
                <p class="font-form">Foto Wajah harus jelas (Format jpg & max size 1mb)</p>
            <?php endif; ?>
          </div>
        </div>


        <div class="col-sm-12">
          <div class="form-group" id="ktp">
            <label class="label-title" id="foto_ktp">FILE KTP</label>
            <input type="file" name="foto_ktp" id="upload-ktp" class="file-upload-default" accept="image/JPEG">
            <div class="input-group col-xs-12">
              <input type="text" name="foto_ktp" id="image-ktp" class="form-control file-upload-info" value="<?=$row->file_ktp?>" readonly placeholder="Upload File">
              <span class="input-group-append">
                <button class="file-upload-browse btn btn-primary" id="btn-upload-ktp" type="button">Upload</button>
              </span>
            </div>
            <?php if ($row->file_ktp!=""): ?>
              <p class="font-form">
                <a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'.$row->file_ktp?>" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>
              </p>
              <?php else: ?>
                <p class="font-form">File KTP harus jelas (Format jpg & max size 1mb)</p>
            <?php endif; ?>
          </div>
        </div>


        <div class="col-sm-12">
          <div id="data-info"></div>
          <div class="form-group" id="rek">
            <label class="label-title" id="foto_rek">FILE BUKU REKENING</label>
            <input type="file" name="foto_rek" id="upload-rek" class="file-upload-default" accept="image/JPEG">
            <div class="input-group col-xs-12">
              <input type="text" name="foto_rek" id="image-rek" class="form-control file-upload-info" value="<?=$row->file_foto_rek?>" readonly placeholder="Upload Image">
              <span class="input-group-append">
                <button class="file-upload-browse btn btn-primary" id="btn-upload-rek" type="button">Upload</button>
              </span>
            </div>
            <?php if ($row->file_foto_rek!=""): ?>
              <p class="font-form">
                <a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'.$row->file_foto_rek?>" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>
              </p>
              <?php else: ?>
                <p class="font-form">File KK harus jelas (Format jpg & max size 1mb)</p>
            <?php endif; ?>
          </div>
        </div>


          <div class="col-sm-12 mx-auto text-center">
            <a href="<?=site_url("backend/wizard")?>" class="btn btn-sm btn-secondary text-white"> Sebelumnya</a>
            <button type="submit" id="submit" name="submit" class="btn btn-primary btn-sm"> Simpan & Lanjutkan</button>
          </div>

      </form>

      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
$(function () {
      var fileupload = $("#upload-foto");
      var button = $("#btn-upload-foto");
      button.click(function () {
          fileupload.click();
      });
      fileupload.change(function () {
          var fileName = $(this).val().split('\\')[$(this).val().split('\\').length - 1];
          // $("#data-info").text(fileName);

          var file_data = $('#upload-foto').prop('files')[0];
          var form_data = new FormData();
          $("#image-foto").val(fileName);
          $("#btn-upload-foto").html('<div class="spinner-border spinner-border-sm text-white"></div>');

          form_data.append('foto_personal', file_data);

          $.ajax({
              url: '<?=site_url("backend/wizard/do_upload")?>',
              dataType: 'json',
              cache: false,
              contentType: false,
              processData: false,
              data: form_data,
              type: 'post',
              success: function(json){
                if (json.success==true) {
                  button.html('Upload');
                  $("#image-foto").val(json.file_name);
                  $("#foto .font-form").html('<a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'?>'+json.file_name+'" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>');
                  $("#foto_personal")
                  .closest('.form-group')
                  .find('.error').remove();
                  $.toast({
                    text: json.alert,
                    showHideTransition: 'slide',
                    icon: json.header_alert,
                    loaderBg: '#f96868',
                    position: 'top-center',
                  });

                }else {
                  button.html('Upload');
                  $("#image-foto").val("");
                  $("#foto .font-form").text("Foto Wajah harus jelas (Format jpg & max size 1mb)");
                  $("#foto_personal")
                  .closest('.form-group')
                  .find('.error').remove();
                  $.toast({
                    text: json.alert,
                    showHideTransition: 'slide',
                    icon: json.header_alert,
                    loaderBg: '#f96868',
                    position: 'top-center',
                  });
                }
              }
          });

      });
  });








  $(function () {
            var fileupload = $("#upload-ktp");
            var button = $("#btn-upload-ktp");
            button.click(function () {
                fileupload.click();
            });
            fileupload.change(function () {
                var fileName = $(this).val().split('\\')[$(this).val().split('\\').length - 1];
                // $("#data-info").text(fileName);

                var file_data = $('#upload-ktp').prop('files')[0];
                var form_data = new FormData();
                $("#image-ktp").val(fileName);
                $("#btn-upload-ktp").html('<div class="spinner-border spinner-border-sm text-white"></div>');

                form_data.append('foto_ktp', file_data);

                $.ajax({
                    url: '<?=site_url("backend/wizard/do_upload_ktp")?>',
                    dataType: 'json',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: form_data,
                    type: 'post',
                    success: function(json){
                      if (json.success==true) {
                        button.html('Upload');
                        $("#image-ktp").val(json.file_name);
                        $("#ktp .font-form").html('<a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'?>'+json.file_name+'" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>');
                        $("#foto_ktp")
                        .closest('.form-group')
                        .find('.error').remove();
                        $.toast({
                          text: json.alert,
                          showHideTransition: 'slide',
                          icon: json.header_alert,
                          loaderBg: '#f96868',
                          position: 'top-center',
                        });

                      }else {
                        button.html('Upload');
                        $("#image-ktp").val("");
                        $("#ktp .font-form").text("File KK harus jelas (Format jpg & max size 1mb)");
                        $("#foto_ktp")
                        .closest('.form-group')
                        .find('.error').remove();
                        $.toast({
                          text: json.alert,
                          showHideTransition: 'slide',
                          icon: json.header_alert,
                          loaderBg: '#f96868',
                          position: 'top-center',
                        });
                      }
                    }
                });

            });
        });








        $(function () {
                var fileupload = $("#upload-rek");
                var button = $("#btn-upload-rek");
                button.click(function () {
                    fileupload.click();
                });
                fileupload.change(function () {
                    var fileName = $(this).val().split('\\')[$(this).val().split('\\').length - 1];
                    // $("#data-info").text(fileName);

                    var file_data = $('#upload-rek').prop('files')[0];
                    var form_data = new FormData();
                    $("#image-rek").val(fileName);
                    $("#btn-upload-rek").html('<div class="spinner-border spinner-border-sm text-white"></div>');

                    form_data.append('foto_rek', file_data);

                    $.ajax({
                        url: '<?=site_url("backend/wizard/do_upload_rek")?>',
                        dataType: 'json',
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: form_data,
                        type: 'post',
                        success: function(json){
                          if (json.success==true) {
                            button.html('Upload');
                            $("#image-rek").val(json.file_name);
                            $("#rek .font-form").html('<a href="<?=base_url()."_template/files/".enc_uri($row->kode_person).'/'?>'+json.file_name+'" data-fancybox="gallery" class="badge badge-success"><i class="fa fa-file"></i> Lihat file</a>');
                            $("#foto_rek")
                            .closest('.form-group')
                            .find('.error').remove();
                            $.toast({
                              text: json.alert,
                              showHideTransition: 'slide',
                              icon: json.header_alert,
                              loaderBg: '#f96868',
                              position: 'top-center',
                            });

                          }else {
                            button.html('Upload');
                            $("#image-rek").val("");
                            $("#rek .font-form").text("File KK harus jelas (Format jpg & max size 1mb)");
                            $("#foto_rek")
                            .closest('.form-group')
                            .find('.error').remove();
                            $.toast({
                              text: json.alert,
                              showHideTransition: 'slide',
                              icon: json.header_alert,
                              loaderBg: '#f96868',
                              position: 'top-center',
                            });
                          }
                        }
                    });

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


<?php
  $filename = base_url()."_template/files/".enc_uri(profile("kode_person"))."/".$row->file_foto;
  echo "$filename";

 ?>
