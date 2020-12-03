<?php
    $lesson_details = $this->crud_model->get_lessons('lesson', $lesson_id)->row_array();
    $sections = $this->crud_model->get_section('course', $course_id)->result_array();
?>

<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="<?php echo site_url('admin/lessons/'.$course_id); ?>" class=""><?php echo get_phrase('lessons'); ?></a> </li>
    <li><a href="#" class="active"><?php echo get_phrase('edit_lesson'); ?></a> </li>
</ol>
<h2><?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
            <div class="panel-heading">
				<div class="panel-title">
					<?php echo get_phrase('edit_lesson_form'); ?>
				</div>
			</div>
			<div class="panel-body">
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <form role="form" class="form-horizontal form-groups-bordered" action="<?php echo site_url('admin/lessons/'.$course_id.'/edit'.'/'.$lesson_id); ?>" method="post" enctype="multipart/form-data">

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('title'); ?></label>
                            <div class="col-sm-5">
                                <input type="text" name = "title" class="form-control" required value="<?php echo $lesson_details['title']; ?>">
                            </div>
                        </div>

                        <input type="hidden" name="course_id" value="<?php echo $course_id; ?>">

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('section'); ?></label>
                            <div class="col-sm-5">
                                <select class="form-control" id="section_id" name="section_id" data-init-plugin="select2" required>
                                    <?php foreach ($sections as $section): ?>
                                        <option value="<?php echo $section['id']; ?>" <?php if($lesson_details['section_id'] == $section['id']) echo 'selected'; ?>><?php echo $section['title']; ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('lesson_type'); ?></label>
                            <div class="col-sm-5">
                                <select class="form-control" id="lesson_type" name="lesson_type" required onchange="show_lesson_type_form(this.value)">
                                    <option value=""><?php echo get_phrase('select_type_of_lesson'); ?></option>
                                    <option value="video-url" <?php if($lesson_details['attachment_type'] == 'url') echo 'selected'; ?>><?php echo get_phrase('video_url'); ?></option>
                                    <option value="other-txt" <?php if($lesson_details['attachment_type'] == 'txt') echo 'selected'; ?>><?php echo get_phrase('text_file'); ?></option>
                                    <option value="other-pdf" <?php if($lesson_details['attachment_type'] == 'pdf') echo 'selected'; ?>><?php echo get_phrase('pdf_file'); ?></option>
                                    <option value="other-doc" <?php if($lesson_details['attachment_type'] == 'doc') echo 'selected'; ?>><?php echo get_phrase('document_file'); ?></option>
                                    <option value="other-img" <?php if($lesson_details['attachment_type'] == 'img') echo 'selected'; ?>><?php echo get_phrase('image_file'); ?></option>
                                </select>
                            </div>
                        </div>

                        <div class="" id="video" <?php if($lesson_details['lesson_type'] != 'video'):?> style="display: none;" <?php endif; ?>>

                          <div class="form-group">
                              <label class="col-sm-3 control-label"><?php echo get_phrase('lesson_provider'); ?></label>
                              <div class="col-sm-5">
                                  <select class="form-control" id="lesson_provider" name="lesson_provider" onchange="check_video_provider(this.value)">
                                      <option value=""><?php echo get_phrase('select_lesson_provider'); ?></option>
                                      <option value="youtube" <?php if(strtolower($lesson_details['video_type']) == 'youtube') echo 'selected'; ?>><?php echo get_phrase('youtube'); ?></option>
                                      <option value="vimeo" <?php if(strtolower($lesson_details['video_type']) == 'vimeo') echo 'selected'; ?>><?php echo get_phrase('vimeo'); ?></option>
                                      <option value="html5" <?php if(strtolower($lesson_details['video_type']) == 'html5') echo 'selected'; ?>>HTML5</option>
                                  </select>
                              </div>
                          </div>

                          <div class="" id = "youtube_vimeo" <?php if(strtolower($lesson_details['video_type']) == 'vimeo' || strtolower($lesson_details['video_type']) == 'youtube'):?>  <?php else: ?> style="display: none;" <?php endif; ?>>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('video_url'); ?></label>
                                <div class="col-sm-5">
                                    <input type="text" id = "video_url" name = "video_url" class="form-control" onblur="ajax_get_video_details(this.value)"  value="<?php echo $lesson_details['video_url']; ?>">
                                    <label class="form-label" id = "perloader" style ="margin-top: 4px; display: none;"><i class="fa fa-refresh fa-spin" aria-hidden="true">&nbsp;</i><?php echo get_phrase('analyzing_the_url'); ?></label>
                                    <label class="form-label" id = "invalid_url" style ="margin-top: 4px; color: red; display: none;"><?php echo get_phrase('invalid_url').'. '.get_phrase('your_video_source_has_to_be_either_youtube_or_vimeo'); ?></label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('duration'); ?></label>
                                <div class="col-sm-5">
                                    <input type="text" name = "duration" id = "duration" class="form-control" value="<?php echo $lesson_details['duration']; ?>">
                                </div>
                            </div>
                          </div>

                          <div class="" id = "html5" <?php if($lesson_details['video_type'] != 'html5'): ?> style="display: none;" <?php endif; ?>>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('video_url'); ?></label>
                                <div class="col-sm-5">
                                    <input type="text" id = "html5_video_url" name = "html5_video_url" class="form-control" value="<?php echo $lesson_details['video_url']; ?>">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo get_phrase('duration'); ?></label>
                                <div class="col-sm-5">
                                    <!-- <input type="text" name = "html5_duration" id = "html5_duration" class="form-control" value="<?php echo $lesson_details['duration']; ?>"> -->
                                    <input type="text" class="form-control timepicker" name="html5_duration" id="html5_duration" data-template="dropdown" data-show-seconds="true" data-default-time="00:00:05" data-show-meridian="false" data-minute-step="1" data-second-step="1" value="<?php echo $lesson_details['duration']; ?>"/>
                                </div>
                            </div>
                          </div>
                        </div>

                        <div class="" id = "other" <?php if($lesson_details['lesson_type'] != 'other'):?> style="display: none;" <?php endif; ?>>
                          <div class="form-group">
                              <label class="col-sm-3 control-label"><?php echo get_phrase('attachment'); ?></label>
                              <div class="col-sm-5">
                                  <input type="file" name = "attachment" class="form-control">
                              </div>
                          </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('thumbnail'); ?></label>
                            <div class="col-sm-5">
                                <input type="file" name = "thumbnail" class="form-control">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label"><?php echo get_phrase('summary'); ?></label>
                            <div class="col-sm-5">
                                <textarea rows="5" class="form-control wysihtml5" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>"
                                  name="summary" placeholder="<?php echo get_phrase('summary'); ?>"
                                  id="sample_wysiwyg1"><?php echo $lesson_details['summary']; ?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-5">
                                <button class = "btn btn-success" type="submit" name="button"><?php echo get_phrase('edit_lesson'); ?></button>
                            </div>
                        </div>

                    </form>
                </div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    function ajax_get_section(course_id) {
        $.ajax({
            url: '<?php echo site_url('admin/ajax_get_section/');?>' + course_id ,
            success: function(response)
            {
                jQuery('#section_id').html(response);
            }
        });
    }

    function ajax_get_video_details(video_url) {
        $('#perloader').show();
        if(checkURLValidity(video_url)){
            $.ajax({
                url: '<?php echo site_url('admin/ajax_get_video_details');?>',
                type : 'POST',
                data : {video_url : video_url},
                success: function(response)
                {
                    jQuery('#duration').val(response);
                    $('#perloader').hide();
                    $('#invalid_url').hide();
                }
            });
        }else {
            $('#invalid_url').show();
            $('#perloader').hide();
            jQuery('#duration').val('');
        }
    }

    function checkURLValidity(video_url) {
        var youtubePregMatch = /^(?:https?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:embed\/|v\/|watch\?v=|watch\?.+&v=))((\w|-){11})(?:\S+)?$/;
        var vimeoPregMatch = /^(http\:\/\/|https\:\/\/)?(www\.)?(vimeo\.com\/)([0-9]+)$/;
        if (video_url.match(youtubePregMatch)) {
            return true;
        }
        else if (vimeoPregMatch.test(video_url)) {
            return true;
        }
        else {
            return false;
        }
    }

    function show_lesson_type_form(param) {
      var checker = param.split('-');
      var lesson_type = checker[0];
      if (lesson_type === "video") {
          $('#other').hide();
          $('#video').show();
      }else if (lesson_type === "other") {
          $('#video').hide();
          $('#other').show();
      }else {
        $('#video').hide();
        $('#other').hide();
      }
    }

    function check_video_provider(provider) {
      if (provider === 'youtube' || provider === 'vimeo') {
        $('#html5').hide();
        $('#youtube_vimeo').show();
      }else if(provider === 'html5'){
        $('#youtube_vimeo').hide();
        $('#html5').show();
      }else {
        $('#youtube_vimeo').hide();
        $('#html5').hide();
      }
    }
</script>
