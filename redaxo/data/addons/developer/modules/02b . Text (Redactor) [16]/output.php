<?php
$template = ($this->getTemplateId() == 1) ? ' container' : '';
$distance = ("REX_VALUE[19]" != '') ? ' REX_VALUE[19]' : '';
$background = ("REX_VALUE[16]" == 'true') ? ' grey' : '';

echo '
<section class="module-wrapper clearfix'.$background.'">
<div class="full'.$template.$distance.'">';

	// Linker und recter Einzug?
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
	    echo "REX_VALUE[id=3 output=html]";
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
