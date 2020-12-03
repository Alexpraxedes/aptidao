<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
    public function __construct()
    {
        parent::__construct();

        $this->load->database();
        $this->load->library('session');
        /*cache control*/
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }

    public function index() {
        if ($this->session->userdata('admin_login') == true) {
            echo 'true';
            $this->dashboard();
        }else {
            redirect(site_url('login'), 'refresh');
        }
    }

    public function dashboard() {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'dashboard');
        $page_data['page_name'] = 'dashboard';
        $page_data['page_title'] = get_phrase('dashboard');
        $this->load->view('backend/index.php', $page_data);
    }

    public function blank_template() {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'blank_template');
        $page_data['page_name'] = 'blank_template';
        $this->load->view('backend/index.php', $page_data);
    }

    public function lockscreen($status = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($status == "lock") {
            $this->load->view('backend/admin/lockscreen.php');
        }else if($status == "unlock") {
            if ($this->user_model->unlock_screen_by_password($this->input->post('password'))) {
                redirect(site_url('admin/dashboard'), 'refresh');
            }else {
                $this->session->set_flashdata('error_message',get_phrase('invalid_password'));
                redirect(site_url('admin/lockscreen/lock'), 'refresh');
            }
        }
    }

    public function categories($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'categories');
        if ($param1 == 'add') {
            $this->crud_model->add_category();
            $this->session->set_flashdata('flash_message', get_phrase('data_added_successfully'));
            redirect(site_url('admin/categories'), 'refresh');
        }
        elseif ($param1 == "edit") {
            $this->crud_model->edit_category($param2);
            $this->session->set_flashdata('flash_message', get_phrase('data_updated_successfully'));
            redirect(site_url('admin/categories'), 'refresh');
        }
        elseif ($param1 == "delete") {
            $this->crud_model->delete_category($param2);
            $this->session->set_flashdata('flash_message', get_phrase('data_deleted'));
            redirect(site_url('admin/categories'), 'refresh');
        }
        $page_data['page_name'] = 'categories';
        $page_data['page_title'] = get_phrase('categories');
        $page_data['categories'] = $this->crud_model->get_categories($param2);
        $this->load->view('backend/index', $page_data);
    }

    public function category_form($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($param1 == "add_category") {
            $page_data['page_name'] = 'category_add';
            $page_data['page_title'] = get_phrase('add_category');
        }
        if ($param1 == "edit_category") {
            $page_data['page_name'] = 'category_edit';
            $page_data['page_title'] = get_phrase('edit_category');
            $page_data['category_id'] = $param2;
        }

        $this->load->view('backend/index', $page_data);
    }
    public function sub_categories($selected_category_id = 0, $action = "", $sub_category_id = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'sub_categories');
        if ($action == 'add') {
            $this->crud_model->add_sub_category();
            $this->session->set_flashdata('flash_message', get_phrase('data_added_successfully'));
            redirect(site_url('admin/sub_categories'), 'refresh');
        }
        elseif ($action == 'edit') {
            $this->crud_model->edit_sub_category($sub_category_id);
            $this->session->set_flashdata('flash_message', get_phrase('data_updated_successfully'));
            redirect(site_url('admin/sub_categories'), 'refresh');
        }
        elseif ($action == 'delete') {
            $this->crud_model->delete_category($sub_category_id);
            $this->session->set_flashdata('flash_message', get_phrase('data_deleted'));
            redirect(site_url('admin/sub_categories/'.$selected_category_id), 'refresh');
        }
        $page_data['page_name'] = 'sub_categories';
        $page_data['page_title'] = get_phrase('sub_categories');
        $page_data['selected_category_id']  = $selected_category_id;
        $page_data['categories'] = $this->crud_model->get_categories();
        $this->load->view('backend/index', $page_data);
    }

    public function sub_categories_by_category_id($category_id = 0) {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        $category_id = $this->input->post('category_id');
        redirect(site_url("admin/sub_categories/$category_id"), 'refresh');
    }

    public function sub_category_form($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'add_sub_category') {
            $page_data['page_name'] = 'sub_category_add';
            $page_data['page_title'] = get_phrase('add_sub_category');
        }
        elseif ($param1 == 'edit_sub_category') {
            $page_data['page_name'] = 'sub_category_edit';
            $page_data['page_title'] = get_phrase('edit_sub_category');
            $page_data['sub_category_id'] = $param2;
        }
        $page_data['categories'] = $this->crud_model->get_categories();
        $this->load->view('backend/index', $page_data);
    }

    public function users($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($param1 == "add") {
            $this->user_model->add_user();
            redirect(site_url('admin/users'), 'refresh');
        }
        elseif ($param1 == "edit") {
            $this->user_model->edit_user($param2);
            redirect(site_url('admin/users'), 'refresh');
        }
        elseif ($param1 == "delete") {
            $this->user_model->delete_user($param2);
            redirect(site_url('admin/users'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'users');
        $page_data['page_name'] = 'users';
        $page_data['page_title'] = get_phrase('student');
        $page_data['users'] = $this->user_model->get_user($param2);
        $this->load->view('backend/index', $page_data);
    }

    public function user_form($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'add_user_form') {
            $page_data['page_name'] = 'user_add';
            $page_data['page_title'] = get_phrase('student_add');
            $this->load->view('backend/index', $page_data);
        }
        elseif ($param1 == 'edit_user_form') {
            $page_data['page_name'] = 'user_edit';
            $page_data['user_id'] = $param2;
            $page_data['page_title'] = get_phrase('student_edit');
            $this->load->view('backend/index', $page_data);
        }
    }

    public function enroll_history($param1 = "") {
      if ($this->session->userdata('admin_login') != true) {
          redirect(site_url('login'), 'refresh');
      }

      if ($param1 != "") {
          $date_range                   = $this->input->post('date_range');
          $date_range                   = explode(" - ", $date_range);
          $page_data['timestamp_start'] = strtotime($date_range[0]);
          $page_data['timestamp_end']   = strtotime($date_range[1]);
      }else {
          $page_data['timestamp_start'] = strtotime('-29 days', time());
          $page_data['timestamp_end']   = strtotime(date("m/d/Y"));
      }
      $this->session->set_userdata('last_page', 'enroll_history');
      $page_data['page_name'] = 'enroll_history';
      $page_data['enroll_history'] = $this->crud_model->enroll_history_by_date_range($page_data['timestamp_start'], $page_data['timestamp_end']);
      $page_data['page_title'] = get_phrase('enroll_history');
      $this->load->view('backend/index', $page_data);
    }

    public function enroll_student($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($param1 == 'enroll') {
            $this->crud_model->enroll_a_student_manually();
            redirect(site_url('admin/enroll_history'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'enroll_student');
        $page_data['page_name'] = 'enroll_student';
        $page_data['page_title'] = get_phrase('enroll_a_student');
        $this->load->view('backend/index', $page_data);
    }
    public function admin_revenue($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 != "") {
            $date_range                   = $this->input->post('date_range');
            $date_range                   = explode(" - ", $date_range);
            $page_data['timestamp_start'] = strtotime($date_range[0]);
            $page_data['timestamp_end']   = strtotime($date_range[1]);
        }else {
            $page_data['timestamp_start'] = strtotime('-29 days', time());
            $page_data['timestamp_end']   = strtotime(date("m/d/Y"));
        }

        $this->session->set_userdata('last_page', 'admin_revenue');
        $page_data['page_name'] = 'admin_revenue';
        $page_data['enroll_history'] = $this->crud_model->get_revenue_by_user_type($page_data['timestamp_start'], $page_data['timestamp_end'], 'admin_revenue');
        $page_data['page_title'] = get_phrase('admin_revenue');
        $this->load->view('backend/index', $page_data);
    }

    public function instructor_revenue($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 != "") {
            $date_range                   = $this->input->post('date_range');
            $date_range                   = explode(" - ", $date_range);
            $page_data['timestamp_start'] = strtotime($date_range[0]);
            $page_data['timestamp_end']   = strtotime($date_range[1]);
        }else {
            $page_data['timestamp_start'] = strtotime('-29 days', time());
            $page_data['timestamp_end']   = strtotime(date("m/d/Y"));
        }
        $this->session->set_userdata('last_page', 'instructor_revenue');
        $page_data['page_name'] = 'instructor_revenue';
        $page_data['enroll_history'] = $this->crud_model->get_revenue_by_user_type($page_data['timestamp_start'], $page_data['timestamp_end'], 'instructor_revenue');
        $page_data['page_title'] = get_phrase('instructor_revenue');
        $this->load->view('backend/index', $page_data);
    }

    public function enroll_history_delete($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        $this->crud_model->delete_enroll_history($param1);
        $this->session->set_flashdata('flash_message', get_phrase('data_deleted_successfully'));
        redirect(site_url('admin/enroll_history'), 'refresh');
    }

    public function purchase_history() {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'purchase_history');
        $page_data['page_name'] = 'purchase_history';
        $page_data['purchase_history'] = $this->crud_model->purchase_history();
        $page_data['page_title'] = get_phrase('purchase_history');
        $this->load->view('backend/index', $page_data);
    }

    public function system_settings($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'system_update') {
            $this->crud_model->update_system_settings();
            $this->session->set_flashdata('flash_message', get_phrase('system_settings_updated'));
            redirect(site_url('admin/system_settings'), 'refresh');
        }

        if ($param1 == 'logo_upload') {
            move_uploaded_file($_FILES['logo']['tmp_name'], 'assets/backend/logo.png');
            $this->session->set_flashdata('flash_message', get_phrase('backend_logo_updated'));
           redirect(site_url('admin/system_settings'), 'refresh');
        }

        if ($param1 == 'favicon_upload') {
            move_uploaded_file($_FILES['favicon']['tmp_name'], 'assets/favicon.png');
            $this->session->set_flashdata('flash_message', get_phrase('favicon_updated'));
           redirect(site_url('admin/system_settings'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'system_settings');
        $page_data['page_name'] = 'system_settings';
        $page_data['page_title'] = get_phrase('system_settings');
        $this->load->view('backend/index', $page_data);
    }

    public function frontend_settings($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'frontend_update') {
            $this->crud_model->update_frontend_settings();
            $this->session->set_flashdata('flash_message', get_phrase('frontend_settings_updated'));
            redirect(site_url('admin/frontend_settings'), 'refresh');
        }

        if ($param1 == 'banner_image_update') {
            $this->crud_model->update_frontend_banner();
            $this->session->set_flashdata('flash_message', get_phrase('banner_image_update'));
            redirect(site_url('admin/frontend_settings'), 'refresh');
        }

        if ($param1 == 'logo_upload') {
          move_uploaded_file($_FILES['logo']['tmp_name'], 'assets/frontend/img/logo.png');
          $this->session->set_flashdata('flash_message', get_phrase('frontend_logo_updated'));
            redirect(site_url('admin/frontend_settings'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'frontend_settings');
        $page_data['page_name'] = 'frontend_settings';
        $page_data['page_title'] = get_phrase('frontend_settings');
        $this->load->view('backend/index', $page_data);
    }
    public function payment_settings($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'update') {
            $this->crud_model->update_payment_settings();
            redirect(site_url('admin/payment_settings'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'payment_settings');
        $page_data['page_name'] = 'payment_settings';
        $page_data['page_title'] = get_phrase('payment_settings');
        $this->load->view('backend/index', $page_data);
    }

    public function smtp_settings($param1 = "") {
      if ($this->session->userdata('admin_login') != true) {
          redirect(site_url('login'), 'refresh');
      }

      if ($param1 == 'update') {
          $this->crud_model->update_smtp_settings();
          $this->session->set_flashdata('flash_message', get_phrase('smtp_settings_updated_successfully'));
          redirect(site_url('admin/smtp_settings'), 'refresh');
      }
      $this->session->set_userdata('last_page', 'smtp_settings');
      $page_data['page_name'] = 'smtp_settings';
      $page_data['page_title'] = get_phrase('smtp_settings');
      $this->load->view('backend/index', $page_data);
    }

    public function instructor_settings($param1 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($param1 == 'update') {
            $this->crud_model->update_instructor_settings();
            $this->session->set_flashdata('flash_message', get_phrase('instructor_settings_updated'));
            redirect(site_url('admin/instructor_settings'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'instructor_settings');
        $page_data['page_name'] = 'instructor_settings';
        $page_data['page_title'] = get_phrase('instructor_settings');
        $this->load->view('backend/index', $page_data);
    }

    public function courses($default_category_id = "", $default_sub_category_id = "", $default_instructor_id = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        $this->session->set_userdata('last_page', 'courses');
        $page_data['page_name'] = 'courses';
        $page_data['categories'] = $this->crud_model->get_categories();
        if (isset($_POST['category_id']) && isset($_POST['sub_category_id'])) {

            $page_data['default_category_id'] = $this->input->post('category_id');
            $page_data['default_sub_category_id'] = $this->input->post('sub_category_id');

            if (isset($_POST['instructor_id'])) {
                $page_data['default_instructor_id'] = $this->input->post('instructor_id');
            }else {
                $page_data['default_instructor_id'] = "";
            }
            redirect(site_url('admin/courses/'.$this->input->post('category_id').'/'.$this->input->post('sub_category_id').'/'.$page_data['default_instructor_id']));
        }else {
            if($default_category_id == "" && $default_sub_category_id == ""){
                $page_data['default_category_id'] = $this->crud_model->get_default_category_id();
                $page_data['default_sub_category_id'] = $this->crud_model->get_default_sub_category_id($page_data['default_category_id']);
            }else {
                $page_data['default_category_id'] = $default_category_id;
                $page_data['default_sub_category_id'] = $default_sub_category_id;
            }

            if ($default_instructor_id == "")
                $page_data['default_instructor_id'] = "";
            else
                $page_data['default_instructor_id'] = $default_instructor_id;
        }

        $page_data['page_title'] = get_phrase('active_courses');
        $this->load->view('backend/index', $page_data);
    }

    public function pending_courses() {
      if ($this->session->userdata('admin_login') != true) {
          redirect(site_url('login'), 'refresh');
      }

      $this->session->set_userdata('last_page', 'pending_courses');
      $page_data['page_name'] = 'pending_courses';
      $page_data['page_title'] = get_phrase('pending_courses');
      $this->load->view('backend/index', $page_data);
    }

    public function course_actions($param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == "add") {
            $this->crud_model->add_course();
            redirect(site_url('admin/courses'), 'refresh');

        }
        elseif ($param1 == "edit") {
            $this->crud_model->update_course($param2);
            redirect(site_url('admin/courses'), 'refresh');

        }
        elseif ($param1 == 'delete') {
            $this->crud_model->delete_course($param2);
            redirect(site_url('admin/courses'), 'refresh');
        }
        elseif ($param1 == 'view_details') {
            $page_data['page_name'] = 'course_details';
            $page_data['page_title'] = get_phrase('course_details');
            $page_data['course_details'] = $this->crud_model->get_course_by_id($param2)->row_array();
            $this->load->view('backend/index', $page_data);
        }
    }


    public function course_form($param1 = "", $param2 = "") {

        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'add_course') {
            $page_data['page_name'] = 'course_add';
            $page_data['page_title'] = get_phrase('add_course');
            $this->load->view('backend/index', $page_data);

        }elseif ($param1 == 'course_edit') {
            $page_data['page_name'] = 'course_edit';
            $page_data['course_id'] =  $param2;
            $page_data['page_title'] = get_phrase('edit_course');
            $this->load->view('backend/index', $page_data);

        }
    }

    public function change_course_status($status = "") {
      $course_id               = $this->input->post('course_id');
      $default_category_id     = $this->input->post('default_category_id');
      $default_sub_category_id = $this->input->post('default_sub_category_id');
      if (isset($_POST['mail_subject']) && isset($_POST['mail_body'])) {
          $mail_subject = $this->input->post('mail_subject');
          $mail_body = $this->input->post('mail_body');
          $this->email_model->send_mail_on_course_status_changing($course_id, $mail_subject, $mail_body);
      }
      $this->crud_model->change_course_status($status, $course_id);
      $this->session->set_flashdata('flash_message', get_phrase('course_status_updated'));
      redirect(site_url('admin/courses/'.$default_category_id.'/'.$default_sub_category_id), 'refresh');
    }

    public function change_course_status_for_admin($status = "", $course_id = "") {
      $this->crud_model->change_course_status($status, $course_id);
      $this->session->set_flashdata('flash_message', get_phrase('course_status_updated'));
      if ($status == 'active') {
        redirect(site_url('admin/pending_courses'), 'refresh');
      }else {
        redirect(site_url('admin/courses'), 'refresh');
      }
    }

    public function sections($param1 = "", $param2 = "", $param3 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param2 == 'add') {
          $this->crud_model->add_section($param1);
          redirect(site_url('admin/sections/'.$param1));
        }
        elseif ($param2 == 'edit') {
          $this->crud_model->edit_section($param3);
          redirect(site_url('admin/sections/'.$param1));
        }
        elseif ($param2 == 'delete') {
          $this->crud_model->delete_section($param1, $param3);
          redirect(site_url('admin/sections/'.$param1));
        }

        $page_data['page_name'] = 'sections';
        $page_data['course_id'] = $param1;
        $page_data['page_title'] = get_phrase('manage_sections');
        $this->load->view('backend/index', $page_data);
    }

    public function serialize_section($course_id = "", $action = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($action == "serialize") {
            $container = array();
            $serialization = json_decode($this->input->post('serialization'));
            foreach ($serialization as $key) {
                array_push($container, $key->id);
            }
            $json = json_encode($container);
            $this->crud_model->serialize_section($course_id, $json);
            $this->session->set_flashdata('flash_message', get_phrase('sections_have_been_serialized'));
            redirect(site_url("admin/serialize_section/$course_id"));
        }

        $page_data['page_name'] = 'serialize_section';
        $page_data['course_id'] = $course_id;
        $page_data['page_title'] = get_phrase('serialize_section');
        $this->load->view('backend/index', $page_data);
    }

    public function section_form($param1 = "", $param2 = "", $param3 = "") {
      if ($this->session->userdata('admin_login') != true) {
          redirect(site_url('login'), 'refresh');
      }
      if ($param1 == 'add_section') {

        $page_data['course_id'] = $param2;
        $page_data['page_name'] = 'section_add';
        $page_data['page_title'] = get_phrase('add_section');
        $this->load->view('backend/index', $page_data);
      }
      elseif ($param1 == 'edit_section') {

        $page_data['course_id'] = $param3;
        $page_data['section_id'] = $param2;
        $page_data['page_name'] = 'section_edit';
        $page_data['page_title'] = get_phrase('edit_section');
        $this->load->view('backend/index', $page_data);
      }
    }

    public function lessons($course_id = "", $param1 = "", $param2 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        if ($param1 == 'add') {
            $this->crud_model->add_lesson();
            redirect('admin/lessons/'.$course_id);
        }
        elseif ($param1 == 'edit') {
            $this->crud_model->edit_lesson($param2);
            redirect('admin/lessons/'.$course_id);
        }
        elseif ($param1 == 'delete') {
            $this->crud_model->delete_lesson($param2);
            redirect('admin/lessons/'.$course_id);
        }
        elseif ($param1 == 'filter') {
            redirect('admin/lessons/'.$this->input->post('course_id'));
        }
        $page_data['page_name'] = 'lessons';
        $page_data['lessons'] = $this->crud_model->get_lessons('course', $course_id);
        $page_data['course_id'] = $course_id;
        $page_data['page_title'] = get_phrase('lessons');
        $this->load->view('backend/index', $page_data);
    }

    public function lesson_form($param1 = "", $param2 = "", $param3 = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'add_lesson') {

            $page_data['course_id'] = $param2;
            $page_data['page_name']  = 'lesson_add';
            $page_data['page_title'] = get_phrase('add_lesson');
            $this->load->view('backend/index', $page_data);
        }
        elseif ($param1 == 'edit_lesson') {

            $page_data['lesson_id']  = $param2;
            $page_data['course_id']  = $param3;
            $page_data['page_name']  = 'lesson_edit';
            $page_data['page_title'] = get_phrase('edit_lesson');
            $this->load->view('backend/index', $page_data);
        }
    }

    public function watch_video($slugified_title = "", $lesson_id = "") {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }
        $lesson_details          = $this->crud_model->get_lessons('lesson', $lesson_id)->row_array();
        $page_data['provider']   = $lesson_details['video_type'];
        $page_data['video_url']  = $lesson_details['video_url'];
        $page_data['lesson_id']  = $lesson_id;
        $page_data['page_name']  = 'video_player';
        $page_data['page_title'] = get_phrase('video_player');
        $this->load->view('backend/index', $page_data);
    }


    public function manage_language($param1 = '', $param2 = '', $param3 = '') {
        if ($this->session->userdata('admin_login') != true) {
            redirect(site_url('login'), 'refresh');
        }

        if ($param1 == 'edit_phrase') {
            $page_data['edit_profile'] = $param2;
        }
        if ($param1 == 'update_phrase') {
            $language     = $param2;
            $total_phrase = $this->input->post('total_phrase');
            for ($i = 1; $i < $total_phrase; $i++) {
                //$data[$language]    =    $this->input->post('phrase').$i;
                $this->db->where('phrase_id', $i);
                $this->db->update('language', array(
                    $language => $this->input->post('phrase' . $i)
                ));
            }
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(site_url('admin/manage_language/edit_phrase/' . $language), 'refresh');
        }
        if ($param1 == 'do_update') {
            $language        = $this->input->post('language');
            $data[$language] = $this->input->post('phrase');
            $this->db->where('phrase_id', $param2);
            $this->db->update('language', $data);
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(site_url('admin/manage_language'), 'refresh');
        }
        if ($param1 == 'add_phrase') {
            $data['phrase'] = html_escape($this->input->post('phrase'));
            $this->db->insert('language', $data);
            $this->session->set_flashdata('flash_message', get_phrase('phrase_added'));
            redirect(site_url('admin/manage_language'), 'refresh');
        }
        if ($param1 == 'add_language') {
            $language = $this->input->post('language');
            $this->load->dbforge();
            $fields = array(
                $language => array(
                    'type' => 'LONGTEXT'
                )
            );
            $this->dbforge->add_column('language', $fields);

            $this->session->set_flashdata('flash_message', get_phrase('language_added'));
            redirect(site_url('admin/manage_language'), 'refresh');
        }
        if ($param1 == 'delete_language') {
            $language = $param2;
            $this->load->dbforge();
            $this->dbforge->drop_column('language', $language);
            $this->session->set_flashdata('flash_message', get_phrase('language_deleted'));

            redirect(site_url('admin/manage_language'), 'refresh');
        }
        $this->session->set_userdata('last_page', 'manage_language');
        $page_data['page_name']  = 'manage_language';
        $page_data['page_title'] = get_phrase('manage_language');
        $this->load->view('backend/index', $page_data);
    }

    function message($param1 = 'message_home', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');
        if ($param1 == 'send_new') {
            $message_thread_code = $this->crud_model->send_new_private_message();
            $this->session->set_flashdata('flash_message', get_phrase('message_sent!'));
            redirect(site_url('admin/message/message_read/' . $message_thread_code), 'refresh');
        }

        if ($param1 == 'send_reply') {
            $this->crud_model->send_reply_message($param2); //$param2 = message_thread_code
            $this->session->set_flashdata('flash_message', get_phrase('message_sent!'));
            redirect(site_url('admin/message/message_read/' . $param2), 'refresh');
        }

        if ($param1 == 'message_read') {
            $page_data['current_message_thread_code'] = $param2; // $param2 = message_thread_code
            $this->crud_model->mark_thread_messages_read($param2);
        }

        $this->session->set_userdata('last_page', 'message');
        $page_data['message_inner_page_name'] = $param1;
        $page_data['page_name']               = 'message';
        $page_data['page_title']              = get_phrase('private_messaging');
        $this->load->view('backend/index', $page_data);
    }

    /******MANAGE OWN PROFILE AND CHANGE PASSWORD***/
    function manage_profile($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');
        if ($param1 == 'update_profile_info') {
            $this->user_model->edit_user($param2);
            redirect(site_url('admin/manage_profile'), 'refresh');
        }
        if ($param1 == 'change_password') {
            $this->user_model->change_password($param2);
            redirect(site_url('admin/manage_profile'), 'refresh');
        }
        $page_data['page_name']  = 'manage_profile';
        $page_data['page_title'] = get_phrase('manage_profile');
        $page_data['edit_data']  = $this->db->get_where('users', array(
            'id' => $this->session->userdata('user_id')
        ))->result_array();
        $this->load->view('backend/index', $page_data);
    }

    public function paypal_checkout_for_instructor_revenue() {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $page_data['amount_to_pay']         = $this->input->post('amount_to_pay');
        $page_data['payment_id']            = $this->input->post('payment_id');
        $page_data['course_title']          = $this->input->post('course_title');
        $page_data['instructor_name']       = $this->input->post('instructor_name');
        $page_data['production_client_id']  = $this->input->post('production_client_id');
        $this->load->view('backend/admin/paypal_checkout_for_instructor_revenue', $page_data);
    }

    public function stripe_checkout_for_instructor_revenue() {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $page_data['amount_to_pay']    = $this->input->post('amount_to_pay');
        $page_data['payment_id']       = $this->input->post('payment_id');
        $page_data['course_title']     = $this->input->post('course_title');
        $page_data['instructor_name']  = $this->input->post('instructor_name');
        $page_data['public_live_key']  = $this->input->post('public_live_key');
        $page_data['secret_live_key']  = $this->input->post('secret_live_key');
        $this->load->view('backend/admin/stripe_checkout_for_instructor_revenue', $page_data);
    }

    public function payment_success($payment_type = "", $payment_id = "") {
        if ($this->session->userdata('admin_login') != 1)
            redirect(site_url('login'), 'refresh');

        $this->crud_model->update_instructor_payment_status($payment_id);
        $this->session->set_flashdata('flash_message', get_phrase('instructor_payment_has_been_done'));
        redirect(site_url('admin/instructor_revenue'), 'refresh');
    }

    // AJAX PORTION
    public function ajax_get_sub_category($category_id) {
        $page_data['sub_categories'] = $this->crud_model->get_sub_categories($category_id);

        return $this->load->view('backend/admin/ajax_get_sub_category', $page_data);
    }

    public function ajax_get_section($course_id){
        $page_data['sections'] = $this->crud_model->get_section('course', $course_id)->result_array();
        return $this->load->view('backend/admin/ajax_get_section', $page_data);
    }

    public function ajax_get_video_details() {
        $video_details = $this->video_model->getVideoDetails($_POST['video_url']);
        echo $video_details['duration'];
    }

    public function update_phrase_with_ajax() {
        $checker['phrase_id']                = $this->input->post('phraseId');
        $updater[$this->input->post('currentEditingLanguage')] = $this->input->post('updatedValue');

        $this->db->where('phrase_id', $checker['phrase_id']);
        $this->db->update('language', $updater);

        echo $checker['phrase_id'].' '.$this->input->post('currentEditingLanguage').' '.$this->input->post('updatedValue');
    }
}
