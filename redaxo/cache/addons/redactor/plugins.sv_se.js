let redactorLang = "sv";

let redactorTranslations = {
    "cancel": "Avbryta",
    "edit": "Bearbeta",
    "insert": "Infoga",
    "save": "Spara",
    "unlink": "Radera l\u00e4nk",
    "alignment_center_title": "Justera texten centrerad",
    "alignment_left_title": "V\u00e4nsterjustera text",
    "alignment_justify_title": "H\u00f6ger-\/v\u00e4nster justerad text",
    "alignment_right_title": "H\u00f6gerjustera text",
    "alignment_title": "Inriktning",
    "blockquote_title": "Citat",
    "blockquote_tooltip": "Citat",
    "bold_title": "B",
    "bold_tooltip": "Fet",
    "cleaner_title": "Ta bort formatering",
    "cleaner_tooltip": "Ta bort formatering",
    "clip_title": "Clips",
    "clip_tooltip": "Clips",
    "deleted_title": "S",
    "deleted_tooltip": "Radera",
    "format_title": "Format",
    "format_tooltip": "Format",
    "h1_title": "H1",
    "h1_tooltip": "Rubrik 1",
    "h2_title": "H2",
    "h2_tooltip": "Rubrik 2",
    "h3_title": "H3",
    "h3_tooltip": "Rubrik 3",
    "h4_title": "H4",
    "h4_tooltip": "Rubrik 4",
    "h5_title": "H5",
    "h5_tooltip": "Rubrik 5",
    "h6_title": "H6",
    "h6_tooltip": "Rubrik 6",
    "hr_title": "Linje",
    "image_title": "Bild",
    "indent_title": "&gt; \u00d6ka indrag",
    "italic_title": "I",
    "italic_tooltip": "Kursiv",
    "link_title": "L\u00e4nk",
    "link_insert": "Infoga l\u00e4nk",
    "link_unlink": "Radera l\u00e4nk",
    "linkEmail_label_email": "E-post adress",
    "linkEmail_label_text": "Text",
    "linkEmail_title": "S\u00e4tt in e -postadressen som en l\u00e4nk",
    "linkEmail_tooltip": "S\u00e4tt in e -postadressen som en l\u00e4nk",
    "linkInternal_title": "\u00d6ppna l\u00e4nkmapp",
    "linkMedia_title": "L\u00e4nka medium",
    "linkTelephone_label_number": "Telefonnummer",
    "linkTelephone_label_text": "Text",
    "linkTelephone_notice_number": "internationell stavning (+4969123456789)",
    "linkTelephone_title": "Infoga telefonnummer som l\u00e4nk",
    "linkTelephone_tooltip": "Infoga telefonnummer som l\u00e4nk",
    "linkYForm_title": "YForm",
    "lists_title": "Listor",
    "ol_title": "1. Ordnad lista",
    "outdent_title": "&lt; Minska indrag",
    "quote_cancel": "Avbryta",
    "quote_insert": "Infoga",
    "quote_label_author": "Autor",
    "quote_label_cite": "Referenz \/ titel",
    "quote_label_text": "Citat",
    "pre_title": "Kod",
    "pre_tooltip": "Kod",
    "redo_title": "\u00c5terst\u00e4ll",
    "redo_tooltip": "\u00c5terst\u00e4ll",
    "style_title": "Textstilar",
    "style_code_title": "Kod",
    "style_mark_title": "Markerad",
    "style_kbd_title": "Tangentbordsinmatning",
    "style_sub_title": "L\u00e5gplacerad",
    "style_sup_title": "H\u00f6gdplacerad",
    "style_var_title": "Variabel",
    "subscript_title": "Sub",
    "subscript_tooltip": "L\u00e5gplacerad",
    "superscript_title": "Sup",
    "superscript_tooltip": "H\u00f6gdplacerad",
    "ul_title": "\u2022 oordnad lista",
    "underline_title": "U",
    "underline_tooltip": "Understruken",
    "undo_title": "Dra tillbaka",
    "undo_tooltip": "Dra tillbaka",
    "vendor_chars": "Tecken",
    "vendor_words": "Ord",
    "vendor_fontcolor": "Textf\u00e4rg",
    "vendor_text": "Text",
    "vendor_highlight": "Markerad",
    "vendor_fontfamily": "Typsnittsfamilj",
    "vendor_remove_font_family": "Radera typsnittsfamilj",
    "vendor_size": "Textstorlek,",
    "vendor_remove_size": "Radera textstorlek,",
    "vendor_fullscreen": "Fullbild",
    "vendor_properties": "Egenskaper",
    "vendor_specialchars": "Specialtecken",
    "vendor_table": "Tabell",
    "vendor_insert_table": "Infoga tabell",
    "vendor_insert_row_above": "Infoga raden ovanf\u00f6r",
    "vendor_insert_row_below": "Infoga raden nedanf\u00f6r",
    "vendor_insert_column_left": "Infoga kolumn till v\u00e4nster",
    "vendor_insert_column_right": "Infoga kolumn till h\u00f6ger",
    "vendor_add_head": "Infoga tabellrubrik",
    "vendor_delete_head": "Radera tabellrubrik",
    "vendor_delete_column": "Radera kolumn",
    "vendor_delete_row": "Radera rad",
    "vendor_delete_table": "Radera tabell",
    "vendor_change_text_direction": "L\u00e4seriktning",
    "vendor_left_to_right": "V\u00e4nster till h\u00f6ger",
    "vendor_right_to_left": "H\u00f6ger till v\u00e4nster",
    "vendor_video": "Video",
    "vendor_video_html_code": "Inb\u00e4ddningskod f\u00f6r video eller Youtube \/ Vimeo -l\u00e4nk",
    "vendor_widget": "Widget",
    "vendor_widget_html_code": "Widget HTML Code"
};

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

(function ($R) {
    $R.add('plugin', 'alignment', {
        init: function (app) {
            this.app = app;
            this.opts = app.opts;
            this.lang = app.lang;
            this.block = app.block;
            this.toolbar = app.toolbar;
        },
        // public
        start: function () {
            let dropdown = {};

            dropdown.left = {
                title: redactorTranslations.alignment_left_title,
                api: 'plugin.alignment.set',
                args: 'left'
            };
            dropdown.center = {
                title: redactorTranslations.alignment_center_title,
                api: 'plugin.alignment.set',
                args: 'center'
            };
            dropdown.right = {
                title: redactorTranslations.alignment_right_title,
                api: 'plugin.alignment.set',
                args: 'right'
            };
            dropdown.justify = {
                title: redactorTranslations.alignment_justify_title,
                api: 'plugin.alignment.set',
                args: 'justify'
            };

            var button = this.toolbar.addButton('alignment', {
                title: redactorTranslations.alignment_title
            });
            button.setIcon('<i class="re-icon-alignment"></i>');
            button.setDropdown(dropdown);
        },
        set: function (type) {
            if (type === 'left' && this.opts.direction === 'ltr') {
                return this._remove();
            }

            var args = {
                style: {'text-align': type}
            };

            this.block.toggle(args);
        },

        // private
        _remove: function () {
            this.block.remove({style: 'text-align'});
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'blockquote', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.blockquote_title,
                icon: false,
                tooltip: redactorTranslations.blockquote_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'blockquote'
                }
            };

            this.toolbar.addButton('blockquote', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'bold', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.bold_title,
                icon: true,
                tooltip: redactorTranslations.bold_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'b'
                }
            };

            this.toolbar.addButton('bold', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'cleaner', {
        init: function (app) {
            this.app = app;
            this.block = app.block;
            this.inline = app.inline;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.cleaner_title,
                icon: true,
                tooltip: redactorTranslations.cleaner_tooltip,
                api: 'plugin.cleaner.format'
            };

            let button = this.toolbar.addButton('cleaner', obj);
            button.setIcon('<i class="fa fa-eraser"></i>');
        },

        format: function () {
            if (this.selection.is()) {
                this.inline.clearFormat();
                this.inline.clearAttr();
                this.inline.clearClass();
                this.inline.clearStyle();

                // get the current selection
                // let html = this.selection.getHtml();

                // Strip out html
                // html = html.replace(/(<([^>]+)>)/ig, "");
                //
                // this.insertion.set(html);
            }
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'clip', {
        init: function (app) {
            this.opts = app.opts;
            this.insertion = app.insertion;
            this.toolbar = app.toolbar;

            if ('redaxo' in this.opts && 'clip' in this.opts.redaxo) {
                this.clipopts = app.opts.redaxo.clip;
            } else {
                return false;
            }
        },

        // public
        start: function () {
            let dropdown = {};

            $.each(this.clipopts, function (i, data) {
                let title = data[0];
                let clip = data[1];

                dropdown[i] = {
                    title: title,
                    api: 'plugin.clip.set',
                    args: clip
                };
            });

            let obj = {
                title: redactorTranslations.clip_title,
                icon: true,
                tooltip: redactorTranslations.clip_tooltip
            };
            // Don't use name like clip. This has a conflict with the vendor.
            let button = this.toolbar.addButton('for-clip', obj);
            button.setIcon('<i class="re-icon-clips"></i>');
            button.setDropdown(dropdown);
        },

        set: function (data) {
            this.insertion.insertHtml(data);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'deleted', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.deleted_title,
                icon: true,
                tooltip: redactorTranslations.deleted_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'del'
                }
            };

            this.toolbar.addButton('deleted', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'format', {
        init: function (app) {
            this.opts = app.opts;
            this.block = app.block;
            this.selection = app.selection;
            this.toolbar = app.toolbar;

            let opts = this.opts.formatting;
            if ('redaxo' in this.opts && 'format' in this.opts.redaxo) {
                opts = app.opts.redaxo.format;
            }

            $.each(opts, function (i, data) {
                if (typeof data === 'string') {
                    opts[i] = [data, data];
                }
            });

            this.formatopts = opts;
        },

        // public
        start: function () {
            let dropdown = {};

            $.each(this.formatopts, function (i, data) {
                let title = data[0];
                let tag = data[0];
                let cssClass = '';

                if (data.length >= 2) {
                    let params = data[1].split('.');
                    tag = params[0];

                    if (params.length === 2) {
                        cssClass = params[1];
                    }
                }

                if (cssClass !== '') {
                    title = '<span class="' + cssClass + '">' + title + '</span>';
                }

                dropdown[i] = {
                    title: title,
                    api: 'plugin.format.set',
                    args: {
                        tag: tag,
                        cssClass: cssClass
                    }
                };
            });

            let obj = {
                title: redactorTranslations.format_title,
                icon: true,
                tooltip: redactorTranslations.format_tooltip
            };
            // Don't use name like format. This has a conflict with the vendor.
            let button = this.toolbar.addButton('for-format', obj);
            button.setIcon('<i class="re-icon-format"></i>');
            button.setDropdown(dropdown);
        },

        set: function (data) {
            let args = {
                'tag': data.tag,
                'type': 'toggle'
            };

            if (data.cssClass !== '') {
                args.class = data.cssClass;
            }
            let block = this.selection.getBlock();
            let element = $R.dom(block);
            element.removeAttr('class');
            this.block.format(args);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h1', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h1_title,
                icon: false,
                tooltip: redactorTranslations.h1_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h1'
                }
            };

            this.toolbar.addButton('h1', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h2', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h2_title,
                icon: false,
                tooltip: redactorTranslations.h2_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h2'
                }
            };

            this.toolbar.addButton('h2', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h3', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h3_title,
                icon: false,
                tooltip: redactorTranslations.h3_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h3'
                }
            };

            this.toolbar.addButton('h3', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h4', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h4_title,
                icon: false,
                tooltip: redactorTranslations.h4_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h4'
                }
            };

            this.toolbar.addButton('h4', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h5', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h5_title,
                icon: false,
                tooltip: redactorTranslations.h5_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h5'
                }
            };

            this.toolbar.addButton('h5', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'h6', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.h6_title,
                icon: false,
                tooltip: redactorTranslations.h6_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'h6'
                }
            };

            this.toolbar.addButton('h6', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'hr', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.hr_title,
                api: 'module.line.insert'
            };

            let button = this.toolbar.addButton('hr', obj);
            button.setIcon('<i class="re-icon-line"></i>');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'html', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: 'HTML',
                icon: true,
                api: 'module.source.toggle'
            };

            this.toolbar.addButton('html', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'image', {
        init: function (app) {
            this.app = app;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.image_title,
                observe: 'link',
                api: 'plugin.image.open'
            };

            let button = this.toolbar.addButton('image', obj);
            button.setIcon('<i class="rex-icon rex-icon-media"></i>');
        },

        open: function () {
            let params = 'redactor_image';
            if ('redactor_rex_media_getImageTypes' in rex) {
                params += '&args[types]='+rex.redactor_rex_media_getImageTypes.join(',');
            }
            let that = this;
            let mediaPool = openMediaPool(params);
            $(mediaPool).on('rex:selectMedia', function (event, filename) {
                event.preventDefault();
                mediaPool.close();
                let options = {
                    url: rex.redactor_imageUrlPath+filename,
                    label: filename
                };
                that._insert(options);
            });
        },

        // private
        _insert: function (data) {
            if (this.selection.getText() !== '') {
                data.label = this.selection.getText();
            }
            this.insertion.insertRaw('<img src="'+data.url+'" alt="" />');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'indent', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.indent_title,
                icon: true,
                api: 'module.list.indent',
                observe: 'list'
            };

            this.toolbar.addButton('indent', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'italic', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.italic_title,
                icon: true,
                tooltip: redactorTranslations.italic_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'i'
                }
            };

            this.toolbar.addButton('italic', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'linkEmail', {
        init: function (app) {
            this.app = app;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.inspector = app.inspector;
            this.selection = app.selection;
            this.cleaner = app.cleaner;
            this.component = app.component;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.linkEmail_title,
                icon: false,
                tooltip: redactorTranslations.linkEmail_tooltip,
                api: 'plugin.linkEmail.open'
            };

            let button = this.toolbar.addButton('linkEmail', obj);
            button.setIcon('<i class="re-icon-link"></i><i class="fa fa-envelope-o" style="margin-left: .1em; vertical-align: top;"></i>');
        },

        open: function () {
            this.$currentItem = this._getCurrent();

            var options = {
                title: redactorTranslations.linkEmail_title,
                name: 'linkEmailModal',
                width: '500px',
                height: false,
                handle: 'insert',
                commands: {
                    insert: {title: (this.$currentItem) ? redactorTranslations.save : redactorTranslations.insert},
                    cancel: {title: redactorTranslations.cancel,}
                }
            };

            this.app.api('module.modal.build', options);
        },

        onmodal: {
            'linkEmailModal': {
                open: function ($modal, $form) {
                    if (this.selection.getText() !== '') {
                        $form.setData({
                            'linkEmailText': this.selection.getText()
                        });
                    }
                },
                opened: function ($modal, $form) {
                    $form.getField('linkEmailAddress').focus();
                    if (this.$currentItem) {
                        let $el = $R.dom(this.$currentItem);
                        let email = decodeURI($el.attr('href').substring(7));
                        let text = $el.text();
                        $form.getField('linkEmailAddress').val(email);
                        $form.getField('linkEmailText').val(text);
                    }
                },
                insert: function ($modal, $form) {
                    let data = $form.getData();
                    if (this._validateData($form, data)) {
                        this._insert(data);
                    }
                },
            }
        },

        modals: {
            'linkEmailModal': '<form action="">'
                + '<div class="form-item">'
                + '<label>' + redactorTranslations.linkEmail_label_email + ' <span class="req">*</span</label>'
                + '<input name="linkEmailAddress" type="text" />'
                + '</div>'
                + '<div class="form-item">'
                + '<label>' + redactorTranslations.linkEmail_label_text + '</label>'
                + '<input name="linkEmailText" type="text" />'
                + '</div>'
                + '</form>'
        },

        oncontextbar: function (e, contextbar) {

            let data = this.inspector.parse(e.target);
            if (data.isLink()) {
                let node = data.getLink();
                let $el = $R.dom(node);

                let url = $el.attr('href');
                if (url.substring(0, 7) === 'mailto:') {
                    let $point = $R.dom('<a>');

                    $point.text(url.substring(7));
                    $point.attr('href', url);

                    var buttons = {
                        'link': {
                            title: $point,
                            html: url.substring(7)
                        },
                        'edit': {
                            title: redactorTranslations.edit,
                            api: 'plugin.linkEmail.open',
                            args: node
                        },
                        'unlink': {
                            title: redactorTranslations.unlink,
                            api: 'module.link.unlink'
                        }
                    };
                    contextbar.set(e, node, buttons, 'bottom');
                }
            }
        },

        _getCurrent: function () {
            var current = this.selection.getCurrent();
            var data = this.inspector.parse(current);
            if (data.isLink()) {
                return this.component.build(data.getLink());
            }
        },

        _insert: function (data) {
            // close the modal
            this.app.api('module.modal.close');

            // check the data
            if (data.linkEmailAddress.trim() === '') {
                return;
            }
            if (data.linkEmailText.trim() === '') {
                data.linkEmailText = data.linkEmailAddress;
            }

            let current = this._getCurrent();
            if (current) {
                let element = $R.dom(current);
                element.attr('href', 'mailto:'+data.linkEmailAddress);
                element.text(data.linkEmailText);
            } else {
                this.insertion.insertRaw('<a href="mailto:' + data.linkEmailAddress + '">' + data.linkEmailText + '</a>');
            }
        },

        _validateData: function ($form, data) {
            return (data.linkEmailAddress.trim() === '') ? $form.setError('linkEmailAddress') : true;
        },
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'linkExternal', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.link_insert,
                observe: 'link',
                api: 'module.link.open'
            };

            let button = this.toolbar.addButton('linkExternal', obj);
            button.setIcon('<i class="re-icon-link"></i>');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'linkInternal', {
        init: function (app) {
            this.app = app;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.linkInternal_title,
                observe: 'link',
                api: 'plugin.linkInternal.open'
            };

            let button = this.toolbar.addButton('linkInternal', obj);
            button.setIcon('<i class="rex-icon rex-icon-open-linkmap"></i>');
        },

        open: function () {
            let that = this;
            let linkMap = openLinkMap('', '&clang=' + rex.redactor_rex_clang_getCurrentId);
            $(linkMap).on('rex:selectLink', function (event, url, label) {
                event.preventDefault();
                linkMap.close();
                label = label.replace(new RegExp(that.opts.redaxo.regex.id, 'gi'), "$1");
                let options = {
                    url: url,
                    label: label
                };
                that._insert(options);
            });
        },

        // private
        _insert: function (data) {
            if (this.selection.getText() !== '') {
                data.label = this.selection.getText();
            }
            this.insertion.insertRaw('<a href="' + data.url + '">' + data.label + '</a>');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'linkMedia', {
        init: function (app) {
            this.app = app;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.linkMedia_title,
                observe: 'link',
                api: 'plugin.linkMedia.open'
            };

            let button = this.toolbar.addButton('linkMedia', obj);
            button.setIcon('<i class="re-icon-link"></i><i class="rex-icon rex-icon-media" style="margin-left: .1em; vertical-align: top;"></i>');
        },

        open: function () {
            let that = this;
            let mediaPool = openMediaPool('redactor_linkMedia');
            $(mediaPool).on('rex:selectMedia', function (event, filename) {
                event.preventDefault();
                mediaPool.close();
                let options = {
                    url: rex.redactor_rex_url_media+filename,
                    label: filename
                };
                that._insert(options);
            });
        },

        // private
        _insert: function (data) {
            if (this.selection.getText() !== '') {
                data.label = this.selection.getText();
            }
            this.insertion.insertRaw('<a href="' + data.url + '">' + data.label + '</a>');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'linkTelephone', {
        init: function (app) {
            this.app = app;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.inspector = app.inspector;
            this.selection = app.selection;
            this.cleaner = app.cleaner;
            this.component = app.component;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.linkTelephone_title,
                icon: false,
                tooltip: redactorTranslations.linkTelephone_tooltip,
                api: 'plugin.linkTelephone.open'
            };

            let button = this.toolbar.addButton('linkTelephone', obj);
            button.setIcon('<i class="re-icon-link"></i><i class="fa fa-phone" style="margin-left: .1em; vertical-align: top;"></i>');
        },

        open: function () {
            this.$currentItem = this._getCurrent();

            var options = {
                title: redactorTranslations.linkTelephone_title,
                name: 'linkTelephoneModal',
                width: '500px',
                height: false,
                handle: 'insert',
                commands: {
                    insert: {title: (this.$currentItem) ? redactorTranslations.save : redactorTranslations.insert},
                    cancel: {title: redactorTranslations.cancel,}
                }
            };

            this.app.api('module.modal.build', options);
        },

        onmodal: {
            'linkTelephoneModal': {
                open: function ($modal, $form) {
                    if (this.selection.getText() !== '') {
                        $form.setData({
                            'linkTelephoneText': this.selection.getText()
                        });
                    }
                },
                opened: function ($modal, $form) {
                    $form.getField('linkTelephoneNumber').focus();
                    if (this.$currentItem) {
                        let $el = $R.dom(this.$currentItem);
                        let email = decodeURI($el.attr('href').substring(4));
                        let text = $el.text();
                        $form.getField('linkTelephoneNumber').val(email);
                        $form.getField('linkTelephoneText').val(text);
                    }
                },
                insert: function ($modal, $form) {
                    let data = $form.getData();
                    if (this._validateData($form, data)) {
                        this._insert(data);
                    }
                },
            }
        },

        modals: {
            'linkTelephoneModal': '<form action="">'
                + '<div class="form-item">'
                + '<label>' + redactorTranslations.linkTelephone_label_number + ' <span class="req">*</span</label>'
                + '<input name="linkTelephoneNumber" type="text" />'
                + '<span class="desc">' + redactorTranslations.linkTelephone_notice_number + '</span>'
                + '</div>'
                + '<div class="form-item">'
                + '<label>' + redactorTranslations.linkTelephone_label_text + '</label>'
                + '<input name="linkTelephoneText" type="text" />'
                + '</div>'
                + '</form>'
        },

        oncontextbar: function (e, contextbar) {

            let data = this.inspector.parse(e.target);
            if (data.isLink()) {
                let node = data.getLink();
                let $el = $R.dom(node);

                let url = $el.attr('href');
                if (url.substring(0, 4) === 'tel:') {
                    let $point = $R.dom('<a>');

                    $point.text(url.substring(4));
                    $point.attr('href', url);

                    var buttons = {
                        'link': {
                            title: $point,
                            html: url.substring(4)
                        },
                        'edit': {
                            title: redactorTranslations.edit,
                            api: 'plugin.linkTelephone.open',
                            args: node
                        },
                        'unlink': {
                            title: redactorTranslations.unlink,
                            api: 'module.link.unlink'
                        }
                    };
                    contextbar.set(e, node, buttons, 'bottom');
                }
            }
        },

        _getCurrent: function () {
            var current = this.selection.getCurrent();
            var data = this.inspector.parse(current);
            if (data.isLink()) {
                return this.component.build(data.getLink());
            }
        },

        _insert: function (data) {
            // close the modal
            this.app.api('module.modal.close');

            // check the data
            if (data.linkTelephoneText.trim() === '') {
                data.linkTelephoneText = data.linkTelephoneNumber;
            }

            let current = this._getCurrent();
            if (current) {
                let element = $R.dom(current);
                element.attr('href', 'tel:'+data.linkTelephoneNumber);
                element.text(data.linkTelephoneText);
            } else {
                this.insertion.insertRaw('<a href="tel:' + data.linkTelephoneNumber + '">' + data.linkTelephoneText + '</a>');
            }
        },

        _validateData: function ($form, data) {
            let regex = /^\+(?:[0-9] ?){6,14}[0-9]$/;
            return regex.test(data.linkTelephoneNumber) ? true : $form.setError('linkTelephoneNumber');
        },
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */


/**
 * = = = = = = = = = = = = = = = = = = = = =
 * Don't use this
 * = = = = = = = = = = = = = = = = = = = = =
 */
(function ($R) {
    $R.add('plugin', 'linkYForm', {
        init: function (app) {
            this.app = app;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;

            if ('redaxo' in this.opts && 'linkYForm' in this.opts.redaxo) {
                this.yform = app.opts.redaxo.linkYForm;
            } else {
                return false;
            }
        },

        // public
        start: function () {
            let dropdown = {};

            $.each(this.yform, function(i, data) {
                dropdown[i] = {
                    title: data[0],
                    api: 'plugin.linkYForm.open',
                    args: {
                        table: data[0],
                        label: data[1]
                    }
                };
            });

            let obj = {
                title: redactorTranslations.linkYForm_title,
                api: 'plugin.linkYForm.open'
            };

            let button = this.toolbar.addButton('linkYForm', obj);
            button.setDropdown(dropdown);
        },

        open: function (data) {
            let that = this;
            let eventFired = false;
            let pool = newPoolWindow('index.php?page=yform/manager/data_edit&table_name=' + data.table + '&rex_yform_manager_opener[id]=1&rex_yform_manager_opener[field]=' + data.label + '&rex_yform_manager_opener[multiple]=0');
            $(pool).on('rex:YForm_selectData', function (event, id, label) {
                event.preventDefault();
                pool.close();

                if (!eventFired) {
                    label = label.replace(new RegExp(that.opts.redaxo.regex.id, 'gi'), "$1");
                    let options = {
                        url: data.table.split('_').join('-') + '://' + id,
                        label: label
                    };
                    that._insert(options);
                    eventFired = true;
                }
            });
        },

        // private
        _insert: function (data) {
            if (this.selection.getText() !== '') {
                data.label = this.selection.getText();
            }
            this.insertion.insertRaw('<a href="' + data.url + '">' + data.label + '</a>');
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'lists', {
        init: function (app) {
            this.opts = app.opts;
            this.toolbar = app.toolbar;

            this.listsopts = ['ul', 'ol', 'outdent', 'indent'];

            if ('redaxo' in this.opts && 'lists' in this.opts.redaxo) {
                this.listsopts = app.opts.redaxo.lists;
            }
        },

        // public
        start: function () {

            let dropdown = {
                observe: 'list'
            };

            if (this.listsopts.indexOf('ul') !== -1) {
                dropdown.unorderedlist = {
                    title: redactorTranslations.ul_title,
                    api: 'module.list.toggle',
                    args: 'ul'
                }
            }

            if (this.listsopts.indexOf('ol') !== -1) {
                dropdown.orderedlist = {
                    title: redactorTranslations.ol_title,
                    api: 'module.list.toggle',
                    args: 'ol'
                }
            }

            if (this.listsopts.indexOf('outdent') !== -1) {
                dropdown.outdent = {
                    title: redactorTranslations.outdent_title,
                    api: 'module.list.outdent'
                }
            }

            if (this.listsopts.indexOf('indent') !== -1) {
                dropdown.indent = {
                    title: redactorTranslations.indent_title,
                    api: 'module.list.indent'
                }
            }

            let obj = {
                title: redactorTranslations.lists_title,
                icon: true,
                observe: 'list'
            };

            let button = this.toolbar.addButton('lists', obj);
            button.setDropdown(dropdown);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'ol', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.ol_title,
                icon: true,
                api: 'module.list.toggle',
                observe: 'list',
                args: 'ol'
            };

            this.toolbar.addButton('ol', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'outdent', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.outdent_title,
                icon: true,
                api: 'module.list.outdent',
                observe: 'list'
            };

            this.toolbar.addButton('outdent', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'pre', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.pre_title,
                icon: true,
                tooltip: redactorTranslations.pre_tooltip,
                api: 'module.block.format',
                args: {
                    tag: 'pre'
                }
            };

            this.toolbar.addButton('pre', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'quote', {
        init: function (app) {
            this.app = app;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;
            this.selection = app.selection;
            this.cleaner = app.cleaner;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.blockquote_title,
                icon: false,
                tooltip: redactorTranslations.blockquote_tooltip,
                api: 'plugin.quote.open',
                args: {
                    tag: 'blockquote'
                }
            };

            this.toolbar.addButton('quote', obj);
        },

        open: function() {
            var options = {
                title: redactorTranslations.quote_title,
                name: 'redaxoModal',
                width: '500px',
                height: false,
                handle: 'insert',
                commands: {
                    insert: { title: redactorTranslations.quote_insert, },
                    cancel: { title: redactorTranslations.quote_cancel, }
                }
            };

            this.app.api('module.modal.build', options);
        },

        onmodal: {
            'redaxoModal': {
                open: function($modal, $form) {
                    if (this.selection.getText() !== '') {
                        $form.setData({
                            'quoteText': this.selection.getText()
                        });
                    }
                },
                opened: function($modal, $form) {
                    $form.getField('quoteText').focus();
                },
                insert: function($modal, $form) {
                    let data = $form.getData();
                    console.log(data);
                    this._insert(data);
                }
            }
        },

        modals: {
            'redaxoModal': '<form action="">'
                + '<div class="form-item">'
                    + '<label>'+redactorTranslations.quote_label_text+'</label>'
                    + '<textarea name="quoteText" style="height: 200px;"></textarea>'
                + '</div>'
                + '<div class="form-item">'
                    + '<label>'+redactorTranslations.quote_label_author+'</label>'
                    + '<input name="quoteAuthor" type="text" />'
                + '</div>'
                + '<div class="form-item">'
                    + '<label>'+redactorTranslations.quote_label_cite+'</label>'
                    + '<input name="quoteCite" type="text" />'
                + '</div>'
            + '</form>'
        },

        _insert: function(data) {
            // close the modal
            this.app.api('module.modal.close');

            // check the data
            if (data.quoteText.trim() === '') {
                return;
            }

            let cite = '';
            if (data.quoteCite.trim() !== '') {
                 cite = '<cite>'+data.quoteCite+'</cite>';
            }

            let author = '';
            if (data.quoteAuthor.trim() !== '') {
                author = data.quoteAuthor;
                if (cite !== '') {
                    author += ', '+cite;
                    cite = '';
                }
                author = '<footer>'+author+'</footer>';
            }

            // insert data with Insertion Service
            this.insertion.insertHtml('<blockquote><div>'+this.cleaner.paragraphize(data.quoteText)+'</div>'+author+cite+'</blockquote>');
        }
    });
})(Redactor);

(function($R)
{
    $R.add('plugin', 'counter', {
        translations: {
    		en: {
    			"words": "words",
    			"chars": "chars"
    		}
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.utils = app.utils;
            this.editor = app.editor;
            this.statusbar = app.statusbar;
        },
        // public
        start: function()
        {
            var $editor = this.editor.getElement();
            $editor.on('keyup.redactor-plugin-counter paste.redactor-plugin-counter', this.count.bind(this));
            this.count();
        },
        stop: function()
        {
            var $editor = this.editor.getElement();
            $editor.off('.redactor-plugin-counter');

            this.statusbar.remove('words');
            this.statusbar.remove('chars');
        },
		count: function()
		{
			var words = 0, characters = 0, spaces = 0;
			var $editor = this.editor.getElement();
			var html = $editor.html();

			html = this._clean(html)
			if (html !== '')
			{
				var arrWords = html.split(/\s+/);
				var arrSpaces = html.match(/\s/g);

				words = (arrWords) ? arrWords.length : 0;
				spaces = (arrSpaces) ? arrSpaces.length : 0;

				characters = html.length;
			}

            var data = { words: words, characters: characters, spaces: spaces };

            // callback
			this.app.broadcast('counter', data);

            // statusbar
            this.statusbar.add('words', redactorTranslations.vendor_words + ': ' + data.words);
            this.statusbar.add('chars', redactorTranslations.vendor_chars + ': ' + data.characters);
		},

        // private
        _clean: function(html)
        {
			html = html.replace(/<\/(.*?)>/gi, ' ');
			html = html.replace(/<(.*?)>/gi, '');
			html = html.replace(/\t/gi, '');
			html = html.replace(/\n/gi, ' ');
			html = html.replace(/\r/gi, ' ');
			html = html.replace(/&nbsp;/g, '1');
			html = html.trim();
			html = this.utils.removeInvisibleChars(html);

			return html;
        }
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'fontcolor', {
        translations: {
            en: {
                "fontcolor": "Text Color",
                "text": "Text",
                "highlight": "Highlight"
            }
        },
        init: function(app)
        {
            this.app = app;
            this.opts = app.opts;
            this.lang = app.lang;
            this.inline = app.inline;
            this.toolbar = app.toolbar;
            this.selection = app.selection;

            // local
    		this.colors = (this.opts.fontcolors) ? this.opts.fontcolors : [
    			'#ffffff', '#000000', '#eeece1', '#1f497d', '#4f81bd', '#c0504d', '#9bbb59', '#8064a2', '#4bacc6', '#f79646', '#ffff00',
    			'#f2f2f2', '#7f7f7f', '#ddd9c3', '#c6d9f0', '#dbe5f1', '#f2dcdb', '#ebf1dd', '#e5e0ec', '#dbeef3', '#fdeada', '#fff2ca',
    			'#d8d8d8', '#595959', '#c4bd97', '#8db3e2', '#b8cce4', '#e5b9b7', '#d7e3bc', '#ccc1d9', '#b7dde8', '#fbd5b5', '#ffe694',
    			'#bfbfbf', '#3f3f3f', '#938953', '#548dd4', '#95b3d7', '#d99694', '#c3d69b', '#b2a2c7', '#b7dde8', '#fac08f', '#f2c314',
    			'#a5a5a5', '#262626', '#494429', '#17365d', '#366092', '#953734', '#76923c', '#5f497a', '#92cddc', '#e36c09', '#c09100',
    			'#7f7f7f', '#0c0c0c', '#1d1b10', '#0f243e', '#244061', '#632423', '#4f6128', '#3f3151', '#31859b',  '#974806', '#7f6000'
    		];
        },
        // messages
        onfontcolor: {
            set: function(rule, value)
            {
                this._set(rule, value);
            },
            remove: function(rule)
            {
                this._remove(rule);
            }
        },

        // public
        start: function()
        {
            var btnObj = {
                title: redactorTranslations.vendor_fontcolor
            };

            var $dropdown = this._buildDropdown();

            this.$button = this.toolbar.addButton('fontcolor', btnObj);
			this.$button.setIcon('<i class="re-icon-fontcolor"></i>');
			this.$button.setDropdown($dropdown);
        },

        // private
        _buildDropdown: function()
        {
            var $dropdown = $R.dom('<div class="redactor-dropdown-cells">');

            this.$selector = this._buildSelector();

            this.$selectorText = this._buildSelectorItem('text', redactorTranslations.vendor_text);
            this.$selectorText.addClass('active');

            this.$selectorBack = this._buildSelectorItem('back', redactorTranslations.vendor_highlight);

            this.$selector.append(this.$selectorText);
            this.$selector.append(this.$selectorBack);

            this.$pickerText = this._buildPicker('textcolor');
            this.$pickerBack = this._buildPicker('backcolor');

            $dropdown.append(this.$selector);
            $dropdown.append(this.$pickerText);
            $dropdown.append(this.$pickerBack);

            this._buildSelectorEvents();

            $dropdown.width(242);

            return $dropdown;
        },
        _buildSelector: function()
        {
            var $selector = $R.dom('<div>');
            $selector.addClass('redactor-dropdown-selector');

			return $selector;
        },
        _buildSelectorItem: function(name, title)
        {
            var $item = $R.dom('<span>');
            $item.attr('rel', name).html(title);
            $item.addClass('redactor-dropdown-not-close');

            return $item;
        },
        _buildSelectorEvents: function()
        {
			this.$selectorText.on('mousedown', function(e)
			{
				e.preventDefault();

                this.$selector.find('span').removeClass('active');
				this.$pickerBack.hide();
				this.$pickerText.show();
				this.$selectorText.addClass('active');

			}.bind(this));

			this.$selectorBack.on('mousedown', function(e)
			{
				e.preventDefault();

                this.$selector.find('span').removeClass('active');
				this.$pickerText.hide();
				this.$pickerBack.show();
				this.$selectorBack.addClass('active');

			}.bind(this));
        },
        _buildPicker: function(name)
		{
			var $box = $R.dom('<div class="re-dropdown-box-' + name + '">');
			var rule = (name == 'backcolor') ? 'background-color' : 'color';
			var len = this.colors.length;
			var self = this;
			var func = function(e)
			{
				e.preventDefault();

				var $el = $R.dom(e.target);
				self._set($el.data('rule'), $el.attr('rel'));
			};

			for (var z = 0; z < len; z++)
			{
				var color = this.colors[z];

				var $swatch = $R.dom('<span>');
				$swatch.attr({ 'rel': color, 'data-rule': rule });
				$swatch.css({ 'background-color': color, 'font-size': 0, 'border': '2px solid #fff', 'width': '22px', 'height': '22px' });
				$swatch.on('mousedown', func);

				$box.append($swatch);
			}

			var $el = $R.dom('<a>');
			$el.attr({ 'href': '#' });
			$el.css({ 'display': 'block', 'clear': 'both', 'padding': '8px 5px', 'font-size': '12px', 'line-height': 1 });
			$el.html(redactorTranslations.vendor_none);

			$el.on('click', function(e)
			{
				e.preventDefault();
				self._remove(rule);
			});

			$box.append($el);

			if (name == 'backcolor') $box.hide();

            return $box;
		},
		_set: function(rule, value)
		{
    		var style = {};
    		style[rule] = value;

    		var args = {
        	    tag: 'span',
        	    style: style,
        	    type: 'toggle'
    		};

			this.inline.format(args);
		},
		_remove: function(rule)
		{
			this.inline.remove({ style: rule });
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'fontfamily', {
        translations: {
            en: {
                "fontfamily": "Font",
                "remove-font-family":  "Remove Font Family"
            }
        },
        init: function(app)
        {
            this.app = app;
            this.opts = app.opts;
            this.lang = app.lang;
            this.inline = app.inline;
            this.toolbar = app.toolbar;

            // local
    		this.fonts = (this.opts.fontfamily) ? this.opts.fontfamily : ['Arial', 'Helvetica', 'Georgia', 'Times New Roman', 'Monospace'];
        },
        // public
        start: function()
        {
            var dropdown = {};
			for (var i = 0; i < this.fonts.length; i++)
			{
    			var font = this.fonts[i];
				dropdown[i] = {
    				title: font.replace(/'/g, ''),
    				api: 'plugin.fontfamily.set',
    				args: font
                };
			}

			dropdown.remove = {
    			title: redactorTranslations.vendor_remove_font_family,
    			api: 'plugin.fontfamily.remove'
            };

            var $button = this.toolbar.addButton('fontfamily', { title: redactorTranslations.vendor_fontfamily });
            $button.setIcon('<i class="re-icon-fontfamily"></i>');
			$button.setDropdown(dropdown);
        },
        set: function(value)
		{
    		var args = {
        	    tag: 'span',
        	    style: { 'font-family': value },
        	    type: 'toggle'
    		};

			this.inline.format(args);
		},
		remove: function()
		{
			this.inline.remove({ style: 'font-family' });
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'fontsize', {
        translations: {
            en: {
                "size": "Size",
                "remove-size":  "Remove Font Size"
            }
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.inline = app.inline;
            this.toolbar = app.toolbar;

            // local
    		this.sizes = [10, 11, 12, 14, 16, 18, 20, 24, 28, 30];
        },
        // public
        start: function()
        {
            var dropdown = {};
			for (var i = 0; i < this.sizes.length; i++)
			{
    			var size = this.sizes[i];
				dropdown[i] = {
    				title: size + 'px',
    				api: 'plugin.fontsize.set',
    				args: size
                };
			}

			dropdown.remove = {
    			title: redactorTranslations.vendor_remove_size,
    			api: 'plugin.fontsize.remove'
            };

            var $button = this.toolbar.addButton('fontsize', { title: redactorTranslations.vendor_size });
            $button.setIcon('<i class="re-icon-fontsize"></i>');
			$button.setDropdown(dropdown);
        },
        set: function(size)
		{
    		var args = {
        	    tag: 'span',
        	    style: { 'font-size': size + 'px' },
        	    type: 'toggle'
    		};

			this.inline.format(args);
		},
		remove: function()
		{
			this.inline.remove({ style: 'font-size' });
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'fullscreen', {
        translations: {
            en: {
    			"fullscreen": "Fullscreen"
    		}
        },
        init: function(app)
        {
            this.app = app;
            this.opts = app.opts;
            this.lang = app.lang;
            this.$win = app.$win;
            this.$doc = app.$doc;
            this.$body = app.$body;
            this.editor = app.editor;
            this.toolbar = app.toolbar;
            this.container = app.container;
            this.selection = app.selection;

            // local
            this.isOpen = false;
            this.docScroll = 0;
        },
        // public
        start: function()
        {
            var data = {
                title: redactorTranslations.vendor_fullscreen,
                api: 'plugin.fullscreen.toggle'
            };

            var button = this.toolbar.addButton('fullscreen', data);
            button.setIcon('<i class="re-icon-expand"></i>');

            this.$target = (this.toolbar.isTarget()) ? this.toolbar.getTargetElement() : this.$body;

			if (this.opts.fullscreen) this.toggle();

        },
        toggle: function()
		{
			return (this.isOpen) ? this.close() : this.open();
		},
		open: function()
		{
    		this.docScroll = this.$doc.scrollTop();

            this._createPlacemarker();
            this.selection.save();

            var $container = this.container.getElement();
            var $editor = this.editor.getElement();
            var $html = (this.toolbar.isTarget()) ? $R.dom('body, html') : this.$target;

            if (this.opts.toolbarExternal) this._buildInternalToolbar();

            this.$target.prepend($container);
			this.$target.addClass('redactor-body-fullscreen');

            $container.addClass('redactor-box-fullscreen');
            if (this.isTarget) $container.addClass('redactor-box-fullscreen-target');

            $html.css('overflow', 'hidden');

            if (this.opts.maxHeight) $editor.css('max-height', '');
            if (this.opts.minHeight) $editor.css('min-height', '');

            this._resize();
            this.$win.on('resize.redactor-plugin-fullscreen', this._resize.bind(this));
			this.$doc.scrollTop(0);

            var button = this.toolbar.getButton('fullscreen');
            button.setIcon('<i class="re-icon-retract"></i>');

            this.selection.restore();
			this.isOpen = true;
			this.opts.zindex = 1051;
			// fix bootstrap modal focus
            if (window.jQuery) window.jQuery(document).off('focusin.modal');
		},
		close: function()
		{
    		this.isOpen = false;
			this.opts.zindex = false;
            this.selection.save();

            var $container = this.container.getElement();
            var $editor = this.editor.getElement();
            var $html = $R.dom('body, html');

            if (this.opts.toolbarExternal) this._buildExternalToolbar();

            this.$target.removeClass('redactor-body-fullscreen');
    		this.$win.off('resize.redactor-plugin-fullscreen');
            $html.css('overflow', '');

			$container.removeClass('redactor-box-fullscreen redactor-box-fullscreen-target');
			$editor.css('height', 'auto');

			if (this.opts.minHeight) $editor.css('minHeight', this.opts.minHeight);
			if (this.opts.maxHeight) $editor.css('maxHeight', this.opts.maxHeight);

            var button = this.toolbar.getButton('fullscreen');
            button.setIcon('<i class="re-icon-expand"></i>');

    		this._removePlacemarker($container);
            this.selection.restore();
            this.$doc.scrollTop(this.docScroll);
		},

		// private
		_resize: function()
		{
    		var $toolbar = this.toolbar.getElement();
            var $editor = this.editor.getElement();
    		var height = this.$win.height() - $toolbar.height();

    		$editor.height(height);
		},
		_buildInternalToolbar: function()
		{
			var $wrapper = this.toolbar.getWrapper();
			var $toolbar = this.toolbar.getElement();

			$wrapper.addClass('redactor-toolbar-wrapper');
			$wrapper.append($toolbar);

			$toolbar.removeClass('redactor-toolbar-external');
			$container.prepend($wrapper);
		},
		_buildExternalToolbar: function()
		{
			var $wrapper = this.toolbar.getWrapper();
			var $toolbar = this.toolbar.getElement();

            this.$external = $R.dom(this.opts.toolbarExternal);

            $toolbar.addClass('redactor-toolbar-external');
            this.$external.append($toolbar);

            $wrapper.remove();
		},
		_createPlacemarker: function()
		{
    		var $container = this.container.getElement();

    		this.$placemarker = $R.dom('<span />');
    		$container.after(this.$placemarker);
		},
		_removePlacemarker: function($container)
		{
    		this.$placemarker.before($container);
            this.$placemarker.remove();
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'limiter', {
        init: function(app)
        {
            this.app = app;
            this.utils = app.utils;
            this.opts = app.opts;
            this.editor = app.editor;
            this.keycodes = app.keycodes;
        },
        // events
        onpasting: function(html)
        {
            if (!this.opts.limiter) return;

            html = this.utils.removeInvisibleChars(html);

            var text = this._getText();
            var len = html.length + text.length;

			this.opts.input = !(len >= this.opts.limiter);
        },
        // public
        start: function()
        {
			if (!this.opts.limiter) return;
            this._count();

            var $editor = this.editor.getElement();
            $editor.on('keydown.redactor-plugin-limiter', this._limit.bind(this));
		},
		stop: function()
		{
            var $editor = this.editor.getElement();
            $editor.off('.redactor-plugin-limiter');

            this.opts.input = true;
		},

		// private
		_limit: function(e)
		{
    		var key = e.which;
			var ctrl = e.ctrlKey || e.metaKey;
			var arrows = [37, 38, 39, 40];

			if (key === this.keycodes.BACKSPACE
			   	|| key === this.keycodes.DELETE
			    || key === this.keycodes.ESC
			    || key === this.keycodes.SHIFT
			    || (ctrl && key === 65)
			    || (ctrl && key === 88)
			    || (ctrl && key === 82)
			    || (ctrl && key === 116)
			    || (arrows.indexOf(key) !== -1)
			)
			{
				return;
			}

            this._count(e);
		},
		_count: function(e)
		{
            var text = this._getText();
			var count = text.length;
			if (count >= this.opts.limiter)
			{
                if (e) e.preventDefault();
                this.opts.input = false;
				return false;
			}
			else
			{
    			this.opts.input = true;
			}
		},
		_getText: function()
		{
            var $editor = this.editor.getElement();
			var text = $editor.text();

			return this.utils.removeInvisibleChars(text);
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'properties', {
        modals: {
            'properties':
                '<form action=""> \
                    <div class="form-item"> \
                        <label>Id</label> \
                        <input type="text" name="id"> \
                    </div> \
                    <div class="form-item"> \
                        <label>Class</label> \
                        <input type="text" name="classname"> \
                    </div> \
                </form>'
        },
        translations: {
    		en: {
    			"properties": "Properties"
    		}
        },
        init: function(app)
        {
            this.app = app;
            this.opts = app.opts;
            this.lang = app.lang;
            this.$body = app.$body;
            this.toolbar = app.toolbar;
            this.inspector = app.inspector;
            this.selection = app.selection;

            // local
    		this.labelStyle = {
        		'font-family': 'monospace',
    			'position': 'absolute',
    			'padding': '2px 5px',
    			'line-height': 1,
    			'border-radius': '3px',
    			'font-size': '11px',
    			'color': 'rgba(255, 255, 255, .9)'
    		};
        },
        // messages
        onmodal: {
            properties: {
                open: function($modal, $form)
                {
                    if (this.$block)
                    {
                        var blockData = this._getData(this.$block);
                        $form.setData(blockData);
                    }
                },
                opened: function($modal, $form)
                {
                    $form.getField('id').focus();
                },
                save: function($modal, $form)
                {
                    var data = $form.getData();
                    this._save(data);
                }
            }
        },
        onbutton: {
            properties: {
                observe: function(button)
                {
                    this._observeButton(button);
                }
            }
        },
        onclick: function() {
            //this._observeButton();
        },

        // public
        start: function()
        {
            var data = {
                title: redactorTranslations.vendor_properties,
                api: 'plugin.properties.open',
                observe: 'properties'
            };

            var $button = this.toolbar.addButton('properties', data);
            $button.setIcon('<i class="re-icon-properties"></i>');

            this._createLabel();
        },
        stop: function()
        {
            this._removeLabel();
        },
        open: function()
		{
           var block = this.selection.getBlock();
           if (!block) return;

           this.$block = $R.dom(block);

           var options = {
                title: redactorTranslations.vendor_properties,
                width: '500px',
                name: 'properties',
                handle: 'save',
                commands: {
                    save: { title: redactorTranslations.vendor_save },
                    cancel: { title: redactorTranslations.vendor_cancel }
                }
            };

            this.app.api('module.modal.build', options);
		},

		// private
		_save: function(data)
		{
    		this.app.api('module.modal.close');

    		if (data.id === '') this.$block.removeAttr('id');
    		else this.$block.attr('id', data.id);

    		if (data.classname === '') this.$block.removeAttr('class');
    		else this.$block.attr('class', data.classname);
		},
		_getData: function(block)
		{
    	    var $block = $R.dom(block);
    	    var data = {
        	    id: $block.attr('id'),
        	    classname: $block.attr('class')
    	    };

    	    return data;
		},
		_showData: function(block, data)
		{
    		var str = '';
    		if (data.id) str += '#' + data.id + ' ';
    		if (data.classname) str += '.' + data.classname;


            if (str !== '')
            {
                var $block = $R.dom(block);
                var pos = $block.offset();

                this.$label.css({
                    top: (pos.top - 12) + 'px',
                    left: pos.left + 'px',
                    'z-index': (this.opts.zindex) ? (this.opts.zindex + 3) : 'auto'
                });
                this.$label.html(str);
                this.$label.show();
            }
            else
            {
                this.$label.hide();
            }
		},
		_createLabel: function()
		{
            this.$label = $R.dom('<span />');
            this.$label.hide();
			this.$label.css(this.labelStyle).css('background', 'rgba(229, 57, 143, .7)');

			this.$body.append(this.$label);
		},
		_removeLabel: function()
		{
            if (this.$label) this.$label.remove();
		},
		_observeButton: function(button)
		{
    		var block = this.selection.getBlock();
    		var data = this.inspector.parse(block);

    		if (block && !data.isComponent())
    		{
        		var blockData = this._getData(block);

                this._showData(block, blockData);
        	    button.enable();
    		}
    		else
    		{
        	    button.disable();
        	    if (this.$label) this.$label.hide();
    		}
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'specialchars', {
        translations: {
    		en: {
    			"specialchars": "Special Characters"
    		}
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.toolbar = app.toolbar;
            this.insertion = app.insertion;

            // local
            this.chars = [

                '&lsquo;', '&rsquo;', '&ldquo;', '&rdquo;', '&ndash;', '&mdash;', '&divide;', '&hellip;', '&trade;', '&bull;',
            	'&rarr;', '&asymp;', '$', '&euro;', '&cent;', '&pound;', '&yen;', '&iexcl;',
            	'&curren;', '&brvbar;', '&sect;', '&uml;', '&copy;', '&ordf;', '&laquo;', '&raquo;', '&not;', '&reg;', '&macr;',
            	'&deg;', '&sup1;', '&sup2;', '&sup3;', '&acute;', '&micro;', '&para;', '&middot;', '&cedil;',  '&ordm;',
            	'&frac14;', '&frac12;', '&frac34;', '&iquest;', '&Agrave;', '&Aacute;', '&Acirc;', '&Atilde;', '&Auml;', '&Aring;',
            	'&AElig;', '&Ccedil;', '&Egrave;', '&Eacute;', '&Ecirc;', '&Euml;', '&Igrave;', '&Iacute;', '&Icirc;', '&Iuml;',
            	'&ETH;', '&Ntilde;', '&Ograve;', '&Oacute;', '&Ocirc;', '&Otilde;', '&Ouml;', '&times;', '&Oslash;', '&Ugrave;',
            	'&Uacute;', '&Ucirc;', '&Uuml;', '&Yacute;', '&THORN;', '&szlig;', '&agrave;', '&aacute;', '&acirc;', '&atilde;',
            	'&auml;', '&aring;', '&aelig;', '&ccedil;', '&egrave;', '&eacute;', '&ecirc;', '&euml;', '&igrave;', '&iacute;',
            	'&icirc;', '&iuml;', '&eth;', '&ntilde;', '&ograve;', '&oacute;', '&ocirc;', '&otilde;', '&ouml;',
            	'&oslash;', '&ugrave;', '&uacute;', '&ucirc;', '&uuml;', '&yacute;', '&thorn;', '&yuml;', '&OElig;', '&oelig;',
            	'&#372;', '&#374', '&#373', '&#375;'
            ];
        },
        // public
        start: function()
        {
            var btnObj = {
                title: redactorTranslations.vendor_specialchars
            };

            var $dropdown = this._buildDropdown();

            this.$button = this.toolbar.addButton('specialchars', btnObj);
			this.$button.setIcon('<i class="re-icon-specialcharacters"></i>');
			this.$button.setDropdown($dropdown);
        },

        // private
        _set: function(character)
        {
            this.insertion.insertChar(character);
        },
        _buildDropdown: function()
		{
    		var self = this;
            var $dropdown = $R.dom('<div class="redactor-dropdown-cells">');
            var func = function(e)
			{
				e.preventDefault();

				var $el = $R.dom(e.target);
				self._set($el.data('char'));
			};

            for (var i = 0; i < this.chars.length; i++)
            {
                var $el = $R.dom('<a>');
                $el.attr({ 'href': '#', 'data-char': this.chars[i] });
                $el.css({ 'line-height': '32px', 'width': '32px', 'height': '32px' });
                $el.html(this.chars[i]);
                $el.on('click', func);

                $dropdown.append($el);
            }

            return $dropdown;
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'table', {
        translations: {
            en: {
        		"table": "Table",
        		"insert-table": "Insert table",
        		"insert-row-above": "Insert row above",
        		"insert-row-below": "Insert row below",
        		"insert-column-left": "Insert column left",
        		"insert-column-right": "Insert column right",
        		"add-head": "Add head",
        		"delete-head": "Delete head",
        		"delete-column": "Delete column",
        		"delete-row": "Delete row",
        		"delete-table": "Delete table"
        	}
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.opts = app.opts;
            this.caret = app.caret;
            this.editor = app.editor;
            this.toolbar = app.toolbar;
            this.component = app.component;
            this.inspector = app.inspector;
            this.insertion = app.insertion;
            this.selection = app.selection;
        },
        // messages
        ondropdown: {
            table: {
                observe: function(dropdown)
                {
                    this._observeDropdown(dropdown);
                }
            }
        },
        onbottomclick: function()
        {
            this.insertion.insertToEnd(this.editor.getLastNode(), 'table');
        },

        // public
        start: function()
        {
			var dropdown = {
    			observe: 'table',
    			'insert-table': {
    				title: redactorTranslations.vendor_insert_table,
    				api: 'plugin.table.insert'
    			},
    			'insert-row-above': {
                    title: redactorTranslations.vendor_insert_row_above,
    				classname: 'redactor-table-item-observable',
                    api: 'plugin.table.addRowAbove'
    			},
    			'insert-row-below': {
        			title: redactorTranslations.vendor_insert_row_below,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.addRowBelow'
    			},
    			'insert-column-left': {
        			title: redactorTranslations.vendor_insert_column_left,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.addColumnLeft'
    			},
    			'insert-column-right': {
        			title: redactorTranslations.vendor_insert_column_right,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.addColumnRight'
    			},
    			'add-head': {
        			title: redactorTranslations.vendor_add_head,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.addHead'
    			},
    			'delete-head': {
        			title: redactorTranslations.vendor_delete_head,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.deleteHead'
    			},
    			'delete-column': {
        			title: redactorTranslations.vendor_delete_column,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.deleteColumn'
    			},
    			'delete-row': {
        			title: redactorTranslations.vendor_delete_row,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.deleteRow'
    			},
    			'delete-table': {
        			title: redactorTranslations.vendor_delete_table,
        			classname: 'redactor-table-item-observable',
                    api: 'plugin.table.deleteTable'
    			}
			};
            var obj = {
                title: redactorTranslations.vendor_table
            };

			var $button = this.toolbar.addButtonBefore('link', 'table', obj);
			$button.setIcon('<i class="re-icon-table"></i>');
			$button.setDropdown(dropdown);
        },
		insert: function()
		{
            var rows = 2;
			var columns = 3;
			var $component = this.component.create('table');

			for (var i = 0; i < rows; i++)
			{
			    $component.addRow(columns);
			}

			$component =  this.insertion.insertHtml($component);
			this.caret.setStart($component);
		},
        addRowAbove: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();
                var $row = $component.addRowTo(current, 'before');

                this.caret.setStart($row);
            }
        },
        addRowBelow: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();
                var $row = $component.addRowTo(current, 'after');

                this.caret.setStart($row);
            }
        },
        addColumnLeft: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();

                this.selection.save();
                $component.addColumnTo(current, 'left');
                this.selection.restore();
            }
        },
        addColumnRight: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();

                this.selection.save();
                $component.addColumnTo(current, 'right');
                this.selection.restore();
            }
        },
        addHead: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                this.selection.save();
                $component.addHead();
                this.selection.restore();
            }
        },
        deleteHead: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();
                var $head = $R.dom(current).closest('thead');
                if ($head.length !== 0)
                {
                    $component.removeHead();
                    this.caret.setStart($component);
                }
                else
                {
                    this.selection.save();
                    $component.removeHead();
                    this.selection.restore();
                }
            }
        },
        deleteColumn: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();

                var $currentCell = $R.dom(current).closest('td, th');
                var nextCell = $currentCell.nextElement().get();
                var prevCell = $currentCell.prevElement().get();

                $component.removeColumn(current);

                if (nextCell) this.caret.setStart(nextCell);
                else if (prevCell) this.caret.setEnd(prevCell);
                else this.deleteTable();
            }
        },
        deleteRow: function()
        {
            var $component = this._getComponent();
            if ($component)
            {
                var current = this.selection.getCurrent();

                var $currentRow = $R.dom(current).closest('tr');
                var nextRow = $currentRow.nextElement().get();
                var prevRow = $currentRow.prevElement().get();
                var $head = $R.dom(current).closest('thead');

                $component.removeRow(current);

                if (nextRow) this.caret.setStart(nextRow);
                else if (prevRow) this.caret.setEnd(prevRow);
                else if ($head.length !== 0) {
                    $component.removeHead();
                    this.caret.setStart($component);
                }
                else this.deleteTable();
            }
        },
        deleteTable: function()
        {
            var table = this._getTable();
            if (table)
            {
                this.component.remove(table);
            }
        },

        // private
        _getTable: function()
        {
            var current = this.selection.getCurrent();
            var data = this.inspector.parse(current);
            if (data.isTable())
            {
                return data.getTable();
            }
        },
        _getComponent: function()
        {
            var current = this.selection.getCurrent();
            var data = this.inspector.parse(current);
            if (data.isTable())
            {
                var table = data.getTable();

                return this.component.create('table', table);
            }
        },
        _observeDropdown: function(dropdown)
        {
            var table = this._getTable();
            var items = dropdown.getItemsByClass('redactor-table-item-observable');
            var tableItem = dropdown.getItem('insert-table');
            if (table)
            {
                this._observeItems(items, 'enable');
                tableItem.disable();
            }
            else
            {
                this._observeItems(items, 'disable');
                tableItem.enable();
            }
        },
        _observeItems: function(items, type)
        {
            for (var i = 0; i < items.length; i++)
            {
                items[i][type]();
            }
        }
    });
})(Redactor);
(function($R)
{
    $R.add('class', 'table.component', {
        mixins: ['dom', 'component'],
        init: function(app, el)
        {
            this.app = app;

            // init
            return (el && el.cmnt !== undefined) ? el : this._init(el);
        },

        // public
        addHead: function()
        {
			this.removeHead();

			var columns = this.$element.find('tr').first().children('td, th').length;
			var $head = $R.dom('<thead>');
            var $row = this._buildRow(columns, '<th>');

            $head.append($row);
            this.$element.prepend($head);
        },
        addRow: function(columns)
        {
            var $row = this._buildRow(columns);
            this.$element.append($row);

            return $row;
        },
        addRowTo: function(current, type)
        {
            return this._addRowTo(current, type);
        },
        addColumnTo: function(current, type)
        {
            var $current = $R.dom(current);
            var $currentRow = $current.closest('tr');
            var $currentCell = $current.closest('td, th');

            var index = 0;
            $currentRow.find('td, th').each(function(node, i)
			{
				if (node === $currentCell.get()) index = i;
			});

			this.$element.find('tr').each(function(node)
			{
    			var $node = $R.dom(node);
				var origCell = $node.find('td, th').get(index);
				var $origCell = $R.dom(origCell);

				var $td = $origCell.clone();
				$td.html('<div data-redactor-tag="tbr"></div>');

				if (type === 'right') $origCell.after($td);
				else                  $origCell.before($td);
			});
        },
        removeHead: function()
        {
			var $head = this.$element.find('thead');
			if ($head.length !== 0) $head.remove();
        },
        removeRow: function(current)
        {
            var $current = $R.dom(current);
            var $currentRow = $current.closest('tr');

            $currentRow.remove();
        },
        removeColumn: function(current)
        {
            var $current = $R.dom(current);
            var $currentRow = $current.closest('tr');
            var $currentCell = $current.closest('td, th');

            var index = 0;
            $currentRow.find('td, th').each(function(node, i)
			{
				if (node === $currentCell.get()) index = i;
			});

			this.$element.find('tr').each(function(node)
			{
    			var $node = $R.dom(node);
				var origCell = $node.find('td, th').get(index);
				var $origCell = $R.dom(origCell);

				$origCell.remove();
			});
        },

        // private
        _init: function(el)
        {
            var wrapper, element;
            if (typeof el !== 'undefined')
            {
                var $node = $R.dom(el);
                var node = $node.get();
                var $figure = $node.closest('figure');
                if ($figure.length !== 0)
                {
                    wrapper = $figure;
                    element = $figure.find('table').get();
                }
                else if (node.tagName === 'TABLE')
                {
                    element = node;
                }
            }

            this._buildWrapper(wrapper);
            this._buildElement(element);
            this._initWrapper();
        },
        _addRowTo: function(current, position)
        {
            var $current = $R.dom(current);
            var $currentRow = $current.closest('tr');
            if ($currentRow.length !== 0)
            {
                var columns = $currentRow.children('td, th').length;
                var $newRow = this._buildRow(columns);

                $currentRow[position]($newRow);

                return $newRow;
            }
        },
        _buildRow: function(columns, tag)
        {
            tag = tag || '<td>';

            var $row = $R.dom('<tr>');
            for (var i = 0; i < columns; i++)
            {
                var $cell = $R.dom(tag);
                $cell.attr('contenteditable', true);
                $cell.html('<div data-redactor-tag="tbr"></div>');

                $row.append($cell);
            }

            return $row;
        },
        _buildElement: function(node)
        {
            if (node)
            {
                this.$element = $R.dom(node);
            }
            else
            {
                this.$element = $R.dom('<table>');
                this.append(this.$element);
            }
        },
        _buildWrapper: function(node)
        {
            node = node || '<figure>';

            this.parse(node);
        },
        _initWrapper: function()
        {
            this.addClass('redactor-component');
            this.attr({
                'data-redactor-type': 'table',
                'tabindex': '-1',
                'contenteditable': false
            });

            if (this.app.detector.isIe())
            {
                this.removeAttr('contenteditable');
            }
        }
    });

})(Redactor);
(function($R)
{
    $R.add('plugin', 'textdirection', {
        translations: {
    		en: {
    			"change-text-direction": "RTL-LTR",
    			"left-to-right": "Left to Right",
    			"right-to-left": "Right to Left"
    		}
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.block = app.block;
            this.editor = app.editor;
            this.toolbar = app.toolbar;
            this.selection = app.selection;
        },
        // public
        start: function()
        {
            var dropdown = {};

    		dropdown.ltr = { title: redactorTranslations.vendor_left_to_right, api: 'plugin.textdirection.set', args: 'ltr' };
    		dropdown.rtl = { title: redactorTranslations.vendor_right_to_left, api: 'plugin.textdirection.set', args: 'rtl' };

            var $button = this.toolbar.addButton('textdirection', { title: redactorTranslations.vendor_change_text_direction });
            $button.setIcon('<i class="re-icon-textdirection"></i>');
			$button.setDropdown(dropdown);
        },
        set: function(type)
		{
    		var block = this.selection.getBlock();
    		if (block && block.tagName === 'LI') {
        		var list = $R.dom(block).parents('ul, ol', this.editor.getElement()).last();
        		this.block.add({ attr: { dir: type }}, false, list);
    		}
            else {
                this.block.add({ attr: { dir: type }});
            }
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'video', {
        translations: {
            en: {
                "video": "Video",
                "video-html-code": "Video Embed Code or Youtube/Vimeo Link"
            }
        },
        modals: {
            'video':
                '<form action=""> \
                    <div class="form-item"> \
                        <label for="modal-video-input">## video-html-code ##</label> \
                        <textarea id="modal-video-input" name="video" style="height: 160px;"></textarea> \
                    </div> \
                </form>'
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.component = app.component;
            this.insertion = app.insertion;
            this.inspector = app.inspector;
            this.selection = app.selection;
        },
        // messages
        onmodal: {
            video: {
                opened: function($modal, $form)
                {
                    $video = $form.getField('video');
                    $video.focus();
                },
                insert: function($modal, $form)
                {
                    var data = $form.getData();
                    this._insert(data);
                }
            }
        },
        oncontextbar: function(e, contextbar)
        {
            var data = this.inspector.parse(e.target)
            if (data.isComponentType('video'))
            {
                var node = data.getComponent();
                var buttons = {
                    "remove": {
                        title: redactorTranslations.vendor_delete,
                        api: 'plugin.video.remove',
                        args: node
                    }
                };

                contextbar.set(e, node, buttons, 'bottom');
            }

        },

        // public
        start: function()
        {
            var obj = {
                title: redactorTranslations.vendor_video,
                api: 'plugin.video.open'
            };

            var $button = this.toolbar.addButtonAfter('image', 'video', obj);
            $button.setIcon('<i class="re-icon-video"></i>');
        },
        open: function()
		{
            var options = {
                title: redactorTranslations.vendor_video,
                width: '600px',
                name: 'video',
                handle: 'insert',
                commands: {
                    insert: { title: redactorTranslations.vendor_insert },
                    cancel: { title: redactorTranslations.vendor_cancel }
                }
            };

            this.app.api('module.modal.build', options);
		},
        remove: function(node)
        {
            this.component.remove(node);
        },

        // private
		_insert: function(data)
		{
    		this.app.api('module.modal.close');

    		if (data.video.trim() === '')
    		{
        	    return;
    		}

            // parsing
            data.video = this._matchData(data.video);

            // inserting
            if (this._isVideoIframe(data.video))
            {
                var $video = this.component.create('video', data.video);
                this.insertion.insertHtml($video);
            }
		},

		_isVideoIframe: function(data)
		{
            return (data.match(/<iframe|<video/gi) !== null);
		},
		_matchData: function(data)
		{
			var iframeStart = '<iframe style="width: 500px; height: 281px;" src="';
			var iframeEnd = '" frameborder="0" allowfullscreen></iframe>';

            if (this._isVideoIframe(data))
			{
				var allowed = ['iframe', 'video', 'source'];
				var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi;

                data = data.replace(/<p(.*?[^>]?)>([\w\W]*?)<\/p>/gi, '');
			    data = data.replace(tags, function ($0, $1)
			    {
			        return (allowed.indexOf($1.toLowerCase()) === -1) ? '' : $0;
			    });
			}
            else
            {
    			if (data.match(this.opts.regex.youtube))
    			{
                    var yturl = '//www.youtube.com';
                    if (data.search('youtube-nocookie.com') !== -1) {
                        yturl = '//www.youtube-nocookie.com';
                    }
    				data = data.replace(this.opts.regex.youtube, iframeStart + yturl + '/embed/$1' + iframeEnd);
    			}
    			else if (data.match(this.opts.regex.vimeo))
    			{

    				data = data.replace(this.opts.regex.vimeo, iframeStart + '//player.vimeo.com/video/$2' + iframeEnd);
    			}
			}


			return data;
		}
    });
})(Redactor);
(function($R)
{
    $R.add('plugin', 'widget', {
        translations: {
            en: {
                "widget": "Widget",
                "widget-html-code": "Widget HTML Code"
            }
        },
        modals: {
            'widget':
                '<form action=""> \
                    <div class="form-item"> \
                        <label for="modal-widget-input">## widget-html-code ##</label> \
                        <textarea id="modal-widget-input" name="widget" style="height: 200px;"></textarea> \
                    </div> \
                </form>'
        },
        init: function(app)
        {
            this.app = app;
            this.lang = app.lang;
            this.opts = app.opts;
            this.toolbar = app.toolbar;
            this.component = app.component;
            this.insertion = app.insertion;
            this.inspector = app.inspector;
            this.selection = app.selection;
        },
        // messages
        onmodal: {
            widget: {
                opened: function($modal, $form)
                {
                    $form.getField('widget').focus();

                    if (this.$currentItem)
                    {
                        var code = decodeURI(this.$currentItem.attr('data-widget-code'));
                        $form.getField('widget').val(code);
                    }
                },
                insert: function($modal, $form)
                {
                    var data = $form.getData();
                    this._insert(data);
                }
            }
        },
        oncontextbar: function(e, contextbar)
        {
            var data = this.inspector.parse(e.target)
            if (!data.isFigcaption() && data.isComponentType('widget'))
            {
                var node = data.getComponent();
                var buttons = {
                    "edit": {
                        title: redactorTranslations.vendor_edit,
                        api: 'plugin.widget.open',
                        args: node
                    },
                    "remove": {
                        title: redactorTranslations.vendor_delete,
                        api: 'plugin.widget.remove',
                        args: node
                    }
                };

                contextbar.set(e, node, buttons, 'bottom');
            }
        },
        onbutton: {
            widget: {
                observe: function(button)
                {
                    this._observeButton(button);
                }
            }
        },

        // public
        start: function()
        {
            var obj = {
                title: redactorTranslations.vendor_widget,
                api: 'plugin.widget.open',
                observe: 'widget'
            };

            var $button = this.toolbar.addButton('widget', obj);
            $button.setIcon('<i class="re-icon-widget"></i>');
        },
        open: function()
		{
            this.$currentItem = this._getCurrent();

            var options = {
                title: redactorTranslations.vendor_widget,
                width: '600px',
                name: 'widget',
                handle: 'insert',
                commands: {
                    insert: { title: (this.$currentItem) ? redactorTranslations.vendor_save : redactorTranslations.vendor_insert },
                    cancel: { title: redactorTranslations.vendor_cancel }
                }
            };

            this.app.api('module.modal.build', options);
		},
        remove: function(node)
        {
            this.component.remove(node);
        },

        // private
		_getCurrent: function()
		{
    		var current = this.selection.getCurrent();
    		var data = this.inspector.parse(current);
    		if (data.isComponentType('widget'))
    		{
        		return this.component.build(data.getComponent());
    		}
		},
		_insert: function(data)
		{
    		this.app.api('module.modal.close');

    		if (data.widget.trim() === '')
    		{
        	    return;
    		}

    		var html = (this._isHtmlString(data.widget)) ? data.widget : document.createTextNode(data.widget);
            var $component = this.component.create('widget', html);
            $component.attr('data-widget-code', encodeURI(data.widget.trim()));
    		this.insertion.insertHtml($component);

		},
        _isHtmlString: function(html)
        {
            return !(typeof html === 'string' && !/^\s*<(\w+|!)[^>]*>/.test(html));
        },
		_observeButton: function(button)
		{
    		var current = this.selection.getCurrent();
    		var data = this.inspector.parse(current);

    		if (data.isComponentType('table')) button.disable();
    		else button.enable();
		}
    });
})(Redactor);
/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'redo', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.redo_title,
                icon: true,
                api: 'module.buffer.redo'
            };

            this.toolbar.addButton('redo', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', '|', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {};

            let button = this.toolbar.addButton('separator', obj);
            button.hideTooltip();
            button.disable();
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'style', {
        init: function (app) {
            this.opts = app.opts;
            this.toolbar = app.toolbar;

            this.listsopts = ['mark', 'code', 'var', 'kbd', 'sup', 'sub'];

            if ('redaxo' in this.opts && 'style' in this.opts.redaxo) {
                this.listsopts = app.opts.redaxo.style;
            }
        },

        // public
        start: function () {

            let dropdown = {};

            for (let key in this.listsopts) {
                let element = this.listsopts[key];
                let title = 'style_'+element+'_title';
                dropdown[element] = {
                    title: redactorTranslations[title],
                    api: 'module.inline.format',
                    args: element
                }
            }

            let obj = {
                title: redactorTranslations.style_title,
                icon: true,
            };

            let button = this.toolbar.addButton('style', obj);
            button.setIcon('<i class="re-icon-inline"></i>');
            button.setDropdown(dropdown);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'subscript', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.subscript_title,
                icon: true,
                tooltip: redactorTranslations.subscript_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'sub'
                }
            };

            this.toolbar.addButton('subscript', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'superscript', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.superscript_title,
                icon: true,
                tooltip: redactorTranslations.superscript_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'sup'
                }
            };

            this.toolbar.addButton('superscript', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'ul', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.ul_title,
                icon: true,
                api: 'module.list.toggle',
                observe: 'list',
                args: 'ul'
            };

            this.toolbar.addButton('ul', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'underline', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.underline_title,
                icon: true,
                tooltip: redactorTranslations.underline_tooltip,
                api: 'module.inline.format',
                args: {
                    tag: 'u'
                }
            };

            this.toolbar.addButton('underline', obj);
        }
    });
})(Redactor);

/**
 * This file is part of the redactor package.
 *
 * @author (c) Friends Of REDAXO
 * @author <friendsof@redaxo.org>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
(function ($R) {
    $R.add('plugin', 'undo', {
        init: function (app) {
            this.toolbar = app.toolbar;
        },

        // public
        start: function () {
            let obj = {
                title: redactorTranslations.undo_title,
                icon: true,
                api: 'module.buffer.undo'
            };

            this.toolbar.addButton('undo', obj);
        }
    });
})(Redactor);
