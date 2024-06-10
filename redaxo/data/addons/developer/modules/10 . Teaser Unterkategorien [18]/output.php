<?php
$cats = rex_category::get($this->getValue('article_id'));
$children = $cats->getChildren();

if (is_array($children)) {

	$container = ($this->getTemplateId() == 1) ? 'container ' : '';
	echo '
	<div class="'.$container.'teaser clearfix">';

	foreach ($children as $child) {

		if ($child->isOnline() && $child->getValue('cat_pic') != '') {

			$media = rex_media::get($child->getValue('cat_pic'));
			$title = $media->getValue('title');
			$desc = $media->getValue('cat_description');

			echo '
			<div class="row">
				<div class="col-lg-5">
					<img class="image-deco" src="index.php?rex_media_type=content&rex_media_file='.$child->getValue('cat_pic').'" alt="'.$desc.'">
				</div>';

				echo '
				<div class="col-lg-7">
					<h2><a class="hover-title" href="'.rex_getUrl($child->getId()).'">'.$child->getValue('name').'</a></h2>';
					if($child->getValue('cat_description') != '') {
					    echo markitup::parseOutput('textile', $child->getValue('cat_description'));
					}

					echo '
					<a class="btn btn-theme" href="'.rex_getUrl($child->getId(), rex_clang::getCurrentId()).'" class="btn btn-theme"><span>{{ more_info }}</span></a>
				</div>
			</div>
			<div class="hline"></div>';

		}
	}
	echo '
	</div>';

}
?>
