<?php

// In frontend read array
if (!rex::isBackend()) {
	$items = rex::getProperty('tabs')->getArrayCopy();
	rex::setProperty('tabs', new ArrayIterator());

	$tabs_title = '';
	$tabs_text = '';
	$tabs_out = '';
	$counter = 1;

	$title_style = 'title';
	$content_style = 'content';
	if ("REX_VALUE[1]" == 'tt' || "REX_VALUE[1]" == 'vt' || "REX_VALUE[1]" == 'bt') {
		$title_style = 'tab-title';
		$content_style = 'tab-content';
	}
	$one_open = ("REX_VALUE[3]" == 'one-open') ? " one-open" : "";

	foreach ($items as $item) {

		if (! isset($item['title'])) { $item['title'] = ''; };
		if (! isset($item['text'])) { $item['text'] = ''; };

		$active_title = '';
		$active_text = '';

		$tabs_title = $item['title'];
		$tabs_text = $item['text'];

		if ($tabs_title != '' && $tabs_text != '') {
			if ($counter == 1) $active_title = ' class="active"';

			$textile = markitup::parseOutput('textile', $tabs_text);
			$textile = str_replace(array('<b>', '</b>', '-&amp;gt;'), array('<span class="label label-primary">', '</span>', '->'), $textile);

			$tabs_out .= '
			<li'.$active_title.'>
				<div class="'.$title_style.'">
					<span>'.$tabs_title.'</span>
				</div>
				<div class="'.$content_style.' text">'.$textile.'</div>
			</li>';
		}

		$counter++;

	}
	?>

	<section class="<?php if ($this->getTemplateId() == 1) echo 'container clearfix '; ?>tabs">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 col-sm-12">

					<?php
					if ("REX_VALUE[2]" != '') {
						echo '
						<h3>REX_VALUE[2]</h3>';
					}

					if ("REX_VALUE[1]" == 'tt') { // Text-Tabs
						echo '
						<div class="tabbed-content text-tabs">';

					} elseif ("REX_VALUE[1]" == 'vt') { // Vertikale Tabs
						echo '
						<div class="tabbed-content button-tabs vertical">';

					} elseif ("REX_VALUE[1]" == 'bt') { // Button-Tabs
						echo '
						<div class="tabbed-content button-tabs">';
					}

					if ("REX_VALUE[1]" == 'ta') { // Text-Accordions

						echo '
						<ul class="accordion accordion-2'.$one_open.'">'.
							$tabs_out.'
						</ul>';

					} elseif ("REX_VALUE[1]" == 'ba') { // Button-Accordions

						echo '
						<ul class="accordion accordion-1'.$one_open.'">'.
							$tabs_out.'
						</ul>';

					} else {

						echo '
						<ul class="tabs">'.
							$tabs_out.'
						</ul>';

					}

					if ("REX_VALUE[1]" == 'tt' || "REX_VALUE[1]" == 'vt' || "REX_VALUE[1]" == 'bt') {
						echo '
						</diV>';
					}
					?>

				</div>
			</div>
	</section>


	<?php
} else {
	echo '
	<p>Output only in frontend</p>';
}
?>
