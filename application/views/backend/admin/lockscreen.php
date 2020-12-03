<?php
    $user_details = $this->db->get_where('users', array('id' => $this->session->userdata('user_id')))->row_array();
?>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>Webarch - Responsive Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN PLUGIN CSS -->
    <link href="<?php echo base_url().'assets/backend/plugins/font-awesome/css/font-awesome.css'; ?>" rel="stylesheet" type="text/css" />
    <!-- END PLUGIN CSS -->
    <!-- BEGIN PLUGIN CSS -->
    <link href="<?php echo base_url().'assets/backend/plugins/pace/pace-theme-flash.css'; ?>" rel="stylesheet" type="text/css" media="screen" />
    <link href="<?php echo base_url().'assets/backend/plugins/bootstrapv3/css/bootstrap.min.css'; ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url().'assets/backend/plugins/bootstrapv3/css/bootstrap-theme.min.css'; ?>" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="<?php echo base_url().'assets/backend/plugins/animate.min.css'; ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url().'assets/backend/plugins/jquery-scrollbar/jquery.scrollbar.css'; ?>" rel="stylesheet" type="text/css" />
    <!-- END PLUGIN CSS -->
    <!-- BEGIN CORE CSS FRAMEWORK -->
    <link href="<?php echo base_url().'assets/backend/webarch/css/webarch.css'; ?>" rel="stylesheet" type="text/css" />
    <!-- END CORE CSS FRAMEWORK -->
  </head>
  <!-- END HEAD -->
  <!-- BEGIN BODY -->
  <body class="error-body no-top">
    <div class="container">
      <div class="lockscreen-wrapper animated  flipInX">
        <div class="row ">
          <div class="col-md-8 col-md-offset-4 col-sm-6 col-sm-offset-4 col-xs-offset-2">
            <div class="profile-wrapper">
              <img width="69" height="69" data-src-retina="<?php echo base_url().'uploads/user_image/'.$user_details['photo']; ?>" data-src="<?php echo base_url().'uploads/user_image/'.$user_details['photo']; ?>" src="<?php echo base_url().'uploads/user_image/'.$user_details['photo']; ?>" alt="">
            </div>

            <form class="user-form" action="<?php echo site_url('admin/lockscreen/unlock'); ?>" method="post">
              <h2 class="user"><?php echo $user_details['first_name']; ?> <span class="semi-bold"><?php echo $user_details['last_name']; ?></span></h2>
              <input type="password" name="password" placeholder="Password" required>
              <button type="submit" class="btn btn-primary "><i class="fa fa-unlock"></i></button>
            </form>
          </div>
        </div>
      </div>
      <div id="push"></div>
    </div>
    <!-- END CONTAINER -->
    <script src="<?php echo base_url().'assets/backend/plugins/pace/pace.min.js'; ?>" type="text/javascript"></script>
    <!-- BEGIN JS DEPENDECENCIES-->
    <script src="<?php echo base_url().'assets/backend/plugins/jquery/jquery-1.11.3.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/bootstrapv3/js/bootstrap.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/jquery-block-ui/jqueryblockui.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/jquery-unveil/jquery.unveil.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/jquery-scrollbar/jquery.scrollbar.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/jquery-numberAnimate/jquery.animateNumbers.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/jquery-validation/js/jquery.validate.min.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/plugins/bootstrap-select2/select2.min.js'; ?>" type="text/javascript"></script>
    <!-- END CORE JS DEPENDECENCIES-->
    <!-- BEGIN CORE TEMPLATE JS -->
    <script src="<?php echo base_url().'assets/backend/webarch/js/webarch.js'; ?>" type="text/javascript"></script>
    <script src="<?php echo base_url().'assets/backend/js/chat.js'; ?>" type="text/javascript"></script>
    <!-- END CORE TEMPLATE JS ->
  </body>
</html>
