        <!--<section class="footer-top-widget-area">
            <div class="container-xl">
                <div class="row">
                     <div class="col-md-3 col-sm-6">
                        <div class="footer-widget link-widget">
                            <ul>
                                <li><a href=""><b>Udemy for Business</b></a></li>
                                <li><a href=""><b>Become an Instructor</b></a></li>
                                <li><a href="">Mobile Apps</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-widget link-widget">
                            <ul>
                                <li><a href="<?php echo site_url('home/about_us'); ?>"><?php echo get_phrase('about_us'); ?></a></li>
                                <li><a href="<?php echo site_url('home/blog'); ?>"><?php echo get_phrase('blog'); ?></a></li>
                            </ul>
                        </div>
                    </div>-->
                    <!-- <div class="col-md-offest-6 col-md-3 col-sm-6 pull-right">
                        <div class="footer-widget language-widget text-right">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" type="button" id="languageButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-globe"></i>English
                                </button>
                                <div class="dropdown-menu" aria-labelledby="languageButton">
                                    <a class="dropdown-item" href="#">English</a>
                                    <a class="dropdown-item" href="#">Deutsch</a>
                                    <a class="dropdown-item" href="#">Español</a>
                                    <a class="dropdown-item" href="#">Français</a>
                                    <a class="dropdown-item" href="#">Français</a>
                                    <a class="dropdown-item" href="#">Italiano</a>
                                    <a class="dropdown-item" href="#">日本語</a>
                                    <a class="dropdown-item" href="#">한국어</a>
                                    <a class="dropdown-item" href="#">Nederlands</a>
                                    <a class="dropdown-item" href="#">Polski</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->

        <footer class="footer-area">
            <div class="container-xl">
                <div class="row">
                    <div class="col-md-6">
                        <p class="copyright-text">
                            <a href=""><img src="<?php echo base_url().'assets/frontend/img/logo.png'; ?>" alt="" class="d-inline-block" width="110"></a>
                            <a href="<?php echo get_settings('footer_link'); ?>" target="_blank"><?php echo get_settings('footer_text'); ?></a>
                        </p>
                    </div>
                    <div class="col-md-6">
                        <ul class="nav justify-content-md-end footer-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('home/about_us'); ?>"><?php echo get_phrase('about'); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('home/privacy_policy'); ?>"><?php echo get_phrase('privacy_policy'); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('home/terms_and_condition'); ?>"><?php echo get_phrase('terms_&_condition'); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('login'); ?>" target="_blank">
                                    <?php echo get_phrase('admin'); ?>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>



        <!-- Modal -->
        <div class="modal fade" id="signInModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content sign-in-modal">
                    <div class="modal-header">
                        <h5 class="modal-title"><?php echo get_phrase('log_in_to_your_account'); ?>!</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="<?php echo site_url('login/validate_login/user'); ?>" method="post">
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-envelope"></i></span>
                                <input type="email" name="email" class="form-control" placeholder="<?php echo get_phrase('email'); ?>">
                            </div>
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-lock"></i></span>
                                <input type="password" name="password" class="form-control" placeholder="<?php echo get_phrase('password'); ?>">
                            </div>
                            <button type="submit" class="btn btn-primary"><?php echo get_phrase('log_in'); ?></button>
                            <div class="forgot-pass">
                                <span>or</span>
                                <a href="" data-toggle="modal" data-target="#forgotModal" data-dismiss="modal"><?php echo get_phrase('forgot_password'); ?></a>
                            </div>
                        </form>
                        <div class="agreement-text">
                            <?php echo get_phrase('by_signing_up_you_agree_to_our'); ?> <a href="#"><?php echo get_phrase('terms_of_use'); ?></a> <?php echo get_phrase('and'); ?> <a href="#"><?php echo get_phrase('privacy_policy'); ?></a>.
                        </div>
                        <div class="account-have">
                            <?php echo get_phrase('do_not_have_an_account'); ?>? <a href="" data-toggle="modal" data-target="#signUpModal" data-dismiss="modal"><?php echo get_phrase('sign_up'); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Modal -->


        <!-- Modal -->
        <div class="modal fade" id="forgotModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content sign-in-modal">
                    <div class="modal-header">
                        <h5 class="modal-title">Forgot Password</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="<?php echo site_url('login/forgot_password/frontend'); ?>" method="post">
                            <div class="input-group">
                                <input type="email" name = "email" class="form-control forgot-email" placeholder="E-mail">
                            </div>
                            <div class="forgot-pass-btn">
                                <button type="submit" class="btn btn-primary d-inline-block">Reset Password</button>
                                <span>or</span>
                                <a href="" data-toggle="modal" data-target="#signInModal" data-dismiss="modal">Log In</a>
                            </div>
                        </form>
                        <div class="forgot-recaptcha">

                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Modal -->

        <!-- Modal -->
        <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content sign-in-modal">
                    <div class="modal-header">
                        <h5 class="modal-title"><?php echo get_phrase('sign_up_and_start_learning'); ?>!</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="<?php echo site_url('login/register'); ?>" method="post">
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-user"></i></span>
                                <input type="text" name = "first_name" class="form-control" placeholder="<?php echo get_phrase('first_name'); ?>">
                            </div>
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-user"></i></span>
                                <input type="text" name="last_name" class="form-control" placeholder="<?php echo get_phrase('last_name'); ?>">
                            </div>
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-envelope"></i></span>
                                <input type="email" name="email" class="form-control" placeholder="<?php echo get_phrase('email'); ?>">
                            </div>
                            <div class="input-group">
                                <span class="input-field-icon"><i class="fas fa-lock"></i></span>
                                <input type="password" name="password" class="form-control" placeholder="<?php echo get_phrase('password'); ?>">
                            </div>
                            <div class="custom-control custom-checkbox deal-checkbox">
                                <input type="checkbox" class="custom-control-input" id="dealCheckbox">
                                <label class="custom-control-label" for="dealCheckbox"><?php echo get_phrase('check_here_for_exciting_deals_and_personalized_course_recommendations'); ?></label>
                            </div>
                            <button type="submit" class="btn btn-primary"><?php echo get_phrase('sign_up'); ?></button>
                        </form>
                        <div class="agreement-text">
                            <?php echo get_phrase('by_signing_up_you_agree_to_our'); ?> <a href="#"><?php echo get_phrase('terms_of_use'); ?></a> <?php echo get_phrase('and'); ?> <a href="#"><?php echo get_phrase('privacy_policy'); ?></a>.
                        </div>
                        <div class="account-have">
                            <?php echo get_phrase('already_have_an_account'); ?>? <a href="" data-toggle="modal" data-target="#signInModal" data-dismiss="modal"><?php echo get_phrase('log_in'); ?></a>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Modal -->



        <!-- PAYMENT MODAL -->
        <!-- Modal -->
        <?php
            $paypal_info = json_decode(get_settings('paypal'), true);
            $stripe_info = json_decode(get_settings('stripe_keys'), true);
            if ($paypal_info[0]['active'] == 0) {
                $paypal_status = 'disabled';
            }else {
                $paypal_status = '';
            }
            if ($stripe_info[0]['active'] == 0) {
                $stripe_status = 'disabled';
            }else {
                $stripe_status = '';
            }
         ?>
        <div class="modal fade" id="paymentModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content payment-in-modal">
                    <div class="modal-header">
                        <h5 class="modal-title"><?php echo get_phrase('checkout'); ?>!</h5>
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <form action="<?php echo site_url('home/paypal_checkout'); ?>" method="post">
                                    <input type="hidden" class = "total_price_of_checking_out" name="total_price_of_checking_out" value="">
                                    <button type="submit" class="btn btn-default paypal" <?php echo $paypal_status; ?>><?php echo get_phrase('paypal'); ?></button>
                                </form>
                            </div>
                            <div class="col-md-6">
                                <form action="<?php echo site_url('home/stripe_checkout'); ?>" method="post">
                                    <input type="hidden" class = "total_price_of_checking_out" name="total_price_of_checking_out" value="">
                                    <button type="submit" class="btn btn-primary stripe" <?php echo $stripe_status; ?>><?php echo get_phrase('stripe'); ?></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Modal -->

        <!-- Modal -->
        <div class="modal fade multi-step" id="EditRatingModal" tabindex="-1" role="dialog" aria-hidden="true" reset-on-close="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content edit-rating-modal">
                    <div class="modal-header">
                        <h5 class="modal-title step-1" data-step="1"><?php echo get_phrase('step').' 1'; ?></h5>
                        <h5 class="modal-title step-2" data-step="2"><?php echo get_phrase('step').' 2'; ?></h5>
                        <h5 class="m-progress-stats modal-title">
                            &nbsp;of&nbsp;<span class="m-progress-total"></span>
                        </h5>

                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="m-progress-bar-wrapper">
                        <div class="m-progress-bar">
                        </div>
                    </div>
                    <div class="modal-body step step-1">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="modal-rating-box">
                                        <h4 class="rating-title"><?php echo get_phrase('how_would_you_rate_this_course_overall'); ?>?</h4>
                                        <fieldset class="your-rating">

                                            <input type="radio" id="star5" name="rating" value="5" />
                                            <label class = "full" for="star5"></label>

                                        	<!-- <input type="radio" id="star4half" name="rating" value="4 and a half" />
                                            <label class="half" for="star4half"></label> -->

                                        	<input type="radio" id="star4" name="rating" value="4" />
                                            <label class = "full" for="star4"></label>

                                        	<!-- <input type="radio" id="star3half" name="rating" value="3 and a half" />
                                            <label class="half" for="star3half"></label> -->

                                        	<input type="radio" id="star3" name="rating" value="3" />
                                            <label class = "full" for="star3"></label>

                                        	<!-- <input type="radio" id="star2half" name="rating" value="2 and a half" />
                                            <label class="half" for="star2half"></label> -->

                                        	<input type="radio" id="star2" name="rating" value="2" />
                                            <label class = "full" for="star2"></label>

                                        	<!-- <input type="radio" id="star1half" name="rating" value="1 and a half" />
                                            <label class="half" for="star1half"></label> -->

                                        	<input type="radio" id="star1" name="rating" value="1" />
                                            <label class = "full" for="star1"></label>

                                        	<!-- <input type="radio" id="starhalf" name="rating" value="half" />
                                            <label class="half" for="starhalf"></label> -->

                                        </fieldset>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="modal-course-preview-box">
                                        <div class="card">
                                            <img class="card-img-top img-fluid" id = "course_thumbnail_1" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title" class = "course_title_for_rating" id = "course_title_1"></h5>
                                                <p class="card-text" id = "instructor_details">

                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-body step step-2">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="modal-rating-comment-box">
                                        <h4 class="rating-title"><?php echo get_phrase('write_a_public_review'); ?></h4>
                                        <textarea id = "review_of_a_course" name = "review_of_a_course" placeholder="<?php echo get_phrase('describe_your_experience_what_you_got_out_of_the_course_and_other_helpful_highlights').'. '.get_phrase('what_did_the_instructor_do_well_and_what_could_use_some_improvement') ?>?" maxlength="65000" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="modal-course-preview-box">
                                        <div class="card">
                                            <img class="card-img-top img-fluid" id = "course_thumbnail_2" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title" class = "course_title_for_rating" id = "course_title_2"></h5>
                                                <p class="card-text">
                                                    -
                                                    <?php
                                                        $admin_details = $this->user_model->get_admin_details()->row_array();
                                                        echo $admin_details['first_name'].' '.$admin_details['last_name'];
                                                     ?>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="course_id" id = "course_id_for_rating" value="">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary next step step-1" data-step="1" onclick="sendEvent(2)"><?php echo get_phrase('next'); ?></button>
                        <button type="button" class="btn btn-primary previous step step-2 mr-auto" data-step="2" onclick="sendEvent(1)"><?php echo get_phrase('previous'); ?></button>
                        <button type="button" class="btn btn-primary publish step step-2" onclick="publishRating($('#course_id_for_rating').val())" id = ""><?php echo get_phrase('publish'); ?></button>
                    </div>
                </div>
            </div>
        </div><!-- Modal -->


        <script type="text/javascript">
            function publishRating(course_id) {
                var review = $('#review_of_a_course').val();
                var starRating = 0;
                $('input:radio[name="rating"]:checked').each(function() {
                    starRating = $('input:radio[name="rating"]:checked').val();
                });

                $.ajax({
                    type : 'POST',
                    url  : '<?php echo site_url('home/rate_course'); ?>',
                    data : {course_id : course_id, review : review, starRating : starRating},
                    success : function(response) {
                        console.log(response);
                        $('#EditRatingModal').modal('hide');
                        location.reload();
                    }
                });
            }
        </script>
