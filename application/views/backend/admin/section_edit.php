<?php $course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
      $section_details = $this->crud_model->get_section('section', $section_id)->row_array();
?>

<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/sections/'.$course_id); ?>" class=""><?php echo get_phrase('section'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('edit_section'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
				<div class="panel-title">
					<?php echo get_phrase('edit_section_form'); ?>
				</div>
			</div>
			<div class="panel-body">
                <form action="<?php echo site_url('admin/sections/'.$course_id.'/edit/'.$section_id); ?>" method="post" role="form" class="form-horizontal form-groups-bordered">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo get_phrase('title'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name = "title" class="form-control" required value="<?php echo $section_details['title']; ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update'); ?></button>
                        </div>
                    </div>
                </div>
                </form>
			</div>
		</div>
	</div>
</div>
