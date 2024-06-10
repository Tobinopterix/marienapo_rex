<?php
if (!isset($counter)) {
	$counter = 0;
}
$counter++;

// Write data in an array for Frontend, but do not show them
if (! rex::isBackend()) {
	$items = array();
	$items = ['title' => 'REX_VALUE[2]', 'text' => 'REX_VALUE[1]'];
	rex::getProperty('tabs')->append($items);
// Im Backend wird der Inhalt als Info für den Redakteur angezeigt
} else {
	if ('REX_VALUE[id=2 isset=1]') {
	    echo '<h2>REX_VALUE[2]</h2>';
	}
	if ('REX_VALUE[id=1 isset=1]') {
	    echo '<p>REX_VALUE[1]</p>';
	}
}
?>
