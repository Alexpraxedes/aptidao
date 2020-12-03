<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/categories'); ?>"><?php echo get_phrase('categories'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('add_categories'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    <?php echo get_phrase('category_add_form'); ?>
                </div>
            </div>
            <div class="panel-body">
                <form action="<?php echo site_url('admin/categories/add'); ?>" method="post" role="form" class="form-horizontal form-groups-bordered">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('category_code'); ?></label>

                            <div class="col-sm-5">
                                <input type="text" name = "code" class="form-control" readonly value="<?php echo substr(md5(rand(0, 1000000)), 0, 10); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('category_title'); ?></label>

                            <div class="col-sm-5">
                                <input type="text" name = "name" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="field-1" class="col-sm-3 control-label"><?php echo get_phrase('icon_picker'); ?></label>

                            <div class="col-sm-5">
                                <input type="text" name="font_awesome_class" class="form-control icon-picker" autocomplete="off" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('add_category'); ?></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<style media="screen">
  .iconpicker-items {
    overflow-y: hidden;
  }
</style>
