<!-- *******************************************************
GALERIE
******************************************************** -->

<fieldset class="form-horizontal">
    <legend>Downloads</legend>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline" type="text" name="REX_INPUT_VALUE[2]" value="REX_VALUE[2]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Dateien zum Download</label>
		<div class="col-sm-10">
            REX_MEDIALIST[id="1" widget="1"]
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="padding">Einrückung</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'keine',
				'vd'=>'ja'
			);
			?>
			<select name="REX_INPUT_VALUE[17]" id="padding" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[17]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="distance">vertikaler Abstand</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'keiner',
				'mt'=>'oberhalb',
				'mb'=>'unterhalb',
				'mtb'=>'ober- und unterhalb'
			);
			?>
			<select name="REX_INPUT_VALUE[19]" id="distance" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[19]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="line">Trennlinie</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'nein',
				'true'=>'ja'
			);
			?>
			<select name="REX_INPUT_VALUE[18]" id="line" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[18]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="line">Hintergrund</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'weiß',
				'true'=>'grau'
			);
			?>
			<select name="REX_INPUT_VALUE[16]" id="line" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[16]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

</fieldset>