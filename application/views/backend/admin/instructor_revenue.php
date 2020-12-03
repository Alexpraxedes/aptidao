<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('instructor_revenue'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary" data-collapsed="0">
            <div class="panel-body">
                <!-- REPORT DATE RANGE SELECTOR STARTS-->
                <div class="form-group">

                	<div class="col-sm-4 col-sm-offset-4">
                        <form class="form-inline" action="<?php echo site_url('admin/instructor_revenue/filter_by_date_range') ?>" method="post">
                            <div class="col-md-10">
                                <div class="daterange daterange-inline add-ranges" data-format="D MMMM, YYYY" style="cursor:text;"
                        			data-start-date="<?php echo date("d F, Y" , $timestamp_start);?>" data-end-date="<?php echo date("d F, Y" , $timestamp_end);?>">
                        			<i class="entypo-calendar"></i>
                        				<span id="date_range_selector" style="font-size: 12px;color:#000;">
                        					<?php echo date("d M, Y" , $timestamp_start) . " - " . date("d M, Y" , $timestamp_end);?>
                        				</span>
                        				<input id="date_range" type="hidden" name="date_range" value="<?php echo date("d F, Y" , $timestamp_start) . " - " . date("d F, Y" , $timestamp_end);?>">
                        		</div>
                            </div>
                            <div class="col-md-1">
                                <button type="submit" class="btn btn-info" id="submit-button"
                        			onclick="update_date_range();">
                        			<?php echo get_phrase('filter');?>
                        				</button>
                            </div>
                        </form>
                	</div>
                </div>
                <br>
                <hr>
                <table class="table table-bordered datatable" id="table-1">
                    <thead>
                        <tr>
                            <th><?php echo get_phrase('enrolled_course'); ?></th>
                            <th><?php echo get_phrase('instructor'); ?></th>
                            <th><?php echo get_phrase('total_amount'); ?></th>
                            <th><?php echo get_phrase('instructor_revenue'); ?></th>
                            <th><?php echo get_phrase('status'); ?></th>
                            <th><?php echo get_phrase('enrollment_date'); ?></th>
                            <th width = "20%"><?php echo get_phrase('actions'); ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($enroll_history as $enroll):
                            $user_data = $this->db->get_where('users', array('id' => $enroll['user_id']))->row_array();
                            $course_data = $this->db->get_where('course', array('id' => $enroll['course_id']))->row_array();?>
                            <?php
                                $paypal_keys          = json_decode($user_data['paypal_keys'], true);
                                $stripe_keys          = json_decode($user_data['stripe_keys'], true);
                             ?>
                            <tr class="gradeU">
                                <td><?php echo $course_data['title']; ?></td>
                                <td><?php echo $user_data['first_name'].' '.$user_data['last_name']; ?></td>
                                <td><?php echo currency($enroll['amount']); ?></td>
                                <td><?php echo currency($enroll['instructor_revenue']); ?></td>
                                <td style="text-align: center;">
                                    <?php if ($enroll['instructor_payment_status'] == 0): ?>
                                        <div class="label label-secondary"><?php echo get_phrase('pending'); ?></div>
                                    <?php elseif($enroll['instructor_payment_status'] == 1): ?>
                                        <div class="label label-success"><?php echo get_phrase('paid'); ?></div>
                                    <?php endif; ?>
                                </td>
                                <td><?php echo date('D, d-M-Y', $enroll['date_added']); ?></td>
                                <td style="text-align: center;">
                                    <?php if ($enroll['instructor_payment_status'] == 0): ?>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <?php if ($paypal_keys[0]['production_client_id'] != ""): ?>
                                                    <form action="<?php echo site_url('admin/paypal_checkout_for_instructor_revenue'); ?>" method="post">
                                                        <input type="hidden" name="amount_to_pay"        value="<?php echo $enroll['instructor_revenue']; ?>">
                                                        <input type="hidden" name="payment_id"           value="<?php echo $enroll['id']; ?>">
                                                        <input type="hidden" name="instructor_name"      value="<?php echo $user_data['first_name'].' '.$user_data['last_name']; ?>">
                                                        <input type="hidden" name="course_title"         value="<?php echo $course_data['title']; ?>">
                                                        <input type="hidden" name="production_client_id" value="<?php echo $paypal_keys[0]['production_client_id']; ?>">
                                                        <input type="submit" class="btn btn-info"        value="<?php echo get_phrase('pay_with_paypal'); ?>">
                                                    </form>
                                                <?php else: ?>
                                                    <button type="button" class = "btn btn-danger" name="button" onclick="alert('<?php echo get_phrase('this_instructor_has_not_provided_valid_paypal_client_id'); ?>')"><?php echo get_phrase('pay_with_paypal'); ?></button>
                                                <?php endif; ?>
                                            </div>
                                            <div class="col-md-6">
                                                <?php if ($stripe_keys[0]['public_live_key'] != "" && $stripe_keys[0]['secret_live_key']): ?>
                                                    <form action="<?php echo site_url('admin/stripe_checkout_for_instructor_revenue'); ?>" method="post">
                                                        <input type="hidden" name="amount_to_pay"   value="<?php echo $enroll['instructor_revenue']; ?>">
                                                        <input type="hidden" name="payment_id"      value="<?php echo $enroll['id']; ?>">
                                                        <input type="hidden" name="instructor_name" value="<?php echo $user_data['first_name'].' '.$user_data['last_name']; ?>">
                                                        <input type="hidden" name="course_title"    value="<?php echo $course_data['title']; ?>">
                                                        <input type="hidden" name="public_live_key" value="<?php echo $stripe_keys[0]['public_live_key']; ?>">
                                                        <input type="hidden" name="secret_live_key" value="<?php echo $stripe_keys[0]['secret_live_key']; ?>">
                                                        <input type="submit" class="btn btn-info"   value="<?php echo get_phrase('pay_with_stripe'); ?>">
                                                    </form>
                                                <?php else: ?>
                                                    <button type="button" class = "btn btn-danger" name="button" onclick="alert('<?php echo get_phrase('this_instructor_has_not_provided_valid_public_key_or_secret_key'); ?>')"><?php echo get_phrase('pay_with_stripe'); ?></button>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
function update_date_range()
{
	var x = $("#date_range_selector").html();
	$("#date_range").val(x);
}
</script>
