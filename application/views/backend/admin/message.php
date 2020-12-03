<hr />
<div class="mail-env">

    <!-- Mail Body -->
    <div class="mail-body">

        <!-- message page body -->
        <?php include $message_inner_page_name.'.php'; ?>
    </div>

    <!-- Sidebar -->
    <div class="mail-sidebar" style="min-height: 800px;">

        <!-- compose new email button -->
        <div class="mail-sidebar-row hidden-xs">
            <a href="<?php echo site_url('admin/message/message_new'); ?>" class="btn btn-success btn-block">
                <i class="fa fa-pencil"></i>&nbsp;
                <?php echo get_phrase('new_message'); ?>
            </a>
        </div>

        <!-- message user inbox list -->
        <ul class="mail-menu">

            <?php
            $current_user = $this->session->userdata('user_id');
            $this->db->where('sender', $current_user);
            $this->db->or_where('reciever', $current_user);
            $message_threads = $this->db->get('message_thread')->result_array();
            foreach ($message_threads as $row):

                // defining the user to show
                if ($row['sender'] == $current_user)
                    $user_to_show_id = $row['reciever'];
                if ($row['reciever'] == $current_user)
                    $user_to_show_id = $row['sender'];

                $unread_message_number = $this->crud_model->count_unread_message_of_thread($row['message_thread_code']);
                ?>
                <li class="<?php if (isset($current_message_thread_code) && $current_message_thread_code == $row['message_thread_code']) echo 'active'; ?>">
                    <a href="<?php echo site_url('admin/message/message_read/'.$row['message_thread_code']); ?>" style="padding:12px;">
                        <i class="entypo-dot"></i>

                        <?php
                            $user_to_show_details = $this->user_model->get_all_user($user_to_show_id)->row_array();
                            echo $user_to_show_details['first_name'].' '.$user_to_show_details['last_name'];
                        ?>

                        <?php if ($unread_message_number > 0): ?>
                            <span class="badge badge-info pull-right">
                                <?php echo $unread_message_number; ?>
                            </span>
                        <?php endif; ?>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>

    </div>

</div>
