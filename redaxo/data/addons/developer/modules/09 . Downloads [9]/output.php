<?php
$background = ("REX_VALUE[16]" == 'true') ? ' grey' : '';
echo '

<div class=" downloads-wrapper clearfix'.$background.'">
    <div class=" downloads';
    if ($this->getTemplateId() == 1) {
        echo ' container';
    }
    if ("REX_VALUE[19]" != '') {
        echo ' REX_VALUE[19]';
    }
    echo '">';

        if ("REX_VALUE[17]" == 'vd') {
            echo '
            <div class="row">
            <div class="col-md-8 col-md-offset-2">';
        }

        if ("REX_VALUE[2]" != '') {
            echo '
            <h3>REX_VALUE[2]</h3>';
        }

        if ("REX_MEDIALIST[1]" != '') {

            // Find out file size
            if (!function_exists('datei_groesse')) {
                function datei_groesse($URL) {

                    $groesse = filesize($URL);
                    if($groesse<1000) {
                        return number_format($groesse, 0, ",", ".")." Bytes";
                    }
                    elseif($groesse<1000000) {
                        return number_format($groesse/1024, 0, ",", ".")." kB";
                    } else {
                        return number_format($groesse/1048576, 0, ",", ".")." MB";
                    }
                }
            }

            // Find out icon
            if (!function_exists('parse_icon')) {
                function parse_icon($ext) {
                    switch (strtolower($ext)) {
                        case 'doc': return '<i class="fa fa-file-word-o"></i>';
                        case 'pdf': return '<i class="fa fa-file-pdf-o"></i>';
                        case 'zip': return '<i class="fa fa-archive-pdf-o"></i>';
                        // please add your own settings, e.g. with icons of Font-Awesome
                    default:
                        return '';
                    }
                }
            }


            $languageSuffix = '';
            if (rex_clang::getCurrentId() == 2) {
                $languageSuffix = '_en';
            }

            $arr = explode(",","REX_MEDIALIST[1]");
            foreach ($arr as $value) {

                $extension = substr(strrchr($value, '.'), 1);
                $parsed_icon = parse_icon($extension);
                $media = rex_media::get($value);
                $file_desc = $media->getValue('med_description' . $languageSuffix);

                echo '
                <p><a href="'.rex_getUrl(12, $this->clang, array ('file' => $value) ).'">'.$parsed_icon;

                // Description as linktext, if there is one. Otherwise filename
                if ($file_desc != "") {
                    echo $file_desc;
                } else {
                    echo $value;
                }

                echo ' ('.datei_groesse(rex_path::media($value)).')</a></p>';

            }
        }

        if ("REX_VALUE[18]"== 'true'){
            echo '
            <div class="hline"></div>';
        }

        if ("REX_VALUE[17]" == 'vd') {
            echo '
            </div>
            </div>';
        }
    echo '
    </div>
</div>';
?>