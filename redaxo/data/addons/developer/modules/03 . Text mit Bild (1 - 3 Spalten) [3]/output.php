<?php
$grid_content1 = '';
$grid_content2 = '';
$grid_content3 = '';

// col1
if ("REX_MEDIA[1]" != '') {
	$media = rex_media::get("REX_MEDIA[1]");
	if ($media instanceof rex_media) {
        $mediatitle = str_replace(array("\r\n", "\n", "\r"), ' ', $media->getValue('med_description'));
        $grid_content1 .= '<img class="content" src="index.php?rex_media_type=content&rex_media_file=REX_MEDIA[1]" alt="'.$mediatitle.'">';
    }
}
if ('REX_VALUE[id=1 isset=1]') {
    $grid_content1 .= markitup::parseOutput('textile', 'REX_VALUE[id=1 output="html"]');
}

// col2
if ("REX_MEDIA[2]" != '') {
	$media = rex_media::get("REX_MEDIA[2]");
    if ($media instanceof rex_media) {
        $mediatitle = str_replace(array("\r\n", "\n", "\r"), ' ', $media->getValue('med_description'));
        $grid_content2 .= '<img class="content" src="index.php?rex_media_type=content&rex_media_file=REX_MEDIA[2]" alt="'.$mediatitle.'">';
    }
}
if ('REX_VALUE[id=2 isset=1]') {
    $grid_content2 .= markitup::parseOutput('textile', 'REX_VALUE[id=2 output="html"]');
}

// col3
if ("REX_MEDIA[3]" != '') {
	$media = rex_media::get("REX_MEDIA[3]");
    if ($media instanceof rex_media) {
        $mediatitle = str_replace(array("\r\n", "\n", "\r"), ' ', $media->getValue('med_description'));
        $grid_content3 .= '<img class="content" src="index.php?rex_media_type=content&rex_media_file=REX_MEDIA[3]" alt="'.$mediatitle.'">';
    }
}
if ('REX_VALUE[id=3 isset=1]') {
    $grid_content3 .= markitup::parseOutput('textile', 'REX_VALUE[id=3 output="html"]');
}
?>
<!-- SECTION -->
<div class="<?php if ($this->getTemplateId() == 1) echo 'container clearfix '; ?>pictext<?php if ("REX_VALUE[19]" != '') echo " REX_VALUE[19]"; ?>">

	<?php
	if ("REX_VALUE[10]" != '') {
		echo '
		<REX_VALUE[11]>REX_VALUE[10]</REX_VALUE[11]>';
	}
	?>
		<div class="row">

		<?php
		// 2cols
		if ("REX_VALUE[9]" == '2')  {
			echo '
			<div class="col-md-6">
				'.$grid_content1.'
			</div>
			<div class="col-md-6">
				'.$grid_content2.'
			</div>';
		// 3cols
		} elseif ("REX_VALUE[9]" == '3')	 {
			echo '
			<div class="col-sm-4">
				'.$grid_content1.'
			</div>
			<div class="col-sm-4">
				'.$grid_content2.'
			</div>
			<div class="col-sm-4">
				'.$grid_content3.'
			</div>';
		// 1col
		} else {
			echo $grid_content1;
		}
		?>

	</div>

	<?php
	if ("REX_VALUE[18]"== 'true'){
	echo '
	<div class="hline"></div>';
	}
	?>
</div>
