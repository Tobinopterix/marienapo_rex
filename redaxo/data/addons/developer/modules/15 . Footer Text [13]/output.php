<div class="col-md-4">
	<?php
	if ('REX_VALUE[id=1 isset=1]') {
		echo '
		<h4>REX_VALUE[1]</h4>
		<div class="hline-w"></div>';
	}

	if ('REX_VALUE[id=2 isset=1]') {
	    echo markitup::parseOutput('textile', 'REX_VALUE[id=2 output="html"]');
	}
	?>
</div>
