{ ... }:
{
  programs.librewolf = {
    enable = true;
    # Profiles seem to require this sorta syntax.
    profiles.a1b2c3d4 = {
      bookmarks.settings = [
        {
          keyword = "c";
          url = "https://calendar.proton.me";
        }
        {
          keyword = "m";
          url = "https://mail.proton.me";
        }
        {
          keyword = "wa";
          url = "https://web.whatsapp.com";
        }
      ];
      userChrome = ''
        * {
            font-family: Fira Sans !important;
        }

        #tracking-protection-icon-container /* some shield icon */
        , #identity-box /* that lock icon */
        , #page-action-buttons /* bookmarks */
        , .tab-content > .tab-close-button /* the close button on the tabs (I have middle click thank you) */
        , #urlbar-searchmode-switcher
        , #sidebar-splitter /* weird design choice to introduce 3 pixels of colours between window and sidebar */ {
            display: none !important;
        }

        /* Make the spacing a little neater so that the url is not entirely flush with the box */
        /* (necessary now that icons are gone) */
        #urlbar > .urlbar-input-container {
            margin-left: 0.5em !important;
        }

        /* Tighten sidebar */
        @media -moz-pref("sidebar.verticalTabs") {
            :root {
                --tab-min-height: calc(var(--tab-label-line-height) * 1em) !important;
                --tab-block-margin: 0px !important;
            }
            #tabbrowser-tabs[orient="vertical"]:not([expanded])
                .tab-background[selected] {
                width: 3em !important;
            }

            .tabbrowser-tab:not([pinned="true"]):last-of-type {
                margin-bottom: 15vh !important;
            }
        }

      '';

      userContent = ''
        /* Devtools font */
        @namespace url(http://www.w3.org/1999/xhtml);
        @-moz-document regexp("chrome://browser/content/devtools/\\*\\*/.*"){
            * {
                font-family: Fira Sans;
            }
            .devtools-monospace, .devtools-monospace * {
                font-family: Fira Code Arctic !important;
            }
        }


        /* New tab dark, without restart */
        /* No idea why it works without restart with this, but I ain't fixin' what ain't broken. */
        @-moz-document url("about:newtab"), url("about:home") {
            background-color: #121212 !important;
        }


        html|button, html|select, html|input {
            font-family: Fira Sans !important;
        }


        /* \PDF */
            /* Annotation links */
            section.linkAnnotation {
                border: 0.1em solid #FF000010 !important;
                background: #FF00000C;
            }

            /* Link links */
            section.linkAnnotation a:not(.internalLink) {
                background: #FF00000C !important;
            }

            /* Gotta be this specific for it to only be applied to pdf */
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerRight button#print,
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerRight button#download,
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerRight div.verticalToolbarSeparator,
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerRight div#editorModeSeparator,
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerLeft div.splitToolbarButton.hiddenSmallView /* Page turn buttons */
                {
                    display: none !important;
                }

                /* Page number input box */
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerLeft input#pageNumber.toolbarField.pageNumber {
                    padding: 0 3px 0 0 !important;
                }

                /* Remove green dot from content listing */
                html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer div#toolbarViewerLeft button#sidebarToggle.toolbarButton.pdfSidebarNotification::after {
                    background-color: #0000 !important;
                }

                /* \TOP_BAR_HOVER */
                    html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer {
                        opacity: 0;
                        transition: opacity 0.125s;
                    }

                    html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer:hover {
                        opacity: 1;
                    }
                /* /TOP_BAR_HOVER */

                /* pixel perfect adjustment */
                    html body div#outerContainer div#mainContainer div#viewerContainer {
                        top: 30px !important;
                    }
                    html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer div#toolbarViewer {
                        height: 29px !important;
                    }
                    html body div#outerContainer div#mainContainer div.toolbar div#toolbarContainer {
                        height: 29px !important;
                        box-shadow: none;
                    }

            /* When dark mode is active */
            @media (prefers-color-scheme: dark) {
                /* When we have some file open (probably pdfs) */
                @-moz-document unobservable-document() {
                    /* Invert the pages (and the pages only, */
                    /* lest it interferes with existing dark mode) */
                    div#viewer.pdfViewer {
                        filter: invert(1) !important;
                    }
                }
            }
        /* /PDF */

        /* Reader Mode */
        .moz-reader-content {
            font-family: Fira Sans !important;
            /* Apparently Reader Mode can't access Firefox font definitions */
        }

        /* Scrollbar Arrows */
        * {
            scrollbar-width: thin;
        }

        /* Language Tool */
        lt-div.lt-toolbar__wrapper {
          opacity: 0.25;
        }
      '';
    };
  };
}
