<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
  <div class="heading">
      <h1><img src="view/image/zibal.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    
    <div class="content">

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    <table class="form">

      <tr>
        <td width="25%"><span class="required">*</span> <?php echo $entry_PIN; ?></td>
        <td><input type="text" name="zibal_PIN" value="<?php echo $zibal_PIN; ?>" />
          <br />
          <?php if ($error_PIN) { ?>
          <span class="error"><?php echo $error_PIN; ?></span>
          <?php } ?></td>
      </tr>
      <tr>
        <td><?php echo $entry_order_status; ?></td>
        <td><select name="zibal_order_status_id">
            <?php foreach ($order_statuses as $order_status) { ?>
            <?php if ($order_status['order_status_id'] == $zibal_order_status_id) { ?>
            <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
            <?php } ?>
            <?php } ?>
          </select></td>
      </tr>
        <tr>
            <td>زیبال دایرکت (درگاه مستقیم)</td>
            <td><select name="zibal_direct">
                    <?php if ($zibal_direct) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                </select></td>
        </tr>
        <tr>
        <td><?php echo $entry_status; ?></td>
        <td><select name="zibal_status">
            <?php if ($zibal_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $entry_sort_order; ?></td>
        <td><input type="text" name="zibal_sort_order" value="<?php echo $zibal_sort_order; ?>" size="1" /></td>
      </tr>
    </table>

</form>
</div>
</div>
</div>
<?php echo $footer; ?>