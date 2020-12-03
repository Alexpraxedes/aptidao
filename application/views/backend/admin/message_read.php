<div class="" style="height: 300px; overflow-y: auto;">
    <?php
    $messages = $this->db->get_where('message', array('message_thread_code' => $current_message_thread_code))->result_array();
    foreach ($messages as $row):
        $sender_id = $row['sender'];
        ?>
        <div class="mail-info">

            <div class="mail-sender " style="padding:7px;">

                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="<?php echo $this->user_model->get_user_image_url($sender_id); ?>" class="img-circle" width="30">
                    <span>
                        <?php
                        $sender_details = $this->user_model->get_all_user($sender_id)->row_array();
                        echo $sender_details['first_name'].' '.$sender_details['last_name'];
                        ?>
                    </span>
                </a>
            </div>

            <div class="mail-date" style="padding:7px;">
                <?php echo date("d M, Y", $row['timestamp']); ?>
            </div>

        </div>

        <div class="mail-text">
            <p> <?php echo $row['message']; ?></p>
        </div>

    <?php endforeach; ?>
</div>
<?php echo form_open(site_url('admin/message/send_reply/' . $current_message_thread_code), array('enctype' => 'multipart/form-data')); ?>
<div class="mail-reply">
    <div class="compose-message-editor">
        <textarea rows="5" class="form-control wysihtml5" data-stylesheet-url="<?php echo base_url('assets/backend/css/wysihtml5-color.css');?>" name="message"
            placeholder="<?php echo get_phrase('reply_message'); ?>" id="sample_wysiwyg" required></textarea>
        </div>
        <br>
        <button type="submit" class="btn btn-success pull-right">
            <i class="fa fa-reply"></i> &nbsp;<?php echo get_phrase('reply'); ?>
        </button>
        <br><br>
    </div>
</form>
