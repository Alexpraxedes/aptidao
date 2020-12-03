<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/sections/'.$course_id); ?>" class="active"><?php echo get_phrase('section'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('serialize_section'); ?></a> </li>
</ol>
<h2><?php echo $page_title; ?></h2>
<br />

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Simple Draggable List
                </div>
            </div>


            <div class="panel-body">
                <div class="col-md-7">
                    <div id="list-1" class="nested-list dd with-margins"><!-- adding class "with-margins" will separate list items -->
                        <ul class="dd-list">
                            <?php
                                $course_details = $this->crud_model->get_course_by_id($course_id)->row_array();
                                foreach (json_decode($course_details['section']) as $section):?>
                                <li class="dd-item" data-id="<?php echo $section; ?>">
                                    <div class="dd-handle">
                                        <?php
                                            $section_details = $this->crud_model->get_section('section', $section)->row_array();
                                            echo $section_details['title'];
                                        ?>
                                    </div>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                    <br>
                    <form class="" action="<?php echo site_url("admin/serialize_section/$course_id/serialize/"); ?>" method="post">
                        <input type="hidden" id = 'serialization' name="serialization" value="">
                        <button type="submit" class = "btn btn-success" name="button"><?php echo get_phrase('submit'); ?></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
jQuery(document).ready(function($)
{
    $('.dd').nestable({
        'maxDepth' : 1
    });

    $('#serialization').val(window.JSON.stringify($('.dd').nestable('serialize')));
});

$('.dd').on('change', function() {
    $('#serialization').val(window.JSON.stringify($('.dd').nestable('serialize')));
});
</script>
