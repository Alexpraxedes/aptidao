<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('instructor_settings'); ?></a> </li>
</ol>

<h2><?php echo $page_title; ?></h2>
<br />
<div class="row">
    <div class="col-md-7">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    <?php echo get_phrase('instructor_settings');?>
                </div>
            </div>
            <div class="panel-body">
                <form class="" action="<?php echo site_url('admin/instructor_settings/update'); ?>" method="post">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('allow_public_instructor'); ?></label>
                            <div class="controls">
                                <select class="form-control selectboxit" name="allow_instructor">
                                    <option value="1" <?php if(get_settings('allow_instructor') == 1) echo 'selected'; ?>><?php echo get_phrase('yes'); ?></option>
                                    <option value="0" <?php if(get_settings('allow_instructor') == 0) echo 'selected'; ?>><?php echo get_phrase('no'); ?></option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('instructor_revenue_percentage'); ?></label>
                            <div class="input-group">
                                <input type="number" name = "instructor_revenue" id = "instructor_revenue" class="form-control" onkeyup="calculateAdminRevenue(this.value)" min="0" max="100" value="<?php echo get_settings('instructor_revenue'); ?>">
                                <span class="input-group-addon">%</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="form-label"><?php echo get_phrase('admin_revenue_percentage'); ?></label>
                            <div class="input-group">
                                <input type="number" name = "admin_revenue" id = "admin_revenue" class="form-control" value="0" disabled style="background: none; cursor: default;">
                                <span class="input-group-addon">%</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('update_instructor_settings'); ?></button>
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
