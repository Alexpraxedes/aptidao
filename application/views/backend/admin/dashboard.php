<ol class="breadcrumb bc-3">
    <li class = "active">
        <a href="#">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
                <div class="panel-title">
                    <?php echo get_phrase('admin_dashboard'); ?>
                </div>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-3">

                        <div class="tile-stats tile-red">
                            <div class="icon"><i class="entypo-book"></i></div>
                            <div class="num" data-start="0"
                            data-end="
                            <?php
                            $status_wise_courses = $this->crud_model->get_status_wise_courses();
                            $number_of_courses = $status_wise_courses['pending']->num_rows() + $status_wise_courses['active']->num_rows();
                            echo $number_of_courses;
                            ?>
                            "
                            data-postfix="" data-duration="1500" data-delay="0">0</div>

                            <!-- <h3><?php echo get_phrase('total_courses');?></h3> -->
                            <p><?php echo get_phrase('number_of_active_courses').': '.$status_wise_courses['active']->num_rows();?></p>
                            <p><?php echo get_phrase('number_of_pending_courses').': '.$status_wise_courses['pending']->num_rows();?></p>
                        </div>

                    </div>

                    <div class="col-md-3">

                        <div class="tile-stats tile-green">
                            <div class="icon"><i class="entypo-video"></i></div>
                            <div class="num" data-start="0"
                            data-end="
                            <?php
                            $number_of_lessons = $this->crud_model->get_lessons()->num_rows();
                            echo $number_of_lessons;
                            ?>
                            "
                            data-postfix="" data-duration="1500" data-delay="0">0</div>

                            <h3><?php echo get_phrase('total_lessons');?></h3>
                            <p><?php echo get_phrase('number_of_lessons');?></p>
                        </div>

                    </div>

                    <div class="col-md-3">

                        <div class="tile-stats tile-aqua">
                            <div class="icon"><i class="entypo-user"></i></div>
                            <div class="num" data-start="0"
                            data-end="
                            <?php
                            $number_of_enrollment = $this->crud_model->enroll_history()->num_rows();
                            echo $number_of_enrollment;
                            ?>
                            "
                            data-postfix="" data-duration="1500" data-delay="0">0</div>

                            <h3><?php echo get_phrase('total_enrollment');?></h3>
                            <p><?php echo get_phrase('number_of_enrollment');?></p>
                        </div>
                    </div>

                    <div class="col-md-3">

                        <div class="tile-stats tile-blue">
                            <div class="icon"><i class="entypo-users"></i></div>
                            <div class="num" data-start="0"
                            data-end="
                            <?php
                            $number_of_students = $this->user_model->get_user()->num_rows();
                            echo $number_of_students;
                            ?>
                            "
                            data-postfix="" data-duration="1500" data-delay="0">0</div>

                            <h3><?php echo get_phrase('total_student');?></h3>
                            <p><?php echo get_phrase('number_of_student');?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
