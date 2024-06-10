<!-- *******************************************************
TEASERKÄSTEN
******************************************************** -->

<fieldset class="form-horizontal">
    <legend>Abstände</legend>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="distance">Icon-Größe</label>
        <div class="col-sm-10">
			<?php
				$options = array(
				''=>'klein',
				'size2'=>'mittel',
				'size3'=>'groß'
			);
			?>
			<select name="REX_INPUT_VALUE[15]" id="distance" class="form-control">
			<?php foreach ($options as $k=>$v) : ?>
			<option value="<?php echo $k; ?>"<?php if ($k == "REX_VALUE[15]") echo ' selected="selected"' ?>><?php echo $v; ?></option>
			<?php endforeach ?>
			</select>
        </div>
    </div>
</fieldset>

<fieldset class="form-horizontal">
    <legend>1. Kasten</legend>

    <div class="form-group" style="overflow: visible;">
        <label class="col-sm-2 control-label" for="icon1">Icon</label>
        <div class="col-sm-10">
            <input data-placement="bottomRight" class="form-control icp" id="icon1" type="text" name="REX_INPUT_VALUE[1]" value="REX_VALUE[1]" />

			<br><section class="rex-page-section">
				<div class="panel panel-default">

					<header class="panel-heading collapsed" data-toggle="collapse" data-target="#collapse-REX_SLICE_ID" aria-expanded="false">
						<div class="panel-title"><i class="rex-icon rex-icon-info"></i> Hinweis zur Eingabe der Icons</div>
					</header>

					<div id="collapse-REX_SLICE_ID" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">

						<div class="panel-body" style="background: #f3f6fb;">
							<ul>
								<li>Man kann hier Icons des Font-Zeichensatzes Font Awesome verwenden:<br>
								<a href="https://fortawesome.github.io/Font-Awesome/icons/" target="_blank">https://fortawesome.github.io/Font-Awesome/icons/</a></li>
								<li>Dazu bitte einfach den CSS-Klassennamne des gewünschten Icons eingeben.</li>
								<li>Oder noch besser: Das <a href="index.php?page=install/packages/add&addonkey=iconpicker">Iconpicker-AddOn</a> installieren! :-)</li>
							</ul>
						</div>
					</div>
				</div>
			</section>

        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline1">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline1" type="text" name="REX_INPUT_VALUE[2]" value="REX_VALUE[2]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="markitup_textile_1">Text</label>
        <div class="col-sm-10">
            <textarea cols="1" rows="6" class="form-control markitupEditor-markdown_full" id="markitup_textile_1" name="REX_INPUT_VALUE[3]">REX_VALUE[3]</textarea>
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label">Link</label>
        <div class="col-sm-10">
            REX_LINK[id="1" widget="1"]
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="linktext1">Linktext</label>
        <div class="col-sm-10">
            <input class="form-control" id="linktext1" type="text" name="REX_INPUT_VALUE[4]" value="REX_VALUE[4]" />
        </div>
    </div>
</fieldset>


<fieldset class="form-horizontal">
    <legend>2. Kasten</legend>

    <div class="form-group" style="overflow: visible;">
        <label class="col-sm-2 control-label" for="icon2">Icon</label>
        <div class="col-sm-10">
            <input data-placement="bottomRight" class="form-control icp" id="icon2" type="text" name="REX_INPUT_VALUE[5]" value="REX_VALUE[5]" />
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline2">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline2" type="text" name="REX_INPUT_VALUE[6]" value="REX_VALUE[6]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="markitup_textile_2">Text</label>
        <div class="col-sm-10">
            <textarea cols="1" rows="6" class="form-control markitupEditor-markdown_full" id="markitup_textile_2" name="REX_INPUT_VALUE[7]">REX_VALUE[7]</textarea>
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label">Link</label>
        <div class="col-sm-10">
            REX_LINK[id="2" widget="1"]
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="linktext2">Linktext</label>
        <div class="col-sm-10">
            <input class="form-control" id="linktext2" type="text" name="REX_INPUT_VALUE[8]" value="REX_VALUE[8]" />
        </div>
    </div>
</fieldset>


<fieldset class="form-horizontal">
    <legend>3. Kasten</legend>

    <div class="form-group" style="overflow: visible;">
        <label class="col-sm-2 control-label" for="icon3">Icon</label>
        <div class="col-sm-10">
            <input data-placement="bottomRight" class="form-control icp" id="icon3" type="text" name="REX_INPUT_VALUE[9]" value="REX_VALUE[9]" />
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="headline3">Überschrift</label>
        <div class="col-sm-10">
            <input class="form-control" id="headline3" type="text" name="REX_INPUT_VALUE[10]" value="REX_VALUE[10]" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="markitup_textile_3">Text</label>
        <div class="col-sm-10">
            <textarea cols="1" rows="6" class="form-control markitupEditor-markdown_full" id="markitup_textile_3" name="REX_INPUT_VALUE[11]">REX_VALUE[11]</textarea>
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label">Link</label>
        <div class="col-sm-10">
            REX_LINK[id="3" widget="1"]
        </div>
    </div>

	<div class="form-group">
        <label class="col-sm-2 control-label" for="linktext3">Linktext</label>
        <div class="col-sm-10">
            <input class="form-control" id="linktext3" type="text" name="REX_INPUT_VALUE[12]" value="REX_VALUE[12]" />
        </div>
    </div>
</fieldset>

<fieldset class="form-horizontal">
    <legend>Abstände</legend>
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
