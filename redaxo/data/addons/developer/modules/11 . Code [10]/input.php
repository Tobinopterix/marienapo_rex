<!-- *******************************************************
CODE
******************************************************** -->

<fieldset class="form-horizontal">
    <legend>Code</legend>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="code">Code</label>
        <div class="col-sm-10">
            <textarea cols="1" rows="10" class="form-control rex-code" id="code" name="REX_INPUT_VALUE[1]">REX_VALUE[1]</textarea>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="distance">Abstand</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'keiner',
				'mt'=>'oberhalb',
				'mb'=>'unterhalb',
				'mtb'=>'ober- und unterhalb'
			);
			?>
			<select name="VALUE[19]" id="distance" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[19]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

</fieldset>
