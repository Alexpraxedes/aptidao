<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('students'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-body">
                <div class="row" style="margin-left: -15px;">
                    <div class="col-md-3">
                        <a href = "<?php echo site_url('admin/user_form/add_user_form'); ?>" class="btn btn-block btn-info" type="button"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_student'); ?></a>
                    </div>
                </div>
                <table class="table table-bordered datatable" id="table-1">
                    <thead>
                      <tr>
                        <th><?php echo get_phrase('photo'); ?></th>
                        <th><?php echo get_phrase('name'); ?></th>
                        <th><?php echo get_phrase('email'); ?></th>
                        <th><?php echo get_phrase('date_added'); ?></th>
                        <th><?php echo get_phrase('enrolled_courses'); ?></th>
                        <th><?php echo get_phrase('actions'); ?></th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($users->result_array() as $user): ?>
                            <tr class="gradeU">
                              <td>
                                  <img src="<?php echo $this->user_model->get_user_image_url($user['id']);?>" alt="" height="50" width="50" class="img-fluid">
                              </td>
                              <td><?php echo $user['first_name'].' '.$user['last_name']; ?></td>
                              <td><?php echo $user['email']; ?></td>
                              <td><?php echo date('D, d-M-Y', $user['date_added']); ?></td>
                              <td>
                                 <?php
                                    $enrolled_courses = $this->crud_model->enroll_history_by_user_id($user['id']);?>
                                    <ul>
                                        <?php foreach ($enrolled_courses->result_array() as $enrolled_course):
                                            $course_details = $this->crud_model->get_course_by_id($enrolled_course['course_id'])->row_array();?>
                                            <li><?php echo $course_details['title']; ?></li>
                                        <?php endforeach; ?>
                                    </ul>
                              </td>
                              <td>
                                  <div class="btn-group">
                                      <button type="button" class="btn btn-default" data-toggle="dropdown"> <i class = "fa fa-ellipsis-v"></i> </button>
                                      <ul class="dropdown-menu">
                                          <!-- <li>
                                              <a href="">
                                                  <?php echo get_phrase('view_profile');?>
                                              </a>
                                          </li> -->
                                          <li>
                                              <a href="<?php echo site_url('admin/user_form/edit_user_form/'.$user['id']) ?>">
                                                  <?php echo get_phrase('edit');?>
                                              </a>
                                          </li>
                                          <li class="divider"></li>
                                          <li>
                                              <a href="#" onclick="confirm_modal('<?php echo site_url('admin/users/delete/'.$user['id']); ?>');">
                                                  <?php echo get_phrase('delete');?>
                                              </a>
                                          </li>
                                      </ul>
                                  </div>
                              </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                  </table>
			</div>
		</div>
	</div>
</div>


<div class="row">
    <div class="col-md-12">
      <div class="grid simple">
        <div class="grid-body no-border">


          <div class="row">
              <br>

          </div>
        </div>
      </div>
    </div>
</div>
