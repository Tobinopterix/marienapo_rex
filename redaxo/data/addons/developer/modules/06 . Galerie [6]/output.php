<?php
$fe = '';
$be = '';

if ("REX_MEDIALIST[1]" != '') {
	$imagelist = explode(',', "REX_MEDIALIST[1]");

	// Rahmen?
	$frame = ("REX_VALUE[5]" != '') ? "REX_VALUE[5]" : 'framed';

	// Abstand?
	$padding = ("REX_VALUE[19]" != '') ? " REX_VALUE[19]" : '';

	// Volle Breite?
	$full = ("REX_VALUE[1]" == 'full') ? ' full ' : ' container ';
	// Im Mehrspalten-Template keine volle Breite erlauben
	if ($this->getTemplateId() != 1) { $full = ''; }

	// Language suffix
  $languageSuffix = '';
  if (rex_clang::getCurrentId() == 2) {
      $languageSuffix = '_en';
  }

	$fe .= '
	<section id="portfoliowrap" class="clearfix'.$full.$frame.$padding.'">';

		if ("REX_VALUE[2]" != '') {
			$fe .= '
			<REX_VALUE[3]>REX_VALUE[2]</REX_VALUE[3]>';
			$be .= '
			<REX_VALUE[3]>REX_VALUE[2]</REX_VALUE[3]>';
		}

		$fe .= '
		<div class="portfolio row">';

				foreach ($imagelist as $file) {
					$media = rex_media::get($file);
					if ($media instanceof rex_media) {

						$mediatitle = $media->getValue('title');
						$mediadesc = str_replace(array("\r\n", "\n", "\r"), ' ', $media->getValue('med_description' . $languageSuffix));
						$medialink = $media->getValue('med_gallery_link');

						$fe .= '
						<div class="col-md-3 portfolio-item">
							<div class="he-wrap pic">
								<img src="index.php?rex_media_type=photos&rex_media_file='.$file.'" alt="'.$mediadesc.'">
								<div class="he-view">
									<div class="bg a0" data-animate="fadeIn">';

										if ($mediadesc != '' && $this->getTemplateId() == 1) {
											// Nur im Einspalter Bildtexte anzeoigen, da Bilder ansonsten zu klein
											$fe .= '
											   <h3 class="a1" data-animate="fadeInDown">'.$mediadesc.'</h3>';
										}

										$fe .= '
										<a rel="prettyPhoto[galREX_SLICE_ID]" href="index.php?rex_media_type=full&rex_media_file='.$file.'" class="dmbutton a2" data-animate="fadeInUp"><i class="fa fa-search"></i></a>';

										if ($medialink != '') {
											$fe .= '
											<a href="'.$medialink.'" class="dmbutton a2" data-animate="fadeInUp"><i class="fa fa-link"></i></a>';
										}

									  $fe .= '
								  	</div><!-- he bg -->
								</div><!-- he view -->
							</div><!-- he wrap -->
						</div><!-- end col-12 -->';

						$be .= '
						<img src="index.php?rex_media_type=rex_media_medium&rex_media_file='.$file.'" alt="'.$mediadesc.'">';

					}
				}

			$fe .= '
		</div><!-- portfolio -->
	</section><!--/Portfoliowrap -->';

}

// Different output for frontend and backend
if (rex::isBackend()) {
	echo $be;
} else {
	echo $fe;
}
?>