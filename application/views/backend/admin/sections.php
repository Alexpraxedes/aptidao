<?php
    $course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
    $sections = json_decode($course_details['section'], true);
?>

<hr />
<ol class="breadcrumb bc-3">
    <li class = "active">
        <a href="#">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/courses'); ?>" class=""><?php echo get_phrase('course'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('manage_section'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title.' '.get_phrase('of').' '.$course_details['title']; ?></h2>
<br />

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-body">
                <div class="row" style="margin-left: -15px;">
                    <div class="col-md-3">
                        <a href = "<?php echo site_url('admin/section_form/add_section/'.$course_id); ?>" class="btn btn-block btn-info" type="button"><i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('add_section'); ?></a>
                    </div>
                </div>

                <table class="table table-bordered datatable" id="table-1">
                    <thead>
                        <tr>
                            <th><?php echo get_phrase('title'); ?></th>
                            <th><?php echo get_phrase('lessons'); ?></th>
                            <th><?php echo get_phrase('actions'); ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (sizeof($sections) > 0): ?>
                            <?php foreach ($sections as $section):
                                $section_details = $this->crud_model->get_section('section', $section)->row_array();
                                ?>
                                <tr>
                                    <td><?php echo $section_details['title']; ?></td>
                                    <td>
                                        <ul style="list-style-type:square">
                                            <?php
                                            $lessons = $this->crud_model->get_lessons('section', $section_details['id'])->result_array();
                                            foreach ($lessons as $lesson):?>
                                                <a href="<?php echo site_url('admin/watch_video/'.slugify($lesson['title']).'/'.$lesson['id']); ?>"><li><?php echo $lesson['title']; ?></li></a>
                                            <?php endforeach; ?>
                                        </ul>
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default" data-toggle="dropdown"> <i class = "fa fa-ellipsis-v"></i> </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="<?php echo site_url('admin/serialize_section/'.$course_id); ?>">
                                                        <?php echo get_phrase('serialize_sections');?>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="<?php echo site_url('admin/section_form/edit_section/'.$section.'/'.$course_id) ?>">
                                                        <?php echo get_phrase('edit_section');?>
                                                    </a>
                                                </li>
                                                <li class="divider"></li>
                                                <li>
                                                    <a href="#" onclick="confirm_modal('<?php echo site_url('admin/sections/'.$course_id.'/delete'.'/'.$section); ?>');">
                                                        <?php echo get_phrase('delete_section');?>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
