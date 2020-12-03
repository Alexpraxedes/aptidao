<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('frontend_settings'); ?></a> </li>
</ol>

<h2><?php echo $page_title; ?></h2>
<br />
<div class="row">
    <div class="col-md-12">
        <div class="col-md-7">
            <div class="panel panel-primary" data-collapsed="0">
                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('frontend_settings');?>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="" action="<?php echo site_url('admin/frontend_settings/frontend_update'); ?>" method="post">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('banner_title'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "banner_title" class="form-control" value="<?php echo get_frontend_settings('banner_title');  ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('banner_sub_title'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "banner_sub_title" class="form-control" value="<?php echo  get_frontend_settings('banner_sub_title');?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('about_us'); ?></label>
                                <div class="controls">
                                    <textarea rows="5" class="form-control html5editor" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>"
                                        name="about_us" placeholder="<?php echo get_phrase('about_us'); ?>"
                                        id="about_us" required><?php echo get_frontend_settings('about_us'); ?></textarea>
                                    </div>
                                </div>


                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('terms_and_condition'); ?></label>
                                <div class="controls">
                                    <textarea rows="5" class="form-control html5editor" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>"
                                        name="terms_and_condition" placeholder="<?php echo get_phrase('terms_and_condition'); ?>"
                                        id="terms_and_condition" required><?php echo get_frontend_settings('terms_and_condition'); ?></textarea>
                                    </div>
                                </div>


                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('privacy_policy'); ?></label>
                                <div class="controls">
                                    <textarea rows="5" class="form-control html5editor" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>"
                                        name="privacy_policy" placeholder="<?php echo get_phrase('privacy_policy'); ?>"
                                        id="privacy_policy" required><?php echo get_frontend_settings('privacy_policy'); ?></textarea>
                                    </div>
                                </div>

                                    <div class="form-group">
                                        <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update_frontend_settings'); ?></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
        </div>
        <div class = "col-md-5" style="text-align: center;">
            <div class="panel panel-primary" data-collapsed="0">
                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('update_banner');?>
                    </div>
                </div>
                <div class="panel-body">
                    <form action="<?php echo site_url('admin/frontend_settings/banner_image_update'); ?>" class="no-margin" enctype="multipart/form-data" method="post">

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('banner_image');?></label>

                            <div class="controls">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
                                        <img src="<?php echo base_url('uploads/frontend/home-banner.jpg');?>" alt="...">
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                    <div>
                                        <span class="btn btn-white btn-file">
                                            <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                            <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                            <input type="file" name="banner_image" accept="image/*">
                                        </span>
                                        <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button class = "btn btn-success" type="submit" name="submit"><?php echo get_phrase('update_banner_image'); ?></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class = "col-md-5" style="text-align: center;">
            <div class="panel panel-primary" data-collapsed="0">

                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('update_frontend_logo');?>
                    </div>
                </div>
                <form action="<?php echo site_url('admin/frontend_settings/logo_upload'); ?>" method="post" class="no-margin" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="form-label"><?php echo get_phrase('system_logo');?></label>

                        <div class="controls">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('assets/frontend/img/logo.png');?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="logo" accept="image/*">
                                    </span>
                                    <a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput"><?php echo get_phrase('remove'); ?></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button class = "btn btn-success" type="submit" name="submit"><?php echo get_phrase('update_logo'); ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
