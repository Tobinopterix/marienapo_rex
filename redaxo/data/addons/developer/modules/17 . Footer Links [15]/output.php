<div class="col-md-4">
	<?php
	if ('REX_VALUE[id=1 isset=1]') {
		echo '
		<h4>REX_VALUE[1]</h4>
		<div class="hline-w"></div>';
	}

	if ('REX_LINKLIST[1]' != '') {
		echo '<ul>';
		$linklist = explode(',','REX_LINKLIST[1]');
		foreach ($linklist as $link) {
			$art = rex_article::get($link);
			if ($art instanceof rex_article) {

                $class = "";
                if(rex_article::getCurrentId() == $art->getId())
                    $class = ' class="active"';

				$art_name = $art->getValue('name');
				echo '
				<li'.$class.'><a href="'.rex_getUrl($link).'">'.$art_name.'</a></li>';
			}
		}
		echo '</ul>';
	}
	?>
</div>
