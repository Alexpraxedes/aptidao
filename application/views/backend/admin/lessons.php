<?php
    $courses = $this->crud_model->get_courses()->result_array();
    $src = "";
    $course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
?>

<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/courses'); ?>"><?php echo get_phrase('courses'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('lessons'); ?></a> </li>
</ol>
<h2><?php echo $page_title.' '.get_phrase('of').' '.$course_details['title']; ?></h2>
<br />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-body">
                <div class="row">
                    <div class="col-md-3">
                        <a href = "<?php echo site_url('admin/lesson_form/add_lesson/'.$course_id); ?>" class="btn btn-block btn-info" type="button"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_lesson'); ?></a>
                    </div>
                    <form  role="form" class="form-horizontal form-groups-bordered" action="<?php echo site_url('admin/lessons/course/filter'); ?>" method="post">
                        <div class="col-md-6">
                            <select class="form-control select2" id="course_id" name="course_id" data-init-plugin="select2" required>
                                <option value=""><?php echo get_phrase('select_course'); ?></option>
                                <?php foreach ($courses as $course): ?>
                                    <option value="<?php echo $course['id']; ?>" <?php if($course['id'] == $course_id) echo 'selected'; ?>><?php echo $course['title']; ?></option>
                                <?php endforeach; ?>

                            </select>
                        </div>
                        <div class="col-md-3">
                            <button type="submit" class="btn btn-block btn-info" name="button"><i class="fa fa-search"></i><?php echo get_phrase('search'); ?></button>
                        </div>
                    </form>
                </div>

                <table class="table table-bordered datatable" id="table-1">
                    <thead>
                      <tr>
                        <th><?php echo get_phrase('title'); ?></th>
                        <!-- <th><?php echo get_phrase('duration'); ?></th> -->
                        <th><?php echo get_phrase('section'); ?></th>
                        <th><?php echo get_phrase('lesson_type'); ?></th>
                        <th><?php echo get_phrase('date_added'); ?></th>
                        <th><?php echo get_phrase('last_modified'); ?></th>
                        <th><?php echo get_phrase('action'); ?></th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($lessons->result_array() as $lesson):?>
                            <tr>
                                <td>
                                    <a href="<?php echo site_url('admin/watch_video/'.slugify($lesson['title']).'/'.$lesson['id']); ?>" style="color: black;" target="_blank"><?php echo $lesson['title']; ?></a>
                                </td>
                                <!-- <td>
                                    <?php echo $lesson['duration']; ?>
                                </td> -->
                                <td>
                                    <?php
                                        $section_for_this_lesson = $this->crud_model->get_section('section', $lesson['section_id'])->row_array();
                                        echo $section_for_this_lesson['title'];
                                     ?>
                                </td>
                                <td>
                                  <?php
                                    if ($lesson['attachment_type'] == 'url' || $lesson['attachment_type'] == '') {
                                      echo get_phrase('video');
                                    }else {
                                      echo ucfirst($lesson['attachment_type']);
                                    }
                                  ?>
                                </td>
                                <td>
                                    <?php echo date('D, d-M-Y', $lesson['date_added']); ?>
                                </td>
                                <td>
                                    <?php
                                      if ($lesson['last_modified'] > 0) {
                                          echo date('D, d-M-Y', $lesson['last_modified']);
                                      }
                                     ?>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" data-toggle="dropdown"> <i class = "fa fa-ellipsis-v"></i> </button>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="<?php echo site_url('admin/lesson_form/edit_lesson/'.$lesson['id'].'/'.$course_id) ?>">
                                                    <?php echo get_phrase('edit');?>
                                                </a>
                                            </li>
                                            <li class="divider"></li>
                                            <li>
                                                <a href="#" onclick="confirm_modal('<?php echo site_url('admin/lessons/'.$course_id.'/delete'.'/'.$lesson['id']); ?>');">
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
