<div class="sicetext<?php if ("REX_VALUE[19]" != '') echo " REX_VALUE[19]"; ?>">

	<?php
	if ("REX_VALUE[1]" != '') {
		echo '
		<REX_VALUE[2]>REX_VALUE[1]</REX_VALUE[2]>';
	}

	if ('REX_VALUE[id=3 isset=1]') {
	    $textile = markitup::parseOutput('textile', 'REX_VALUE[id=3 output="html"]');
	    echo str_replace(array('<b>', '</b>'), array('<span class="label label-primary">', '</span>'), $textile);
	}

	if ("REX_VALUE[18]"== 'true'){
		echo '
		<div class="hline"></div>';
	}

	?>
</div>

<div class="spacing"></div>
