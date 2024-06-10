<?php
// Is there a Headline?
if ("REX_VALUE[1]" != '') {

	// If template with one column, use Bootstrap-CSS-class .container to enable indent
	?>
	<div class="<?php if ($this->getTemplateId() == 1) echo 'container clearfix '; ?>mtb">
		<div class="row">
			<div class="<?php if ($this->getTemplateId() == 1) echo 'col-lg-8 col-lg-offset-2 '; ?>centered">
				<h2>REX_VALUE[1]</h2>
				<br>
				<div class="hline"></div>
			</div>
		</div>
	</div><! --/container -->
<?php } ?>
