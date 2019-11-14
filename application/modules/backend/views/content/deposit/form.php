<style media="screen">
  .table-dp tr td{
    padding: 2px;
  }
</style>

<div class="row">
  <div class="col-md-7 mx-auto">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-black">
        <li class="breadcrumb-item" aria-current="page">Deposit</li>
        <li class="breadcrumb-item active" aria-current="page">Add</li>
      </ol>
    </nav>
  </div>

  <div class="col-md-7 mx-auto">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title border-bottom">FORM DEPOSIT</h5>
          <?php if (setting_financial("deposit_status")=="on"): ?>
              <table class="table-dp mb-2">
                <?php if (setting_financial("deposit_min")!=0): ?>
                <tr>
                  <td>* min-deposit</td>
                  <td>: Rp.<?=format_rupiah(setting_financial("deposit_min"))?></td>
                </tr>
              <?php endif; ?>

              <?php if (setting_financial("deposit_max")!=0): ?>
                <tr>
                  <td>* max-deposit</td>
                  <td>: Rp.<?=format_rupiah(setting_financial("deposit_max"))?></td>
                </tr>
              <?php endif; ?>
              </table>
              <form id="form" action="<?=$action?>" autocomplete="off">
                <div class="form-group">
                  <label id="amount">Amount (Rp)</label>
                  <input type="text" class="form-control rupiah" name="amount" onkeyup="myInfoadmin()" placeholder="Amount">
                  <span class="text-primary mt-1" style="font-size:12px" id="info-admin"></span>
                </div>

                <div class="form-group">
                  <label id="metode_pembayaran">Metode Pembayaran</label>
                  <select class="form-control" name="metode_pembayaran">
                    <option value="">-- pilih --</option>
                    <?php $qry = $this->db->get_where("setting_rekening",["is_delete"=>"0"]);?>
                     <?php foreach ($qry->result() as $rek): ?>
                       <option value="<?=$rek->id_rekening?>"><?=$rek->bank?> | <?=$rek->nama_rekening?> | <?=$rek->no_rekening?></option>
                     <?php endforeach; ?>
                  </select>
                </div>

                <button type="submit" id="submit" name="submit" class="btn btn-primary btn-md btn-block btn-icon-text"><i class="ti-wallet btn-icon-prepend"></i> Deposit</button>
              </form>
          <?php else: ?>
            <p class="text-center mt-30px" style="font-size:13px;color:#5e5e5e;">Mohon maaf, saat ini form deposit di tutup. Info lebih lanjut hubungi admin.</p>
          <?php endif; ?>




      </div>
    </div>
  </div>


</div>


<script type="text/javascript">
$(document).ready(function(){
  $('.rupiah').mask('00.000.000.000', {reverse: true});
});


function myInfoadmin()
{
  var value = $('.rupiah').val();
      val = value.replace(/\./g, '');
      if (val >= 5000000) {
        $('#info-admin').hide().fadeIn(500).html("* Biaya administrasi berlaku Rp.<?=format_rupiah(setting_financial("biaya_admin"))?>");
      }else {
        $('#info-admin').fadeOut(500);
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
              icon: 'success',
              loaderBg: '#f96868',
              position: 'bottom-right',
              afterHidden: function () {
                  location.href=json.url;
              }
            });
        }else {
          $("#submit").prop('disabled',false)
                      .html('<i class="ti-wallet btn-icon-prepend"></i> Deposit');
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
