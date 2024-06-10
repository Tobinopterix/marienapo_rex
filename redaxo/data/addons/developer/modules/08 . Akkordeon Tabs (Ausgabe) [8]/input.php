<!-- *******************************************************
TABS AUSGABE
******************************************************** -->

<fieldset class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline" type="text" name="REX_INPUT_VALUE[2]" value="REX_VALUE[2]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline-level">Tab-Stil</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				'ba'=>'Button-Akkordeons',
				'ta'=>'Text-Akkordeons',
				'bt'=>'Button-Tabs',
				'vt' => 'Vertikale Tabs',
				'tt' => 'Text-Tabs'
			);
			?>
			<select name="REX_INPUT_VALUE[1]" id="headline-level" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[1]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

	<!--
	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline-level">falls Akkordeon</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				'one-open'=>'Akkordeon schließt anderes',
				'multi-open'=>'mehrere Akkordions offen'
			);
			?>
			<select name="REX_INPUT_VALUE[3]" id="headline-level" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[3]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>
	-->
</fieldset>
