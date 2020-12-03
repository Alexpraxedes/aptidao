<ol class="breadcrumb bc-3">
	<li>
		<a href="<?php echo site_url('admin/dashboard'); ?>">
			<i class="entypo-folder"></i>
			<?php echo get_phrase('dashboard'); ?>
		</a>
	</li>
	<li><a href="#" class="active"><?php echo get_phrase('manage_profile'); ?></a> </li>
</ol>
<h2><?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">

			<div class="panel-body">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="#"><i class="entypo-user"></i><?php echo get_phrase('manage_profile');?></a></li>
				</ul>

				<div class="tab-content">
					<br>
					<!----EDITING FORM STARTS---->
					<div class="tab-pane box active" id="list" style="padding: 5px">
						<div class="box-content">
							<?php
							foreach($edit_data as $row):
								$social_links = json_decode($row['social_links'], true);?>
								<?php echo form_open(site_url('admin/manage_profile/update_profile_info/'.$row['id']) , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top' , 'enctype' => 'multipart/form-data'));?>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('first_name');?></label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="first_name" value="<?php echo $row['first_name'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('last_name');?></label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="last_name" value="<?php echo $row['last_name'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('email');?></label>
									<div class="col-sm-5">
										<input type="email" class="form-control" name="email" value="<?php echo $row['email'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('facebook_link');?></label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="facebook_link" value="<?php echo $social_links['facebook'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('twitter_link');?></label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="twitter_link" value="<?php echo $social_links['twitter'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('linkedin_link');?></label>
									<div class="col-sm-5">
										<input type="text" class="form-control" name="linkedin_link" value="<?php echo $social_links['linkedin'];?>" required/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('a_short_title_about_yourself'); ?></label>
									<div class="col-sm-5">
										<textarea rows="5" class="form-control" name="title" placeholder="<?php echo get_phrase('a_short_title_about_yourself'); ?>" required><?php echo $row['title']; ?></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('biography'); ?></label>
									<div class="col-sm-5">
										<textarea rows="5" class="form-control html5editor" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>"
											name="biography" placeholder="<?php echo get_phrase('biography'); ?>"
											id="sample_wysiwyg1" required><?php echo $row['biography']; ?></textarea>
										</div>
									</div>


									<div class="form-group">
										<label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('photo');?></label>

										<div class="col-sm-5">
											<div class="fileinput fileinput-new" data-provides="fileinput">
												<div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
													<img src="<?php echo base_url('uploads/user_image/'.$row['id'].'.jpg');?>" alt="...">
												</div>
												<div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
												<div>
													<span class="btn btn-white btn-file">
														<span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
														<span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
														<input type="file" name="user_image" accept="image/*">
													</span>
													<a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
												</div>
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-5">
											<button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
										</div>
									</div>
								</form>
								<?php
							endforeach;
							?>
						</div>
					</div>
					<!----EDITING FORM ENDS-->

				</div>
			</div>
		</div>
	</div>
</div>
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-body">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active">
						<a href="#">
							<i class="entypo-lock"></i><?php echo get_phrase('change_password');?>
						</a>
					</li>
				</ul>
				<div class="tab-content">
					<br>
					<!----EDITING FORM STARTS---->
					<div class="tab-pane box active" id="list" style="padding: 5px">
						<div class="box-content padded">
							<?php
							foreach($edit_data as $row):
								?>
								<?php echo form_open(site_url('admin/manage_profile/change_password/'.$row['id']) , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('current_password');?></label>
									<div class="col-sm-5">
										<input type="password" class="form-control" name="current_password" value="" required/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('new_password');?></label>
									<div class="col-sm-5">
										<input type="password" class="form-control" name="new_password" value="" required/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label"><?php echo get_phrase('confirm_new_password');?></label>
									<div class="col-sm-5">
										<input type="password" class="form-control" name="confirm_password" value="" required/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-5">
										<button type="submit" class="btn btn-info"><?php echo get_phrase('update_profile');?></button>
									</div>
								</div>
							</form>
							<?php
						endforeach;
						?>
					</div>
				</div>
				<!----EDITING FORM ENDS--->

			</div>
		</div>
	</div>
</div>
</div>
