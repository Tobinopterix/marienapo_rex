<?php
// Include Headerpicture recursive
// If current article has no picture, take picture from parent categories
$header = '';
$headerpic = $this->getValue('art_file');
$darken = $this->getValue('art_darken');

if ($headerpic == '') {
    $category = rex_article::getCurrent()->getCategory();
    while ($headerpic == '') {
        if ($category == null) {
            break;
        }
        $headerpic = $category->getValue('art_file');
        $darken = $category->getValue('art_darken');
        $category = $category->getParent();
    }
}

if ($headerpic == '') {
    $headerpic = rex_article::getSiteStartArticle()->getValue('art_file');
    $darken = rex_article::getSiteStartArticle()->getValue('art_file_darken');
}


$header = '
<div id="headerpic" style="background-image: url('.rex_url::frontendController(['rex_media_type' => 'fullscreen', 'rex_media_file' => $headerpic]).');">';

    // Darken header picture
    if ($darken == '')  $darken = '0.35'; // Default darken 35%
    $header .= '
    <div class="layer" style="opacity: '.$darken.';"></div>';

    $header .= '
    <div class="container centered">
        <div class="row">
            <h3>'.$this->getValue('name').'</h3>
        </div><!-- /row -->
    </div> <!-- /container -->
</div><!-- /headerpic -->';



// If gallery exists,
// show gallery instead of header picture
if ($this->getValue('art_gallery') != '') {

    $header = '
    <section class="hero-slider slider-fullscreen">
        <ul class="slides">';
        
            $imagelist = explode(',', $this->getValue('art_gallery'));
            foreach ($imagelist as $file) {
            
                $media = rex_media::get($file);
                if ($media) {
                
                    $languageSuffix = '';
                    if (rex_clang::getCurrentId() == 2) {
                        $languageSuffix = '_en';
                    }

                    $mediadesc = str_replace(array("\r\n", "\n", "\r"), ' ', $media->getValue('med_description' . $languageSuffix));
					// english
					$mediatitle = $media->getValue('med_gallery_title' . $languageSuffix);
                    $mediatext = $media->getValue('med_gallery_text' . $languageSuffix);
                    $medialinktext = $media->getValue('med_gallery_link_text' . $languageSuffix);
					$medialink = $media->getValue('med_gallery_link');
					$mediadarken = $media->getValue('med_darken');

                    $header .= '
                    <li class="parallax kenburns">';
                        
                        // Abdunkelung
                        if ($mediadarken == '') $mediadarken = '0.35'; // Default darken 35%
                        $header .= '
                        <div class="overlay" style="opacity: '.$mediadarken.';"></div>';

                        $header .= '
                        <img alt="'.$mediatitle.'" class="background-image" src="'.rex_url::frontendController(['rex_media_type' => 'fullscreen', 'rex_media_file' => $file]).'">';


                        if ($mediatitle != '' || $mediatext != '') {
                            $header .= '
                            <div class="row slide-content animate">
                                <div class="col-lg-6 col-lg-offset-3 text-center">';

                                    if ($mediatitle != '') {
                                        $header .= '
                                        <h1>'.$mediatitle.'</h1>';
                                    }
                                    if ($mediatitle != '') {
                                        $header .= '
                                        <p class="lead">'.$mediatext.'</p>';
                                    }
                                    if ($medialink != '' && $medialinktext != '') {
                                        $header .= '
                                        <a href="'.$medialink.'" class="btn btn-theme">'.$medialinktext.'</a>';
                                    }

                                    $header .= '
                                </div>
                            </div>';
                        }

                    $header .= '
                    </li>';
                }
            }
        
        $header .= '
        </ul>
    </section><!--end of fullscreen slider-->';
}

echo $header;
?>