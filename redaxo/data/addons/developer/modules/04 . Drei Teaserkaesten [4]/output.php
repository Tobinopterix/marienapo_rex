<!-- *******************************************************
DREI TEASERKÄSTEN
******************************************************** -->

<?php
$template = ($this->getTemplateId() == 1) ? ' container' : '';
$distance = ("REX_VALUE[19]" != '') ? ' REX_VALUE[19]' : '';
$iconsize = ("REX_VALUE[15]" != '') ? ' REX_VALUE[15]' : '';
?>

<section class="service clearfix">
	<div class="full<?php echo $template.$distance.$iconsize; ?>">

		<div class="row centered">

			<div class="col-md-4">
				<?php
				if ("REX_VALUE[2]" != '') {
					if ("REX_VALUE[1]" != '') {
						echo '
						<i class="fa REX_VALUE[1]"></i>';
					}
					echo '
					<h4>REX_VALUE[2]</h4>';
				}

				if ('REX_VALUE[id=3 isset=1]') {
				    echo markitup::parseOutput('textile', 'REX_VALUE[id=3 output="html"]');
				}

				if ("REX_LINK[1]" != '') {
					$article = rex_article::get("REX_LINK[1]");
					if ($article) {
                        $article_name = $article->getValue('name');
                        if ("REX_VALUE[4]" != '') {
                            $article_name = 'REX_VALUE[4]';
                        }
                        echo '
					    <p><br/><a href="' . rex_getUrl("REX_LINK[1]") . '" class="btn btn-theme">' . $article_name . '</a></p>';
                    }
				}
				?>
			</div>

			<div class="col-md-4">
				<?php
				if ("REX_VALUE[6]" != '') {
					if ("REX_VALUE[5]" != '') {
						echo '
						<i class="fa REX_VALUE[5]"></i>';
					}
					echo '
					<h4>REX_VALUE[6]</h4>';
				}

				if ('REX_VALUE[id=7 isset=1]') {
				    echo markitup::parseOutput('textile', 'REX_VALUE[id=7 output="html"]');
				}

				if ("REX_LINK[2]" != '') {
					$article = rex_article::get("REX_LINK[2]");
                    if ($article) {
                        $article_name = $article->getValue('name');
                        if ("REX_VALUE[8]" != '') {
                            $article_name = 'REX_VALUE[8]';
                        }
                        echo '
                        <p><br/><a href="' . rex_getUrl("REX_LINK[2]") . '" class="btn btn-theme">' . $article_name . '</a></p>';
                    }
				}
				?>
			</div>

			<div class="col-md-4">
				<?php
				if ("REX_VALUE[10]" != '') {
					if ("REX_VALUE[9]" != '') {
						echo '
						<i class="fa REX_VALUE[9]"></i>';
					}
					echo '
					<h4>REX_VALUE[10]</h4>';
				}

				if ('REX_VALUE[id=11 isset=1]') {
				    echo markitup::parseOutput('textile', 'REX_VALUE[id=11 output="html"]');
				}

				if ("REX_LINK[3]" != '') {
					$article = rex_article::get("REX_LINK[3]");
                    if ($article) {
                        $article_name = $article->getValue('name');
                        if ("REX_VALUE[12]" != '') {
                            $article_name = 'REX_VALUE[12]';
                        }
                        echo '
                        <p><br/><a href="' . rex_getUrl("REX_LINK[3]") . '" class="btn btn-theme">' . $article_name . '</a></p>';
                    }
				}
				?>
			</div>
		</div>
	</div><! --/container -->
</section><! --/service -->
