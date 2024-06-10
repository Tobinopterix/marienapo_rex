<?php
$path = explode("|",$this->getValue("path").$this->getValue("article_id")."|");
$path1 = ((!empty($path[1])) ? $path[1] : '');
$path2 = ((!empty($path[2])) ? $path[2] : '');

$article = rex_article::get($path1);
$articleUrl = $article->getUrl();
$articleName = $article->getName();

$nav = rex_navigation::factory();
$subnav = $nav->get($path1,2,TRUE,TRUE);

if ($subnav != '') {

	echo '
	<h4 id="sidenav_title"><a href="'.$articleUrl.'">'.$articleName.'</a></h4>
	<div class="hline"></div>';

	echo $subnav;

}
?>
