<?php
	$status_wise_courses = $this->crud_model->get_status_wise_courses();
 ?>
<div class="sidebar-menu">
    <header class="logo-env">
        <!-- logo -->
        <div class="logo">
            <a href="<?php echo site_url('admin/dashboard'); ?>">
                <img src="<?php echo base_url().'assets/backend/logo.png'; ?>" width="120" alt="" />
            </a>
        </div>

        <!-- logo collapse icon -->
        <div class="sidebar-collapse">
            <a href="#" class="sidebar-collapse-icon"><!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
                <i class="entypo-menu"></i>
            </a>
        </div>

        <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
        <div class="sidebar-mobile-menu visible-xs">
            <a href="#" class="with-animation"><!-- add class "with-animation" to support animation -->
                <i class="entypo-menu"></i>
            </a>
        </div>

    </header>

    <ul id="main-menu" class="">
        <!-- add class "multiple-expanded" to allow multiple submenus to open -->
        <!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
        <!-- Search Bar -->
        <li class="<?php echo is_active('dashboard'); ?>">
            <a href="<?php echo site_url('admin/dashboard'); ?>">
                <i class="fa fa-tachometer"></i>
				<span><?php echo get_phrase('dashboard'); ?></span>
            </a>
        </li>

        <li class="<?php echo is_multi_level_active(['categories', 'sub_categories'], 1); ?>">
            <a href="<?php echo site_url('admin/categories'); ?>">
                <i class="fa fa-clone"></i>
				<span><?php echo get_phrase('categories'); ?></span>
            </a>
        </li>

        <li class = "<?php echo is_multi_level_active(['courses', 'pending_courses', 'sections'], 1); ?>">
            <a href="javascript:;">
                <i class="fa fa-book"></i>
								<span><?php echo get_phrase('courses'); ?></span>
            </a>
						<ul class="sub-menu">
                <li class = "<?php echo is_active('courses'); ?>" > <a href="<?php echo site_url('admin/courses'); ?>"><?php echo get_phrase('active_courses'); ?></a> </li>
                <li class = "<?php echo is_active('pending_courses'); ?>" >
									 <a href="<?php echo site_url('admin/pending_courses'); ?>">
										 <?php echo get_phrase('pending_courses'); ?>
										 <span class = "badge badge-secondary" data-toggle="tooltip" data-placement="top" title="<?php echo get_phrase('number_of_pending_courses').': '.$status_wise_courses['pending']->num_rows(); ?>"><?php echo $status_wise_courses['pending']->num_rows(); ?></span>
									 </a>
								 </li>
                <br>
            </ul>
        </li>

        <li class="<?php echo is_active('users'); ?>">
            <a href="<?php echo site_url('admin/users'); ?>">
                <i class="fa fa-users"></i>
				<span><?php echo get_phrase('students'); ?></span>
            </a>
        </li>

        <li class = "<?php echo is_multi_level_active(['enroll_history', 'enroll_student'], 1); ?>">
            <a href="javascript:;">
                <i class="fa fa-history"></i>
				<span><?php echo get_phrase('enrollment'); ?></span>
            </a>
            <ul class="sub-menu">
                <li class = "<?php echo is_active('enroll_history'); ?>" > <a href="<?php echo site_url('admin/enroll_history'); ?>"><?php echo get_phrase('enroll_history'); ?></a> </li>
                <li class = "<?php echo is_active('enroll_student'); ?>" > <a href="<?php echo site_url('admin/enroll_student'); ?>"><?php echo get_phrase('enroll_a_student'); ?></a> </li>
                <br>
            </ul>
        </li>

        <li class = "<?php echo is_multi_level_active(['admin_revenue', 'instructor_revenue'], 1); ?>">
            <a href="javascript:;">
                <i class="fa fa-file"></i>
				<span><?php echo get_phrase('report'); ?></span>
            </a>
            <ul class="sub-menu">
                <li class = "<?php echo is_active('admin_revenue'); ?>" > <a href="<?php echo site_url('admin/admin_revenue'); ?>"><?php echo get_phrase('admin_revenue'); ?></a> </li>
                <?php if (get_settings('allow_instructor') == 1): ?>
                    <li class = "<?php echo is_active('instructor_revenue'); ?>" >
                        <a href="<?php echo site_url('admin/instructor_revenue'); ?>">
                            <?php echo get_phrase('instructor_revenue');?><span class = "badge badge-secondary"><?php echo $this->db->get_where('payment', array('instructor_payment_status' => 0))->num_rows() ?></span>
                        </a>
                    </li>
                <?php endif; ?>
                <br>
            </ul>
        </li>

        <li class="<?php echo is_multi_level_active(['message'], 1); ?>">
            <a href="<?php echo site_url('admin/message'); ?>">
                <i class="fa fa-commenting-o"></i>
				<span><?php echo get_phrase('message'); ?></span>
            </a>
        </li>

        <li class = "<?php echo is_multi_level_active(['system_settings', 'payment_settings', 'manage_language', 'frontend_settings', 'smtp_settings', 'instructor_settings'], 1); ?>">
            <a href="javascript:;">
                <i class="fa fa-sliders"></i>
				<span><?php echo get_phrase('settings'); ?></span>
            </a>
            <ul class="sub-menu">
                <li class = "<?php echo is_active('system_settings'); ?>" > <a href="<?php echo site_url('admin/system_settings'); ?>"><?php echo get_phrase('system_settings'); ?></a> </li>
                <li class = "<?php echo is_active('frontend_settings'); ?>" > <a href="<?php echo site_url('admin/frontend_settings'); ?>"><?php echo get_phrase('frontend_settings'); ?></a> </li>
                <li class = "<?php echo is_active('instructor_settings'); ?>" > <a href="<?php echo site_url('admin/instructor_settings'); ?>"><?php echo get_phrase('instructor_settings'); ?></a> </li>
                <li class = "<?php echo is_active('payment_settings'); ?>" > <a href="<?php echo site_url('admin/payment_settings'); ?>"><?php echo get_phrase('payment_settings'); ?></a> </li>
                <li class = "<?php echo is_active('smtp_settings'); ?>" > <a href="<?php echo site_url('admin/smtp_settings'); ?>"><?php echo get_phrase('SMTP_settings'); ?></a> </li>
                <li class = "<?php echo is_active('manage_language'); ?>" > <a href="<?php echo site_url('admin/manage_language'); ?>"><?php echo get_phrase('manage_language'); ?></a> </li>
                <br>
            </ul>
        </li>
    </ul>
</div>
