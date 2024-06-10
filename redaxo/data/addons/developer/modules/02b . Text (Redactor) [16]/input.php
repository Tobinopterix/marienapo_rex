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
        <label class="col-sm-2 control-label" for="redactor">Text</label>
        <div class="col-sm-10">
            <textarea class="form-control redactor-editor--demo" name="REX_INPUT_VALUE[3]">REX_VALUE[3]</textarea>
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

			<br><section class="rex-page-section">
			    <div class="panel panel-default">

			        <header class="panel-heading collapsed" data-toggle="collapse" data-target="#collapse-REX_SLICE_ID" aria-expanded="false">
						<div class="panel-title"><i class="rex-icon rex-icon-info"></i> Hinweis</div>
					</header>

			        <div id="collapse-REX_SLICE_ID" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">

			            <div class="panel-body" style="background: #f3f6fb;">
			                <ul>
								<li>Hier kann man eine linke und rechte Einrückung von je zwei Spalten des 12er-Bootstrap-Rasters aktivieren.</li>
								<li>Der vertikale Abstand erzeugt einen oberen und unteren Zwischenraum von jeweils 60px.</li>
							</ul>
						</div>
			        </div>
			    </div>
			</section>

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
