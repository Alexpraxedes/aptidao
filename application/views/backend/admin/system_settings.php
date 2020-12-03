<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('system_settings'); ?></a> </li>
</ol>

<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
    <div class="col-md-12">

        <div class="col-md-6">
            <div class="panel panel-primary" data-collapsed="0">
                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('system_settings');?>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="" action="<?php echo site_url('admin/system_settings/system_update'); ?>" method="post">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('website_name'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "system_name" class="form-control" value="<?php echo $this->db->get_where('settings', array('key' => 'system_name'))->row()->value;  ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('website_title'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "system_title" class="form-control" value="<?php echo  $this->db->get_where('settings', array('key' => 'system_title'))->row()->value;?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('website_keywords'); ?></label>
                                <div class="controls">
                                    <input type="text" name="website_keywords" class="form-control tagsinput" value="<?php echo get_settings('website_keywords'); ?>"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('website_description'); ?></label>
                                <div class="controls">
                                    <textarea type="text" rows="5" name = "website_description" class="form-control" required><?php echo get_settings('website_description'); ?></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('author'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "author" class="form-control" value="<?php echo  $this->db->get_where('settings', array('key' => 'author'))->row()->value;?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('slogan'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "slogan" class="form-control" value="<?php echo  $this->db->get_where('settings', array('key' => 'slogan'))->row()->value;?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('system_email'); ?></label>
                                <div class="controls">
                                    <input type="email" name = "system_email" class="form-control" value="<?php echo  $this->db->get_where('settings', array('key' => 'system_email'))->row()->value;?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('address'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "address" class="form-control" value="<?php echo $this->db->get_where('settings', array('key' => 'address'))->row()->value; ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('phone'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "phone" class="form-control" value="<?php echo $this->db->get_where('settings', array('key' => 'phone'))->row()->value; ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('youtube_API_key'); ?> &nbsp; <a href = "https://developers.google.com/youtube/v3/getting-started" target = "_blank" style="color: #a7a4a4">(<?php echo get_phrase('get_YouTube_API_key'); ?>)</a></label>
                                <div class="controls">
                                    <input type="text" name = "youtube_api_key" class="form-control" value="<?php echo get_settings('youtube_api_key'); ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('vimeo_API_key'); ?> &nbsp; <a href = "https://www.youtube.com/watch?v=Wwy9aibAd54" target = "_blank" style="color: #a7a4a4">(<?php echo get_phrase('get_Vimeo_API_key'); ?>)</a></label>
                                <div class="controls">
                                    <input type="text" name = "vimeo_api_key" class="form-control" value="<?php echo get_settings('vimeo_api_key'); ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('purchase_code'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "purchase_code" class="form-control" value="<?php echo $this->db->get_where('settings', array('key' => 'purchase_code'))->row()->value; ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('language'); ?></label>
                                <div class="controls">
                                    <select class="form-control selectboxit" id="source" name="language" data-init-plugin="select2" required>
                                        <?php
                                        $fields = $this->db->list_fields('language');
                                        foreach ($fields as $field):
                                            $current_default_language	=	$this->db->get_where('settings' , array('key'=>'language'))->row()->value;?>
                                            <?php if ($field == 'phrase_id' || $field == 'phrase') continue;?>
                                            <option value="<?php echo $field;?>"
                                                <?php if ($current_default_language == $field)echo 'selected';?>> <?php echo ucfirst($field);?>
                                            </option>
                                        <?php endforeach; ?>
                                        <option value=""disabled></option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('text-align'); ?></label>
                                <div class="controls">
                                    <select class="form-control selectboxit" id="text_align" name="text_align" data-init-plugin="select2" required>
                                        <?php $text_align = $this->db->get_where('settings', array('key' => 'text_align'))->row()->value; ?>
                                        <option value="left-to-right" <?php if ($text_align == 'left-to-right') echo 'selected'; ?>> left-to-right (LTR)</option>
                                        <option value="right-to-left" <?php if ($text_align == 'right-to-left') echo 'selected'; ?>> right-to-left (RTL)</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('footer_text'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "footer_text" class="form-control" value="<?php echo get_settings('footer_text'); ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label"><?php echo get_phrase('footer_link'); ?></label>
                                <div class="controls">
                                    <input type="text" name = "footer_link" class="form-control" value="<?php echo get_settings('footer_link'); ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update_system_settings'); ?></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="panel panel-primary" data-collapsed="0">

                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('update_product');?>
                    </div>
                </div>


                <div class="panel-body form-horizontal form-groups-bordered">
                    <?php echo form_open(site_url('updater/update') , array('class' => 'form-horizontal form-groups-bordered', 'enctype' => 'multipart/form-data'));?>

                    <div class="form-group">
                        <label class="col-sm-3 control-label"><?php echo get_phrase('file'); ?></label>

                        <div class="col-sm-5">

                            <input type="file" name="file_name" class="form-control file2 inline btn btn-primary" data-label="<i class='glyphicon glyphicon-file'></i> Browse" />

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <input type="submit" class="btn btn-info" value="<?php echo get_phrase('install_update'); ?>" />
                        </div>
                    </div>

                    <?php echo form_close(); ?>
                </div>

            </div>
        </div>

        <div class = "col-md-6" style="text-align: center;">
            <div class="panel panel-primary" data-collapsed="0">

                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('update_backend_logo');?>
                    </div>
                </div>
                <form action="<?php echo site_url('admin/system_settings/logo_upload'); ?>" method="post" class="no-margin" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="form-label"><?php echo get_phrase('system_logo');?></label>

                        <div class="controls">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url('assets/backend/logo.png');?>" alt="...">
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

        <div class = "col-md-6" style="text-align: center;">
            <div class="panel panel-primary" data-collapsed="0">

                <div class="panel-heading">
                    <div class="panel-title">
                        <?php echo get_phrase('update_favicon');?>
                    </div>
                </div>
                <form action="<?php echo site_url('admin/system_settings/favicon_upload'); ?>" method="post" class="no-margin" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="form-label"><?php echo get_phrase('favicon');?></label>

                        <div class="controls">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 100px; height: 100px;" data-trigger="fileinput">
                                    <img src="<?php echo base_url().'assets/favicon.png' ?>" alt="...">
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px"></div>
                                <div>
                                    <span class="btn btn-white btn-file">
                                        <span class="fileinput-new"><?php echo get_phrase('select_image'); ?></span>
                                        <span class="fileinput-exists"><?php echo get_phrase('change'); ?></span>
                                        <input type="file" name="favicon" accept="image/*">
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
