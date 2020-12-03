<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('SMTP_settings'); ?></a> </li>
</ol>

<h2><?php echo $page_title; ?></h2>
<br />
<div class="row">
    <div class="col-md-7">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    <?php echo get_phrase('smtp_settings');?>
                </div>
            </div>
            <div class="panel-body">
                <form class="" action="<?php echo site_url('admin/smtp_settings/update'); ?>" method="post">
                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('protocol'); ?></label>
                            <div class="controls">
                                <input type="text" name = "protocol" id = "protocol" class="form-control" value="<?php echo get_settings('protocol'); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('smtp_host'); ?></label>
                            <div class="controls">
                                <input type="text" name = "smtp_host" id = "smtp_host" class="form-control" value="<?php echo get_settings('smtp_host'); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('smtp_port'); ?></label>
                            <div class="controls">
                                <input type="text" name = "smtp_port" id = "smtp_port" class="form-control" value="<?php echo get_settings('smtp_port'); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('smtp_user'); ?></label>
                            <div class="controls">
                                <input type="text" name = "smtp_user" id = "smtp_user" class="form-control" value="<?php echo get_settings('smtp_user'); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('smtp_pass'); ?></label>
                            <div class="controls">
                                <input type="text" name = "smtp_pass" id = "smtp_pass" class="form-control" value="<?php echo get_settings('smtp_pass'); ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update_smtp_settings'); ?></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        var instructor_revenue = $('#instructor_revenue').val();
        calculateAdminRevenue(instructor_revenue);
    });
    function calculateAdminRevenue(instructor_revenue) {
        if(instructor_revenue <= 100 && instructor_revenue > 0){
            var admin_revenue = 100 - instructor_revenue;
            $('#admin_revenue').val(admin_revenue);
        }else {
            $('#admin_revenue').val(0);
        }
    }
</script>
