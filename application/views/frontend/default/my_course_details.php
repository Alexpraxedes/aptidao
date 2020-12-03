<?php
$course_details = $this->crud_model->get_course_by_id($course_id)->row_array();

if (!isset($lesson_id)) {
    $section_id = $sections[0];

}else {
    $section_id = $this->db->get_where('lesson', array('id' => $lesson_id))->row()->section_id;
}
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-3">
          <div class="text-center" style="margin-top: 10px;">
            <h4><?php echo $course_details['title']; ?></h4>
          </div>
            <div class="accordion" id="accordionExample">
                <?php
                $section_counter = 0;
                foreach ($sections as $section):
                    $section_counter++;
                    $section_details = $this->crud_model->get_section('section', $section)->row_array();
                    $lessons = $this->crud_model->get_lessons('section', $section)->result_array();?>
                    <div class="card" style="margin:10px 0px;">
                        <div class="card-header" id="<?php echo 'heading-'.$section; ?>">

                            <h5 class="mb-0">
                                <button class="btn btn-link w-100 text-left" type="button" data-toggle="collapse" data-target="<?php echo '#collapse-'.$section; ?>" aria-expanded="true" aria-controls="<?php echo 'collapse-'.$section; ?>" style="color: #535a66; background: none; border: none; white-space: normal;">
                                    <h6 style="color: #686f7a; font-size: 15px;">section <?php echo $section_counter;?></h6>
                                    <?php echo $section_details['title']; ?>
                                </button>
                            </h5>
                        </div>

                        <div id="<?php echo 'collapse-'.$section; ?>" class="collapse <?php if($section_id == $section) echo 'show'; ?>" aria-labelledby="<?php echo 'heading-'.$section; ?>" data-parent="#accordionExample">
                            <div class="card-body"  style="padding:0px;">
                                <table style="width: 100%;">
                                    <?php foreach ($lessons as $lesson): ?>

                                        <tr style="width: 100%; padding: 5px 0px;">
                                            <td style="text-align: left;padding:10px; border-bottom:1px solid #ccc;">
                                                <a href="<?php echo site_url('home/lesson/'.slugify($course_details['title']).'/'.$course_id.'/'.$lesson['id']); ?>" id = "<?php echo $lesson['id']; ?>">
                                                    <i class="fa fa-play" style="font-size: 12px;color: #909090;padding: 10px;"></i>
                                                    <?php if ($lesson['lesson_type'] != 'other'):?>
                                                      <?php echo $lesson['title']; ?>
                                                    <?php else: ?>
                                                      <?php echo $lesson['title']; ?> <i class="fa fa-paperclip"></i>
                                                    <?php endif; ?>

                                                </a>
                                            </td>
                                            <td style="text-align: right; padding:10px; border-bottom:1px solid #ccc;">
                                                <span class="lesson_duration">
                                                  <?php if ($lesson['lesson_type'] != 'other'): ?>
                                                      <?php echo $lesson['duration']; ?>
                                                  <?php else:
                                                    $tmp           = explode('.', $lesson['attachment']);
                                                    $fileExtension = strtolower(end($tmp));?>

                                                    <?php if ($fileExtension == 'jpg' || $fileExtension == 'jpeg' || $fileExtension == 'png' || $fileExtension == 'bmp' || $fileExtension == 'svg'): ?>
                                                      <i class="fa fa-file-image-o"></i>
                                                    <?php elseif($fileExtension == 'pdf'): ?>
                                                      <i class="fa fa-file-pdf-o"></i>
                                                    <?php elseif($fileExtension == 'doc' || $fileExtension == 'docx'): ?>
                                                      <i class="fa fa-file-word-o"></i>
                                                    <?php elseif($fileExtension == 'txt'): ?>
                                                      <i class="fa fa-file-text"></i>
                                                    <?php else: ?>
                                                      <i class="fa fa-file"></i>
                                                    <?php endif; ?>

                                                  <?php endif; ?>
                                                </span>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </table>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col-lg-9 align-self-center" id = "video_player_area">
            <!-- <div class="" style="background-color: #333;"> -->
            <div class="" style="text-align: center;">
                <?php
                  $lesson_details = $this->crud_model->get_lessons('lesson', $lesson_id)->row_array();
                  $lesson_thumbnail_url = $this->crud_model->get_lesson_thumbnail_url($lesson_id);

                  if($lesson_details['lesson_type'] != 'other'):
                    $video_url = $lesson_details['video_url'];
                    $provider = $lesson_details['video_type'];
                  ?>
                  <?php if (strtolower($provider) == 'youtube'): ?>
                    <!------------- PLYR.IO ------------>
                      <link rel="stylesheet" href="<?php echo base_url();?>assets/global/plyr/plyr.css">

                      <div class="plyr__video-embed" id="player">
                          <iframe height="500" src="<?php echo $video_url;?>?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1" allowfullscreen allowtransparency allow="autoplay"></iframe>
                      </div>

                      <script src="<?php echo base_url();?>assets/global/plyr/plyr.js"></script>
                      <script>const player = new Plyr('#player');</script>
                    <!------------- PLYR.IO ------------>
                  <?php elseif (strtolower($provider) == 'vimeo'):
                    $video_details = $this->video_model->getVideoDetails($video_url);
                    $video_id = $video_details['video_id'];?>
                    <!------------- PLYR.IO ------------>
                      <link rel="stylesheet" href="<?php echo base_url();?>assets/global/plyr/plyr.css">
                      <div class="plyr__video-embed" id="player">
                          <iframe height="500" src="https://player.vimeo.com/video/<?php echo $video_id; ?>?loop=false&amp;byline=false&amp;portrait=false&amp;title=false&amp;speed=true&amp;transparent=0&amp;gesture=media" allowfullscreen allowtransparency allow="autoplay"></iframe>
                      </div>

                      <script src="<?php echo base_url();?>assets/global/plyr/plyr.js"></script>
                      <script>const player = new Plyr('#player');</script>
                    <!------------- PLYR.IO ------------>
                  <?php else :?>
                    <!------------- PLYR.IO ------------>
                      <link rel="stylesheet" href="<?php echo base_url();?>assets/global/plyr/plyr.css">
                      <video poster="<?php echo $lesson_thumbnail_url;?>" id="player" playsinline controls>
                      <?php if (get_video_extension($video_url) == 'mp4'): ?>
                        <source src="<?php echo $video_url; ?>" type="video/mp4">
                      <?php elseif (get_video_extension($video_url) == 'webm'): ?>
                        <source src="<?php echo $video_url; ?>" type="video/webm">
                      <?php else: ?>
                        <h4><?php get_phrase('video_url_is_not_supported'); ?></h4>
                      <?php endif; ?>
                      </video>

                      <script src="<?php echo base_url();?>assets/global/plyr/plyr.js"></script>
                      <script>const player = new Plyr('#player');</script>
                    <!------------- PLYR.IO ------------>
                  <?php endif; ?>
                <?php else: ?>
                  <div>
                    <a href="<?php echo base_url().'uploads/lesson_files/'.$lesson_details['attachment']; ?>" class="btn btn-sign-up" download style="color: #fff;">
                        <i class="fa fa-download" style="font-size: 20px;"></i> <?php echo get_phrase('download').' '.$lesson_details['title']; ?>
                    </a>
                  </div>
                <?php endif; ?>
           </div>

           <div class="" style="margin: 20px 0;">
             <div class="card">
              <div class="card-body">
                <h5 class="card-title"><?php echo get_phrase('note'); ?>:</h5>
                <?php if ($lesson_details['summary'] == ""): ?>
                  <p class="card-text"><?php echo get_phrase('no_summary_found'); ?>.</p>
                <?php else: ?>
                  <p class="card-text"><?php echo $lesson_details['summary']; ?></p>
                <?php endif; ?>
              </div>
            </div>
           </div>
        </div>
   </div>
</div>
