REX_TEMPLATE[10]
<?php
$path = explode("|",$this->getValue("path").$this->getValue("article_id")."|");
$path1 = ((!empty($path[1])) ? $path[1] : '');
$path2 = ((!empty($path[2])) ? $path[2] : '');

$nav_main = '';

foreach (rex_category::getRootCategories() as $lev1) {

	$hidden_ids = array(1,6);
	// hide Home- and footer-article in navigation

	$category_is_visible = true;
	// only visible if online_from and online_to is ok
	if ($lev1->getValue('art_online_from') && $lev1->getValue('art_online_from') > time()) { $category_is_visible = false; }

	if ($lev1->getValue('art_online_to') && $lev1->getValue('art_online_to') < time()) { $category_is_visible = false; }


	if ($lev1->isOnline(true) && (!in_array($lev1->getId(), $hidden_ids)) && $category_is_visible == true) {

		if ($lev1->getId() == $path1) {
			$nav_main .= '
			<li class="dropdown-toggle active"><a href="'.$lev1->getUrl().'">'.htmlspecialchars($lev1->getValue('name')).'</a>';
		} else {
   			$nav_main .= '
			<li class="dropdown-toggle"><a href="'.$lev1->getUrl().'">'.htmlspecialchars($lev1->getValue('name')).'</a>';
		}

		// 1st level start
		$lev1Size = sizeof($lev1->getChildren());

			if ($lev1Size != "0") {

				$nav_main .= '
				<ul class="dropdown-menu">';

					// START 2nd level categories
					foreach ($lev1->getChildren() as $lev2):

						$category_is_visible = true;
						// only visible if online_from and online_to is ok
						if ($lev2->getValue('art_online_from') && $lev2->getValue('art_online_from') > time()) { $category_is_visible = false; }

						if ($lev2->getValue('art_online_to') && $lev2->getValue('art_online_to') < time()) { $category_is_visible = false; }


						if ($lev2->isOnline(true) && $category_is_visible == true) {

							if ($lev2->getId() == $path2) {
								$nav_main .= '
								<li class="dropdown-toggle active"><a href="'.$lev2->getUrl().'">'.htmlspecialchars($lev2->getValue('name')).'</a></li>';
							} else {
								$nav_main .= '
								<li class="dropdown-toggle"><a href="'.$lev2->getUrl().'">'.htmlspecialchars($lev2->getValue('name')).'</a></li>';
							}
						}
					endforeach;

				$nav_main .= '
				</ul>';

			}

		$nav_main .= '
		</li>';
	}
}

echo '
<div class="navbar-collapse collapse navbar-right">
	<ul class="nav navbar-nav">
		'.$nav_main.'
		'.rex::getProperty('lang_switch').'
	</ul>
</div><!--/.nav-collapse -->';
?>
