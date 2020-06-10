<link rel="stylesheet" href="<?php echo base_url('assets/loader/style3.css') ?>">
<div id="loading" style="display:none;">
<div id="loader-wrapper">
<h2>Loading...</h2><br>
<div id="loader"></div>
<div class="loader-section section-left"></div>
<div class="loader-section section-right"></div>
</div>
</div>

<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view("user/_partials/head.php") ?>
</head>
<body id="page-top">

<?php $this->load->view("user/_partials/navbar.php") ?>

<div id="wrapper">

	<?php $this->load->view("user/_partials/sidebar.php") ?>
	<div id="content-wrapper">

		<div class="container-fluid">
		<?php $this->load->view("user/IsiKonsultasiView.php") ?>

		</div>
		<!-- /.container-fluid -->

		<!-- Sticky Footer -->
		<?php $this->load->view("user/_partials/footer.php") ?>

	</div>
	<!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<?php $this->load->view("user/_partials/scrolltop.php") ?>
<?php $this->load->view("user/_partials/modal.php") ?>
<?php $this->load->view("user/_partials/js.php") ?>

</body>
</html>

<script type="text/javascript" src="<?php echo base_url('assets/loader/jquery-1.2.3.min.js') ?>"></script>	
    <script type="text/javascript">
	$(document).ready(function(){    
   
   //Callback handler for form submit event
	 $("#myform").submit(function(e)
	 {
   
	 var formObj = $(this);
	 var formURL = formObj.attr("action");
	 var formData = new FormData(this);    
 
	 $('#content-wrapper').ajaxStart(function(){
			 $(this).fadeOut();
		 });

		 $('#loading').ajaxStart(function(){
			 $(this).fadeIn();
		 });
		 
	 $.ajax({
		 url: formURL,
		 type: 'POST',
		 data:  formData,        
		 contentType: false,
		 cache: false,
		 processData:false,
		 beforeSend: function (){
					$("#loading").show(1000).html("<?php echo base_url('assets/loader/bird_loader.gif') ?>");                   					
					},
		 success: function(data, textStatus, jqXHR){
				 $("#result").html(data);
				 $("#loading").hide();
		 },
			 error: function(jqXHR, textStatus, errorThrown){
	  }         
	 });
		 e.preventDefault(); //Prevent Default action.
		 e.unbind();
	 });    
 
  });
    </script>    