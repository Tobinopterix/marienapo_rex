<!-- *******************************************************
QUOTE
******************************************************** -->
<?php
$bg = ("REX_MEDIA[1]" != '') ? ' style="background-image: url(index.php?rex_media_type=full&rex_media_file=REX_MEDIA[1])"' : '';
?>

<div class="fullpicture parallax clearfix"<?php echo $bg; ?>>
	<div class="layer"></div>
		<?php
		if ($this->getTemplateId() == 1) {
			echo '
			<div class="container centered">';
		} else {
			echo '
			<div class="centered">';
		}
		?>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<i class="fa fa-comment-o"></i>
				<?php
				if ('REX_VALUE[id=1 isset=1]') {
				    echo markitup::parseOutput('textile', 'REX_VALUE[id=1 output="html"]');
				}
				?>
				REX_VALUE[id='2' prefix='<h4><br>' suffix='</h4>']
			</div>
		</div><! --/row -->
	</div><! --/container -->
</div><! --/twrap -->
