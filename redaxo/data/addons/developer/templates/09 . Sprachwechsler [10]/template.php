<?php
// uncomment to show language array
// print_r(rex_clang::getAll());

$current_language = '';
$languages = '';


// two languages online -> only show link to other language
if (count(rex_clang::getAll(true)) == 2) {

	foreach (rex_clang::getAll(true) as $lang) {
		if (rex_clang::getCurrentId() != $lang->getValue('id')) {
			$languages = '
			<li class="lang-title visible-xs">{{ languages }}</li>
			<li class="lang">
				<a href="'.rex_getUrl($this->getValue('article_id'), $lang->getValue('id')).'" title="'.$lang->getValue('name').'">
					<span class="hidden-xs">'.$lang->getValue('code').'</span>
					<span class="visible-xs">'.$lang->getValue('name').'</span>
				</a>
			</li>';
		}
	}

	rex::setProperty('lang_switch', $languages);

// more than two languages online -> show dropdown, current language not clickable
} elseif (count(rex_clang::getAll(true)) > 2) {
	
	foreach (rex_clang::getAll(true) as $lang) {
		if (rex_clang::getCurrentId() == $lang->getValue('id')) {
			$current_language .= '
			<a href="#" title="'.$lang->getValue('name').'">
				<span class="hidden-xs">'.$lang->getValue('code').'</span>
				<span class="visible-xs">'.$lang->getValue('name').'</span>
			</a>';
		} else {
			$languages .= '
			<li class="dropdown-toggle">
				<a href="'.rex_getUrl($this->getValue('article_id'), $lang->getValue('id')).'" title="'.$lang->getValue('name').'">
					<span class="hidden-xs">'.$lang->getValue('code').'</span>
					<span class="visible-xs">'.$lang->getValue('name').'</span>
				</a>
			</li>';
		}
	}

	rex::setProperty('lang_switch', '<li class="lang-title visible-xs">{{ languages }}</li><li class="dropdown-toggle lang">' . $current_language . '<ul class="dropdown-menu">' . $languages . '</ul></li>');

}
?>