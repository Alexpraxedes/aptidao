<?php
    $courses = $this->crud_model->get_courses($default_category_id, $default_sub_category_id, $default_instructor_id);
    $sub_categories = $this->crud_model->get_sub_categories($default_category_id);
    $instructors = $this->user_model->get_instructor();
?>

<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('courses'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-8 col-md-offset-2">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <a href = "<?php echo site_url('admin/course_form/add_course'); ?>" class="btn btn-block btn-info btn-lg" type="button"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_course'); ?></a>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <form class="" action="<?php echo site_url('admin/courses'); ?>" method="post">
                        <div class="col-md-3">
                            <select class="form-control" id="source" name="category_id" required onchange="ajax_get_sub_category(this.value)">
                                <option value=""><?php echo get_phrase('select_category'); ?></option>
                                <?php
                                    foreach ($categories->result_array() as $category):?>
                                    <option value="<?php echo $category['id']; ?>" <?php if($category['id'] == $default_category_id) echo 'selected'; ?>><?php echo $category['name']; ?></option>
                                <?php endforeach; ?>

                            </select>
                        </div>

                        <div class="col-md-3" id = "sub_category_area">
                            <select class="form-control" id="sub_category_id" name="sub_category_id" required>
                                <option value=""><?php echo get_phrase('select_category'); ?></option>
                                <?php foreach ($sub_categories as $sub_category): ?>
                                    <option value="<?php echo $sub_category['id']; ?>" <?php if($sub_category['id'] == $default_sub_category_id) echo 'selected'; ?>><?php echo $sub_category['name']; ?></option>
                                <?php endforeach; ?>

                            </select>
                        </div>

                        <div class="col-md-3" id = "instructor_id_area">
                            <select class="form-control" id="instructor_id" name="instructor_id">
                                <option value=""><?php echo get_phrase('all_instructor'); ?></option>
                                <?php foreach ($instructors as $instructor): ?>
                                    <option value="<?php echo $instructor['id']; ?>" <?php if($instructor['id'] == $default_instructor_id) echo 'selected'; ?>><?php echo $instructor['first_name'].' '.$instructor['last_name']; ?></option>
                                <?php endforeach; ?>

                            </select>
                        </div>

                        <div class="col-md-3">
                            <button type="submit" class="btn btn-block btn-default btn-lg" name="button"><i class="fa fa-search"></i> Filter</button>
                        </div>
                    </form>
                </div>
                <br>
                <?php include 'active_courses.php'; ?>
            </div>
        </div>
	</div>
</div>

<script type="text/javascript">
    function ajax_get_sub_category(category_id) {
        $.ajax({
            url: '<?php echo site_url('admin/ajax_get_sub_category/');?>' + category_id ,
            success: function(response)
            {
                jQuery('#sub_category_id').html(response);
                console.log(response);
            }
        });
    }
</script>
