<div class="row top-bar">
	<div class="col-md-12 clearfix hidden-xs">
		<h3 style="float:left; margin:0px;"><?php echo get_settings('system_name');?></h3>
		<a href="<?php echo base_url();?>" class="btn btn-default btn-icon" style="margin: 0px 15px;" target="_blank">
			<?php echo get_phrase('view_frontend'); ?> <i class="entypo-forward"></i>
		</a>
		<ul class="user-info pull-right pull-none-xsm" style="margin-top: -15px;">
			<!-- Profile Info -->
			<li class="profile-info pull-right dropdown"><!-- add class "pull-right" if you want to place this from right -->

				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<img src="<?php echo base_url('uploads/user_image/'.$this->session->userdata('user_id').'.jpg'); ?>" alt="" class="img-circle" width="44" />
					<?php
					$admin_details = $this->user_model->get_all_user($this->session->userdata('user_id'))->row_array();
					echo $admin_details['first_name'].' '.$admin_details['last_name'];
					?>
				</a>

				<ul class="dropdown-menu">

					<!-- Reverse Caret -->
					<li class="caret"></li>

					<!-- Profile sub-links -->
					<li>
						<a href="<?php echo site_url('admin/manage_profile'); ?>">
							<i class="entypo-user"></i>
							<?php echo get_phrase('edit_profile'); ?>
						</a>
					</li>

					<li>
						<a href="<?php echo site_url('login/logout'); ?>">
							<i class="entypo-logout left"></i>
							<?php echo get_phrase('log_out'); ?>
						</a>
					</li>
				</ul>
			</li>

		</ul>
	</div>
</div>
