<link rel="stylesheet" href="<?php echo base_url('assets/backend/js/jvectormap/jquery-jvectormap-1.2.2.css'); ?>">
<link rel="stylesheet" href="<?php echo base_url('assets/backend/js/rickshaw/rickshaw.min.css'); ?>">
<!-- Bottom Scripts -->
<script src="<?php echo base_url('assets/backend/js/gsap/main-gsap.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/bootstrap.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/joinable.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/resizeable.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/neon-api.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jvectormap/jquery-jvectormap-1.2.2.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jvectormap/jquery-jvectormap-europe-merc-en.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jquery.sparkline.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/rickshaw/vendor/d3.v3.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/rickshaw/rickshaw.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/raphael-min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/morris.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/toastr.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/neon-chat.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/neon-custom.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/neon-demo.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jquery.dataTables.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/datatables/TableTools.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/dataTables.bootstrap.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/datatables/jquery.dataTables.columnFilter.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/datatables/lodash.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/datatables/responsive/js/datatables.responsive.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/select2/select2.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/custom-datatable.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/jquery.nestable.js'); ?>"></script>
<!-- <script src="<?php echo base_url('assets/backend/css/font-icons/simple-line-icon/js/icons-lte.js'); ?>"></script> -->
<script src="<?php echo base_url('assets/backend/js/selectboxit/jquery.selectBoxIt.min.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/wysihtml5/wysihtml5-0.4.0pre.min.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/wysihtml5/bootstrap-wysihtml5.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/fileinput.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/daterangepicker/moment.min.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/daterangepicker/daterangepicker.js');?>"></script>
<script src="<?php echo base_url('assets/backend/js/font-awesome-icon-picker/fontawesome-four-iconpicker.min.js');?>" charset="utf-8"></script>
<!-- <script src="<?php echo base_url('assets/backend/js/font-awesome-icon-picker/fontawesome-iconpicker.min.js');?>" charset="utf-8"></script> -->
<script src="<?php echo base_url('assets/backend/js/bootstrap-tagsinput.min.js'); ?>"></script>
<script src="<?php echo base_url('assets/backend/js/bootstrap-timepicker.min.js');?>"></script>

<script>
$(document).ready(function() {
    $(".html5editor").each(function(){$(this).wysihtml5();});
});
$(function() {
   $('.icon-picker').iconpicker();
 });
</script>
<!-- SHOW TOASTR NOTIFIVATION -->
<?php if ($this->session->flashdata('flash_message') != ""):?>

<script type="text/javascript">
	toastr.success('<?php echo $this->session->flashdata("flash_message");?>');
</script>

<?php endif;?>

<?php if ($this->session->flashdata('error_message') != ""):?>

<script type="text/javascript">
	toastr.error('<?php echo $this->session->flashdata("error_message");?>');
</script>

<?php endif;?>
