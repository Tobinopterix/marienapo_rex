<div class="col-md-4">
	<?php
	if ('REX_VALUE[id=1 isset=1]') {
		echo '
		<h4>REX_VALUE[1]</h4>
		<div class="hline-w"></div>';
	}

	echo '
	<p class="social-links">';

	if ('REX_VALUE[id=2 isset=1]') {
		echo '
		<p class="social-links">
			<a href="REX_VALUE[2]"><i class="fa fa-fw fa-facebook"></i> Facebook</a>
		</p>';
	}

	if ('REX_VALUE[id=3 isset=1]') {
		echo '
		<p class="social-links">
			<a href="REX_VALUE[3]"><i class="fa fa-fw fa-twitter"></i> Twitter</a>
		</p>';
	}

    if ('REX_VALUE[id=4 isset=1]') {
        echo '
		<p class="social-links">
			<a href="REX_VALUE[4]"><i class="fa fa-fw fa-github"></i> GitHub</a>
		</p>';
    }

	echo '
	</p>';
	?>
</div>
