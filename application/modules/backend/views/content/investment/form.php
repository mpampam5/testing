<style media="screen">
  .table-dp tr td{
    padding: 2px;
  }
</style>

<div class="row">
  <div class="col-md-7 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Investment</li>
        <li class="breadcrumb-item active" aria-current="page">Send To Investment</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-7 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">FORM SENDT TO INVESTMENT</h5>
          <?php if (setting_financial("invesment_status")=="on"): ?>
              <table class="table-dp mb-2">
                <tr>
                  <td>* Balance</td>
                  <td>: Rp.<?=format_rupiah(balance())?></td>
                </tr>
                <?php if (setting_financial("invesment_min")!=0): ?>
                <tr>
                  <td>* min-investment</td>
                  <td>: Rp.<?=format_rupiah(setting_financial("invesment_min"))?></td>
                </tr>
              <?php endif; ?>

              <?php if (setting_financial("invesment_max")!=0): ?>
                <tr>
                  <td>* max-investment</td>
                  <td>: Rp.<?=format_rupiah(setting_financial("invesment_max"))?></td>
                </tr>
              <?php endif; ?>
              </table>
              <form id="form" action="<?=$action?>" autocomplete="off">
                <div class="form-group">
                  <label id="amount">Amount (Rp)</label>
                  <input type="text" class="form-control rupiah" name="amount" placeholder="Amount" value="<?=$value?>">
                </div>

                <div class="form-group">
                  <label id="alamat_kirim_spk">Alamat Pengiriman SPK</label>
                  <textarea class="form-control" name="alamat_kirim_spk" rows="3" cols="80" placeholder="Masukkan alamat pengiriman SPK"></textarea>
                </div>

                <div class="form-group">
                  <label id="password">Verifikasi Password</label>
                  <input type="password" class="form-control" name="password" placeholder="Masukkan Password Akun Anda">
                </div>


                <div class="form-group">
                  <label id="password">Syarat dan aturan</label>
                  <div style="max-height:300px;overflow:auto;padding:10px;border:1px solid #9a9a9a; background:#ececec">
                    <?php $this->load->view("content/investment/pasal") ?>
                    <div class="mt-5">
                      <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" onclick="terms_changed(this)">
                        “Saya telah membaca, mengerti dan setuju terhadap semua ketentuan yang tercantum dalam perjanjian ini “.
                      <i class="input-helper"></i></label>
                    </div>
                    </div>
                  </div>
                </div>

                <button type="submit" id="submit" name="submit" disabled class="btn btn-primary btn-md btn-block btn-icon-text"><i class="ti-files btn-icon-prepend"></i> Send To Investment</button>
              </form>
          <?php else: ?>
            <p class="text-center mt-30px" style="font-size:13px;color:#5e5e5e;">Mohon maaf, saat ini layanan di tutup, Layanan kembali di buka tanggal 1-5 & 15-20. Info lebih lanjut hubungi admin.</p>
          <?php endif; ?>




      </div>
    </div>
  </div>


</div>


<script type="text/javascript">
$(document).ready(function(){
  $('.rupiah').mask('00.000.000.000', {reverse: true});
});


function terms_changed(termsCheckBox){
    //If the checkbox has been checked
    if(termsCheckBox.checked){
        //Set the disabled property to FALSE and enable the button.
        document.getElementById("submit").disabled = false;
    } else{
        //Otherwise, disable the submit button.
        document.getElementById("submit").disabled = true;
    }
}

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
              icon: json.header_alert,
              loaderBg: '#f96868',
              position: 'bottom-right',
              afterHidden: function () {
                  location.href=json.url;
              }
            });
        }else {
          $("#submit").prop('disabled',false)
                      .html('<i class="ti-files btn-icon-prepend"></i> Send To Investment');
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
