<ol class="breadcrumb bc-3">
    <li>
        <a href="<?php echo site_url('admin/dashboard'); ?>">
            <i class="entypo-folder"></i>
            <?php echo get_phrase('dashboard'); ?>
        </a>
    </li>
    <li><a href="#" class="active"><?php echo get_phrase('categories'); ?></a> </li>
</ol>
<h2><i class="fa fa-arrow-circle-o-right"></i> <?php echo $page_title; ?></h2>
<br />

<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-body">
                <div class="row" style="margin-left: -15px;">
                    <div class="col-md-3">
                        <a href = "<?php echo site_url('admin/category_form/add_category'); ?>" class="btn btn-block btn-info" type="button"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo get_phrase('add_category'); ?></a>
                    </div>
                    <div class="col-md-3">
                        <a href = "<?php echo site_url('admin/sub_categories'); ?>" class="btn  btn-info" type="button"><?php echo get_phrase('manage_sub_categories'); ?></a>
                    </div>
                </div>
                <table class="table table-bordered datatable" id="table-1">
                  <thead>
                    <tr>
                      <th><?php echo get_phrase('category_title'); ?></th>
                      <th><?php echo get_phrase('sub_categories'); ?></th>
                      <th><?php echo get_phrase('actions'); ?></th>
                    </tr>
                  </thead>
                  <tbody>
                      <?php
                      $counter = 1;
                      foreach ($categories->result_array() as $category): ?>
                          <tr class= "<?php if( $counter % 2 == 0) echo 'odd gradeX'; else echo 'even gradeC'; $counter++;?>">
                            <td>   <a href="<?php echo site_url('admin/sub_categories/'.$category['id']); ?>"><?php echo $category['name']; ?></a>
                            </td>
                            <td>
                                <?php
                                    $sub_categories = $this->db->get_where('category', array('parent' => $category['id']))->result_array();
                                    foreach ($sub_categories as $sub_category):?>
                                    <ul style="list-style-type:square">
                                        <li><?php echo $sub_category['name']; ?></li>
                                    </ul>
                                <?php endforeach; ?>
                            </td>
                            <td>

                                <div class="btn-group">
                                    <button class="btn btn-small btn-default btn-demo-space" data-toggle="dropdown"> <i class = "fa fa-ellipsis-v"></i> </button>
                                    <ul class="dropdown-menu dropdown-default" role="menu">
                                        <li><a href="<?php echo site_url('admin/sub_categories'); ?>"><?php echo get_phrase('manage_sub_categories'); ?></a></li>
                                        <li>
                                            <a href="<?php echo site_url('admin/category_form/edit_category/'.$category['id']); ?>">
                                                <?php echo get_phrase('edit');?>
                                            </a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#" onclick="confirm_modal('<?php echo site_url('admin/categories/delete/'.$category['id']); ?>');">
                                                <?php echo get_phrase('delete');?>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                          </tr>
                      <?php endforeach; ?>
                  </tbody>
                </table>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

</script>
