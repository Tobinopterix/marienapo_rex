<!-- *******************************************************
TEXT
******************************************************** -->

<fieldset class="form-horizontal">
    <legend>Text</legend>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline" type="text" name="REX_INPUT_VALUE[1]" value="REX_VALUE[1]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline-level">Überschrift-Ebene</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				'h2'=>'2. Ebene',
				'h3'=>'3. Ebene'
			);
			?>
			<select name="REX_INPUT_VALUE[2]" id="headline-level" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[2]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="markitup_1">Text</label>
        <div class="col-sm-10">
            <textarea cols="1" rows="6" class="form-control markitupEditor-textile_full" id="markitup_1" name="REX_INPUT_VALUE[3]">REX_VALUE[3]</textarea>
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

</fieldset>
