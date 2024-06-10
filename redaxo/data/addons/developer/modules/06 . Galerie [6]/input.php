<!-- *******************************************************
GALERIE
******************************************************** -->

<fieldset class="form-horizontal">
    <legend>Galerie</legend>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline" type="text" name="REX_INPUT_VALUE[2]" value="REX_VALUE[2]" />
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
			<select name="REX_INPUT_VALUE[3]" id="headline-level" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[3]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="headline">Bilder</label>
		<div class="col-sm-10">
            REX_MEDIALIST[id="1" widget="1"]
        </div>
    </div>

	<?php
	// Im Mehrspalten-Template keine volle Breite erlauben
	if ($this->getTemplateId() == 1) {
	?>
		<div class="form-group">
	        <label class="col-sm-2 control-label" for="width">Breite</label>
	        <div class="col-sm-10">
				<?php
					$options = array(
					''=>'Contentbreite',
					'full'=>'volle Beite'
				);
				?>
				<select name="REX_INPUT_VALUE[1]" id="width" class="form-control">
				<?php foreach ($options as $k=>$v) : ?>
				<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[1]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
				<?php endforeach ?>
				</select>
	        </div>
	    </div>
	<?php } ?>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="width">Rahmen</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'Rahmen zwischen Bildern',
				'frameless'=>'ohne Rahmen'
			);
			?>
			<select name="REX_INPUT_VALUE[5]" id="width" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[5]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
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
			<select name="REX_INPUT_VALUE[19]" id="distance" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[19]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>

</fieldset>

<p>Bilder in der Medienkategorie "Fotos" (ID 1) haben ein zusätzliches Linkfeld.</p>
