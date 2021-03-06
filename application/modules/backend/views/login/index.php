
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name='robots' content='noindex, follow' />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

	<!-- Custom Theme files -->
	<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/css/vendor.bundle.base.css">
	<link href="<?=base_url()?>_template/front/login/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<?=base_url()?>_template/front/login/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->
<link rel="stylesheet" href="<?=base_url()?>_template/front/vendors/jquery-toast-plugin/jquery.toast.min.css">
	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->
	<!-- plugins:js -->
  <script src="<?=base_url()?>_template/front/vendors/js/vendor.bundle.base.js"></script>
</head>
<body>

<!-- main -->
<div class="w3layouts-main" style="background-image: url('<?=base_url()?>_template/<?=setting_system('background')?>');">
	<div class="bg-layer">
		<h1>Login</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form action="<?=$action?>" id="form" autocomplete="off">
					<div class="icon1">
						<span class="fa fa-user"></span>
						<input type="text" name="username" placeholder="Username"/>
					</div>

					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input type="password" class="password" name="password" placeholder="Password"/>
					</div>

					<div class="bottom">
						<button type="submit" class="btn" id="submit">Log In</button>
					</div>

					<!-- <div class="links">
						<p><a href="#" id="forgot">Forgot Password?</a></p>
						<div class="clear"></div>
					</div> -->
				</form>
			</div>

			<div id="username"></div>
			<div id="password"></div>

			<!-- <span class="text-danger">* username tidak boleh kosong</span>
			<span class="text-danger">* password tidak boleh kosong</span> -->

		</div>

		<!-- copyright -->
		<div class="copyright">
			<p>© <?=strtoupper(setting_system('title'))?> <?=date('Y')?>. All rights reserved</p>
		</div>
		<!-- //copyright -->
	</div>
</div>


<!-- <div class="modal fade" id="modalGue" tabindex="-1" role="dialog"  aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="modalTitle">Forgot Password</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						</div>
						<div class="modal-body" id="modalContent" style="max-height: 687px; overflow-y: auto;">
							Silahkan Hubungi admin. mungkin anda akan di berikan beberapa pertanyaan mengenai data pribadi anda.
						</div>
					</div>
				</div>
		</div> -->
<!-- //main -->
	<script src="<?=base_url()?>_template/front/vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
<script type="text/javascript">

// $(document).on("click","#forgot",function(e){
//     e.preventDefault();
//
//     $('.modal-dialog').removeClass('modal-lg')
//                       .removeClass('modal-sm')
//                       .addClass('modal-sm');
//     $("#modalGue").modal('show');
//   });


  $("#form").submit(function(e){
    e.preventDefault();
    var me = $(this);
    $('#submit').prop('disabled', true)
                 .html('<i class="fa fa-spinner fa-spin"></i>&nbsp;&nbsp;Loading...');
    $.ajax({
      url      : me.attr('action'),
      type     : 'POST',
      data     :me.serialize(),
      dataType : 'JSON',
      success:function(json){
       if (json.success==true) {
         if (json.valid==true) {
           window.location.href = json.url;
         }else {
           $(".password").val('');
           $('#submit').prop('disabled', false).text('Login');
           $.toast({
             // heading: 'Gagal Login',
             text: json.alert,
             showHideTransition: 'slide',
             icon: 'error',
             loaderBg: '#3e3e3e',
             position: 'bottom-left'
           });
           $('.text-danger').remove();
         }
       }else {
         $.each(json.alert, function(key, value) {
           var element = $('#' + key);
           $('#submit').prop('disabled', false).text('Login');
           $(element).find('.text-danger').remove();
           $(element).html(value);
         });
       }
     }
    });
  })
</script>
</body>
</html>
