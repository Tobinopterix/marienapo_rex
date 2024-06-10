<?php
$template = ($this->getTemplateId() == 1) ? ' container' : '';
$distance = ("REX_VALUE[19]" != '') ? ' REX_VALUE[19]' : '';
$background = ("REX_VALUE[16]" == 'true') ? ' grey' : '';

echo '
<section class="module-wrapper clearfix'.$background.'">
<div class="full'.$template.$distance.'">';

	// Left and right indent?
	if ("REX_VALUE[17]" == 'vd') {
		echo '
		<div class="row">
		<div class="col-md-8 col-md-offset-2">';
	}

	if ("REX_VALUE[1]" != '') {
		echo '
		<REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>';
	}

	if ('REX_VALUE[id=3 isset=1]') {
		// Parse text with Textile
	    $textile = markitup::parseOutput('textile', 'REX_VALUE[id=3 output="html"]');
		// Use Bold-Tags to enable Bootstrap-Labels
	    echo str_replace(array('<b>', '</b>'), array('<span class="label label-primary">', '</span>'), $textile);
	}

	// Trennlinie?
	if ("REX_VALUE[18]"== 'true'){
		echo '
		<div class="hline"></div>';
	}

	if ("REX_VALUE[17]" == 'vd') {
		echo '
		</div>
		</div>';
	}
	?>
</div>
</section>
