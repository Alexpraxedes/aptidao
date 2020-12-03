<?php $data = $this->db->get_where('category', array('id' => $category_id))->row_array(); ?>

<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/categories'); ?>"><?php echo get_phrase('categories'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('edit_category'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
				<div class="panel-title">
					<?php echo get_phrase('edit_category_form'); ?>
				</div>
			</div>
			<div class="panel-body">
                <form action="<?php echo site_url('admin/categories/edit/'.$category_id); ?>" method="post" role="form" class="form-horizontal form-groups-bordered">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('category_code'); ?></label>
                            <div class="col-sm-5">
                                <input type="text" name = "code" class="form-control" readonly value="<?php echo $data['code']; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('category_title'); ?></label>
                            <div class="col-sm-5">
                                <input type="text" name = "name" class="form-control" required value="<?php echo $data['name']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('selected_icon'); ?></label>

                            <div class="col-sm-5" style="margin-top: 9px;">
                                <span> <i class="<?php echo $data['font_awesome_class']; ?>" style="font-size: 16px;"></i> </span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('pick_another_icon_picker'); ?></label>

                            <div class="col-sm-5">
                                <input type="text" name="font_awesome_class" class="form-control icon-picker" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update_category'); ?></button>
                            </div>
                        </div>
                    </div>
                </form>
			</div>
		</div>
	</div>
</div>
