<form  class="form-horizontal form-groups-bordered" action="<?php echo site_url('admin/change_course_status/'.$param2); ?>" method="post">
  <div class="form-group">
    <label class="col-sm-3 control-label"><?php echo get_phrase('mail_subject'); ?></label>
      <div class="col-sm-7">
          <input type="text" name = "mail_subject" class="form-control" placeholder="<?php echo get_phrase('mail_subject'); ?>" required>
      </div>
  </div>

  <div class="form-group">
    <label class="col-sm-3 control-label"><?php echo get_phrase('mail_body'); ?></label>
      <div class="col-sm-7">
          <textarea name = "mail_body" class="form-control" required rows="6" placeholder="<?php echo get_phrase('mail_subject'); ?>"></textarea>
      </div>
  </div>

  <input type="hidden" name="course_id" value="<?php echo $param3; ?>">
  <input type="hidden" name="default_category_id" value="<?php echo $param4; ?>">
  <input type="hidden" name="default_sub_category_id" value="<?php echo $param5; ?>">

  <div class="form-group">
      <div class="col-sm-offset-3 col-sm-5">
          <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('send_mail'); ?></button>
      </div>
  </div>
</form>
