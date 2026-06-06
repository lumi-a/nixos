{ ... }:
{
  programs.librewolf = {
    enable = true;
    profiles.prevprev.id = 1;
    # Profiles seem to require a name with this sort of syntax.
    profiles.profile0 = {
      id = 0;
      bookmarks = {
        force = true;
        settings = [
          {
            name = "Proton Calendar";
            keyword = "c";
            url = "https://calendar.proton.me";
          }
          {
            name = "Proton Mail";
            keyword = "m";
            url = "https://mail.proton.me";
          }
          {
            name = "Whatsapp Web";
            keyword = "wa";
            url = "https://web.whatsapp.com";
          }
        ];
      };
      settings = {
      browser.display.use_document_fonts = 0;
      browser.display.use_document_fonts.icon_font_allowlist = "Material Icons, Material Icons Extended, Material Icons Outlined, Material Icons Round, Material Icons Sharp, Material Icons Two Tone, Google Material Icons, Material Symbols Outlined, Material Symbols Round, Material Symbols Rounded, Material Symbols Sharp, bootstrap-icons, octicons, Material Symbols Rounded Unfilled Partial, Google Symbols, FDS-Iconfont, sah-ds-icons, HUN, KaTeX_Math, KaTeX_Main, KaTeX_Size1, KaTeX_Size2, KaTeX_Size3, KaTeX_Size4, KaTeX_Size5, KaTeX_Typewriter, KaTeX_SansSerif, KaTeX_Script, KaTeX_Fraktur, MathJax_AMS, MathJax_Caligraphic, MathJax_Fraktur, MathJax_Main, MathJax_Math, MathJax_Math, MathJax_SansSerif, MathJax_Script, MathJax_Size1, MathJax_Size2, MathJax_Size3, MathJax_Size4, MathJax_Typewriter, MathJax_WinChrome, MathJax_WinIE6-Regular, db-default, db-filled";
      browser.download.dir = "/home/lumi";
      browser.download.folderList = 0; # Use the download dir specified above
      browser.download.panel.shown = true;
      browser.download.useDownloadDir = true;
      browser.newtabpage.enabled = false;
      browser.tabs.closeWindowWithLastTab = false;
      browser.toolbars.bookmarks.visibility = "never";
      browser.translations.automaticallyPopup = false;
      browser.translations.enable = false;
      browser.uiCustomization.horizontalTabstrip = "[\"tabbrowser-tabs\",\"new-tab-button\"]";
      browser.uiCustomization.navBarWhenVerticalTabs = "[\"sidebar-button\",\"customizableui-special-spring1\",\"back-button\",\"forward-button\",\"_7a7a4a92-a2a0-41d1-9fd7-1e92480d612d_-browser-action\",\"vertical-spacer\",\"_446900e4-71c2-419f-a6a7-df9c091e268b_-browser-action\",\"urlbar-container\",\"unified-extensions-button\",\"downloads-button\",\"customizableui-special-spring2\",\"_20fc2e06-e3e4-4b2b-812b-ab431220cada_-browser-action\"]";
      browser.urlbar.autoFill.adaptiveHistory.enabled = true;
      browser.urlbar.shortcuts.actions = false;
      browser.urlbar.shortcuts.bookmarks = false;
      browser.urlbar.shortcuts.history = false;
      browser.urlbar.shortcuts.tabs = false;
      browser.urlbar.suggest.bookmark = false;
      browser.urlbar.suggest.engines = false;
      browser.urlbar.suggest.openpage = false;
      browser.urlbar.suggest.searches = true;
      devtools.chrome.enabled = true;                          
      devtools.debugger.remote-enabled = true;
      devtools.everOpened = true;                              
      doh-rollout.provider-list = "[{\"UIName\":\"Mozilla Cl   #
      oudflare\",\"uri\":\"https://mozilla.cloudflare-dns.co   #
      m/dns-query\"},{\"UIName\":\"Quad9\",\"uri\":\"https:/   #
      /dns.quad9.net/dns-query\"},{\"UIName\":\"Quad9+ECS\",   #
      \"uri\":\"https://dns11.quad9.net/dns-query\"}]";        #
      dom.forms.autocomplete.formautofill = true;              # dom.forms.autocomplete.formautofill = true;
      dom.push.userAgentID = "9635380a88c4462eb9dc6c6dd35103   # dom.push.userAgentID = "ee71e1231f6f43e0982572e1ee90d7
      d4";                                                     # 54";
      dom.security.https_only_mode = false;                    #
      dom.security.https_only_mode_ever_enabled = true;        # dom.security.https_only_mode_ever_enabled = true;
      dom.security.https_only_mode_ever_enabled_pbm = true;    #
      extensions.activeThemeID = "default-theme@mozilla.org"   # extensions.activeThemeID = "default-theme@mozilla.org"
      ;                                                        # ;
      extensions.blocklist.pingCountVersion = -1;              # extensions.blocklist.pingCountVersion = 0;
      extensions.colorway-builtin-themes-cleanup = 1;          # extensions.colorway-builtin-themes-cleanup = 1;
      extensions.databaseSchema = 37;                          # extensions.databaseSchema = 37;
      extensions.dnr.lastStoreUpdateTag.51e1ba7b-13cd-4cdf-8   # extensions.getAddons.cache.lastUpdate = 1780734718;
      3f9-86a354901976 = "{71bf4dbe-63d2-4d52-a1e5-961263b7f   #
      0c7}";                                                   #
      extensions.getAddons.cache.lastUpdate = 1780660635;      #

      ult.nix --- 4/6 --- Text (1158 Nix parse errors, exceede #FT_PARSE_ERROR_LIMIT)
      extensions.systemAddonSet = "{\"schema\":1,\"addons\":   #
      {}}";                                                    #
      extensions.ui.dictionary.hidden = true;                  #
      extensions.ui.extension.hidden = false;                  #
      extensions.ui.lastCategory = "addons://list/extension"   #
      ;                                                        #
      extensions.ui.locale.hidden = true;                      #
      extensions.ui.sitepermission.hidden = true;              #
      extensions.update.autoUpdateDefault = false;             #
      extensions.webcompat.perform_injections = true;          #
      extensions.webcompat.perform_ua_overrides = true;        #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      @contain-facebook = true;                                #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      addon@darkreader.org = true;                             #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      display-anchors@robwu.nl = true;                         #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      dont-track-me-google@robwu.nl = true;                    #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      firemonkey@eros.man = true;                              #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      google-search-keyboard-navigation@kunnen.tech = true;    #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      https-everywhere@eff.org = true;                         #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      languagetool-webextension@languagetool.org = true;       #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      leechblockng@proginosko.com = true;                      #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      screenshots@mozilla.org = true;                          #
      extensions.webextensions.ExtensionStorageIDB.migrated.   # extensions.webextensions.ExtensionStorageIDB.migrated.
      uBlock0@raymondhill.net = true;                          # uBlock0@raymondhill.net = true;
      extensions.webextensions.ExtensionStorageIDB.migrated.   # extensions.webextensions.uuids = "{\"data-leak-blocker
      {446900e4-71c2-419f-a6a7-df9c091e268b} = true;           # @mozilla.com\":\"e384cda5-1a24-40b4-9d7e-68716b73ac9e\
                                                               # ",\"formautofill@mozilla.org\":\"df99f8c8-a104-444a-95
                                                               # b1-290de854037d\",\"ipp-activator@mozilla.com\":\"6cd8
                                                               # 058f-de13-42b5-9692-e2e02aafa36c\",\"pictureinpicture@
                                                               # mozilla.org\":\"c03648e2-fd7d-489d-883e-eb7c7998e513\"
                                                               # ,\"addons-search-detection@mozilla.com\":\"001d1606-4a
                                                               # ae-498d-bada-d19157533f6b\",\"webcompat@mozilla.org\":
                                                               # \"9a310967-e580-48bf-b3e8-4eafebbc122d\",\"newtab@mozi
                                                               # lla.org\":\"5ac5f8e1-9f85-4e90-848d-6f074b69d8b7\",\"d
                                                               # efault-theme@mozilla.org\":\"8ecc0f55-c2de-49a7-b9ff-9
                                                               # 07ed89c445e\",\"uBlock0@raymondhill.net\":\"d7930796-a
                                                               # 0d4-462b-80f5-efc89ae16fcf\"}";
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      {484f3bc9-b13b-4498-8ea6-124c199c5ca8} = true;           #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      {74145f27-f039-47ce-a470-a662b129930a} = true;           #
      extensions.webextensions.ExtensionStorageIDB.migrated.   #
      {7a7a4a92-a2a0-41d1-9fd7-1e92480d612d} = true;           #
      extensions.webextensions.uuids = "{\"formautofill@mozi   #
      lla.org\":\"5faeaf58-c401-4ddf-bc51-f9d1c0958be1\",\"p   #
      ictureinpicture@mozilla.org\":\"f76e9ffa-bd3f-4b4f-979   #
      f-7f90c8318c62\",\"screenshots@mozilla.org\":\"ece7d89   #
      5-204f-4b4e-9795-54bce2c4b4e7\",\"webcompat@mozilla.or   #
      g\":\"9a310967-e580-48bf-b3e8-4eafebbc122d\",\"default   #
      -theme@mozilla.org\":\"05210c76-acd0-439f-b070-d835077   #
      5b6a7\",\"addons-search-detection@mozilla.com\":\"2007   #
      fcbd-b2d2-4b00-a925-0bce99da8b40\",\"https-everywhere@   #
      eff.org\":\"9ca78454-c973-4172-aad8-d981620a7a41\",\"{   #
      446900e4-71c2-419f-a6a7-df9c091e268b}\":\"fd9fb010-387   #
      5-4fa4-ae9b-52db6f89c566\",\"firemonkey@eros.man\":\"b   #
      fa309dc-2250-42ea-a765-91125ecec79a\",\"leechblockng@p   #
      roginosko.com\":\"279f2126-cab7-4c01-b1e6-1ccc3ac72fb6   #
      \",\"display-anchors@robwu.nl\":\"a0f98247-f13c-42c1-b   #
      d26-a1769e2daf9a\",\"@contain-facebook\":\"2a62f47e-ad   #
      37-483d-8fdb-886c1e4da325\",\"{7a7a4a92-a2a0-41d1-9fd7   #
      -1e92480d612d}\":\"547037b1-874b-4bba-bc28-df44e101a08   #
      1\",\"uBlock0@raymondhill.net\":\"f2a677ef-772c-498a-8   #
      7db-dc8fb8662604\",\"{74145f27-f039-47ce-a470-a662b129   #
      930a}\":\"6c1cd175-375a-43f2-9d9f-1037d85ec70a\",\"{90   #
      63c2e9-e07c-4c2c-9646-cfe7ca8d0498}\":\"51e1ba7b-13cd-   #
      4cdf-83f9-86a354901976\",\"google-search-keyboard-navi   #
      gation@kunnen.tech\":\"f2a97519-5b74-4f23-98ab-34404da   #
      f844c\",\"languagetool-webextension@languagetool.org\"   #
      :\"3901dde8-694d-4693-901a-85daa5be1067\",\"{484f3bc9-   #
      b13b-4498-8ea6-124c199c5ca8}\":\"e13bc9d2-7b26-4a46-b7   #
      43-1f183400ca5d\",\"addon@darkreader.org\":\"e171b957-   #
      3da1-4b4c-a612-950364db5dd9\",\"dont-track-me-google@r   #
      obwu.nl\":\"50ff6e88-25af-461a-8113-79f729b1c2cf\",\"n   #
      ewtab@mozilla.org\":\"5956b9ac-a9e8-4072-877d-8d56c47d   #
      0774\",\"data-leak-blocker@mozilla.com\":\"cf5c1797-d1   #
      2d-48b2-9c0e-b19c7035f49b\",\"ipp-activator@mozilla.co   #
      m\":\"d53c9e21-c9b2-4837-8b15-b624f738e435\",\"{0dc4d6   #
      21-e5ff-451e-b032-0f663cd58bd9}\":\"3edbc8c6-32b1-441a   #
      -929f-2f3f29b45c7a\"}";                                  #
      font.default.x-western = "sans-serif";                   #
      font.minimum-size.x-western = 18;                        #
      font.name.monospace.x-western = "Fira Code Arctic";      #
      font.name.sans-serif.x-western = "Fira Sans";            #
      font.name.serif.x-western = "Fira Sans";                 #
      font.size.monospace.x-western = 18;                      #
      font.size.variable.x-western = 18;                       #
      gecko.handlerService.defaultHandlersVersion = 1;         # gecko.handlerService.defaultHandlersVersion = 1;
      general.config.sandbox_enabled = true;                   # general.config.sandbox_enabled = true;
      gfx-shader-check.build-version = "20251121100054";       #
      gfx-shader-check.device-id = "0x1b81";                   #
      gfx-shader-check.driver-version = "32.0.15.6094";        #
      gfx-shader-check.ptr-size = 8;                           #
      identity.fxaccounts.account.device.name = "deinh’s Lib   #
      reWolf on LAPTOP-WIN";                                   #
      identity.fxaccounts.account.telemetry.sanitized_uid =    #
      "4cf57d5328da6b528b8764374d973657";                      #
      identity.fxaccounts.commands.missed.last_fetch = 17806   #
      60498;                                                   #
      identity.fxaccounts.enabled = true;                      #
      identity.fxaccounts.lastSignedInUserHash = "l9QEjvOz2k   #
      WpOFc10UYBDihmch0gYLGOoA+y0gGh/RA=";                     #
      identity.fxaccounts.toolbar.accessed = true;             #
      idle.lastDailyNotification = 1780557146;                 #
      intl.accept_languages = "en-US, en";                     #
      intl.locale.requested = "en-GB,en-US,en-CA,de";          #
      javascript.use_us_english_locale = true;                 #
      media.autoplay.default = 1;                              #
      media.eme.enabled = true;                                #
      media.gmp-manager.buildID = "20260525130955";            #
      media.gmp-manager.lastCheck = 1780666053;                #
      media.gmp-manager.lastEmptyCheck = 1780666053;           #
      media.gmp-widevinecdm.abi = "x86_64-gcc3";               #
      media.gmp-widevinecdm.hashValue = "421214210a09a9f9ed8   #
      ce482ef857f1c2b29ce1739240d1ec99a61caa3d80db3393752275   #
      722bdf5f503489f12a753215fe8a0c82de3aca23780d4ffe5792eb   #
      1";                                                      #
      media.gmp-widevinecdm.lastDownload = 1774522261;         #
      media.gmp-widevinecdm.lastInstallFailReason = "[object   #
       Object]";                                               #
      media.gmp-widevinecdm.lastInstallFailed = 1731579405;    #
      media.gmp-widevinecdm.lastInstallStart = 1774522259;     #
      media.gmp-widevinecdm.lastUpdate = 1774522261;           #
      media.gmp-widevinecdm.version = "4.10.2934.0";           #
      media.gmp.storage.version.observed = 1;                  # media.gmp.storage.version.observed = 1;
      media.hardware-video-decoding.failed = false;            #
      media.videocontrols.picture-in-picture.video-toggle.en   #
      abled = false;                                           #

      ult.nix --- 5/6 --- Text (1158 Nix parse errors, exceede #FT_PARSE_ERROR_LIMIT)
      network.trr.custom_uri = "https://dns10.quad9.net/dns-   #
      query";                                                  #
      network.trr.mode = 0;                                    #
      nimbus.profileId = "9cf71cdd-77b3-4097-bbaa-e4726cfe29   # nimbus.profileId = "20877d32-d798-466d-96e2-d271c3b1e4
      d1";                                                     # 5d";
      pdfjs.defaultZoomValue = "page-width";                   #
      pdfjs.enableAltTextForEnglish = true;                    #
      pdfjs.enabledCache.state = true;                         # pdfjs.enabledCache.state = true;
      pdfjs.migrationVersion = 2;                              # pdfjs.migrationVersion = 2;
      permissions.delegation.enabled = false;                  #
      permissions.manager.defaultsUrl = "";                    # permissions.manager.defaultsUrl = "";
      places.database.lastMaintenance = 1780344287;            #
      pref.browser.language.disable_button.up = false;         #
      pref.downloads.disable_button.edit_actions = false;      #
      print.more-settings.open = true;                         #
      print.printer_Mozilla_Save_to_PDF.print_ignore_unwrite   #
      able_margins = true;                                     #
      print.printer_Mozilla_Save_to_PDF.print_margin_bottom    #
      = "0";                                                   #
      print.printer_Mozilla_Save_to_PDF.print_margin_left =    #
      "0";                                                     #
      print.printer_Mozilla_Save_to_PDF.print_margin_right =   #
       "0";                                                    #
      print.printer_Mozilla_Save_to_PDF.print_margin_top = "   #
      0";                                                      #
      print.printer_Mozilla_Save_to_PDF.print_orientation =    #
      0;                                                       #
      print.printer_Mozilla_Save_to_PDF.print_paper_height =   #
       "8.26771653543307";                                     #
      print.printer_Mozilla_Save_to_PDF.print_paper_id = "is   #
      o_a5";                                                   #
      print.printer_Mozilla_Save_to_PDF.print_paper_size_uni   #
      t = 0;                                                   #
      print.printer_Mozilla_Save_to_PDF.print_paper_width =    #
      "5.82677165354331";                                      #
      print.printer_Mozilla_Save_to_PDF.print_unwriteable_ma   #
      rgin_bottom_twips = 0;                                   #
      print.printer_Mozilla_Save_to_PDF.print_unwriteable_ma   #
      rgin_left_twips = 0;                                     #
      print.printer_Mozilla_Save_to_PDF.print_unwriteable_ma   #
      rgin_right_twips = 0;                                    #
      print.printer_Mozilla_Save_to_PDF.print_unwriteable_ma   #
      rgin_top_twips = 0;                                      #
      print_printer = "Mozilla Save to PDF";                   #
      privacy.annotate_channels.strict_list.enabled = true;    # privacy.annotate_channels.strict_list.enabled = true;
      privacy.bounceTrackingProtection.hasMigratedUserActiva   # privacy.bounceTrackingProtection.hasMigratedUserActiva
      tionData = true;                                         # tionData = true;
      privacy.bounceTrackingProtection.mode = 1;               # privacy.bounceTrackingProtection.mode = 1;
      privacy.clearOnShutdown.cache = false;                   #
      privacy.clearOnShutdown.cookies = false;                 #
      privacy.clearOnShutdown_v2.cache = false;                #
      privacy.clearOnShutdown_v2.cookiesAndStorage = false;    #
      privacy.donottrackheader.enabled = true;                 #
      privacy.fingerprintingProtection = true;                 # privacy.fingerprintingProtection = true;
      privacy.fingerprintingProtection.overrides = "-FontVis   #
      ibilityBaseSystem,-FontVisibilityLangPack";              #
      privacy.globalprivacycontrol.was_ever_enabled = true;    # privacy.globalprivacycontrol.was_ever_enabled = true;
      privacy.history.custom = true;                           # privacy.history.custom = true;
      privacy.popups.showBrowserMessage = false;               #
      privacy.purge_trackers.date_in_cookie_database = "0";    #
      privacy.purge_trackers.last_purge = "1780557146542";     #
      privacy.query_stripping.enabled = true;                  # privacy.query_stripping.enabled = true;
      privacy.query_stripping.enabled.pbmode = true;           # privacy.query_stripping.enabled.pbmode = true;
      privacy.resistFingerprinting = false;                    # privacy.sanitize.pending = "[{\"id\":\"shutdown\",\"it
                                                               # emsToClear\":[\"cache\",\"cookiesAndStorage\"],\"optio
                                                               # ns\":{}},{\"id\":\"newtab-container\",\"itemsToClear\"
                                                               # :[],\"options\":{}}]";
      privacy.sanitize.cpd.hasMigratedToNewPrefs2 = true;      #
      privacy.sanitize.pending = "[{\"id\":\"newtab-containe   #
      r\",\"itemsToClear\":[],\"options\":{}}]";               #
      privacy.sanitize.sanitizeOnShutdown = false;             # privacy.trackingprotection.allow_list.baseline.enabled
                                                               #  = false;
      privacy.trackingprotection.allow_list.convenience.enab   # privacy.trackingprotection.allow_list.convenience.enab
      led = false;                                             # led = false;
      privacy.trackingprotection.allow_list.hasMigratedCateg   # privacy.trackingprotection.allow_list.hasMigratedCateg
      oryPrefs = true;                                         # oryPrefs = true;
      privacy.trackingprotection.allow_list.hasUserInteracte   #
      dWithETPSettings = true;                                 #

      ult.nix --- 6/6 --- Text (1158 Nix parse errors, exceede #FT_PARSE_ERROR_LIMIT)
      privacy.userContext.extension = "@contain-facebook";     #
      sanity-test.device-id = "0x1b81";                        #
      sanity-test.driver-version = "32.0.15.6094";             #
      sanity-test.running = false;                             #
      sanity-test.version = "20251121100054";                  #
      screenshots.browser.component.last-saved-method = "cop   #
      y";                                                      #
      security.tls.enable_0rtt_data = false;                   # security.tls.enable_0rtt_data = false;
      services.settings.blocklists.addons-bloomfilters.last_   # services.settings.blocklists.addons-bloomfilters.last_
      check = 1780663435;                                      # check = 1780734748;
      services.settings.blocklists.gfx.last_check = 17805841   # services.settings.blocklists.gfx.last_check = 17807347
      94;                                                      # 48;
      services.settings.clock_skew_seconds = -2594;            # services.settings.clock_skew_seconds = -31;
      services.settings.last_etag = "1780662989194";           # services.settings.last_etag = "1780727805212";
      services.settings.last_update_seconds = 1780668199;      # services.settings.last_update_seconds = 1780734748;
      services.settings.main.addons-data-leak-blocker-domain   # services.settings.main.addons-data-leak-blocker-domain
      s.last_check = 1780584194;                               # s.last_check = 1780734748;
      services.settings.main.addons-manager-settings.last_ch   # services.settings.main.addons-manager-settings.last_ch
      eck = 1780584194;                                        # eck = 1780734748;
      services.settings.main.anti-tracking-url-decoration.la   # services.settings.main.anti-tracking-url-decoration.la
      st_check = 1780584194;                                   # st_check = 1780734748;
      services.settings.main.bounce-tracking-protection-exce   # services.settings.main.cookie-banner-rules-list.last_c
      ptions.last_check = 1780584194;                          # heck = 1780734748;
      services.settings.main.cookie-banner-rules-list.last_c   #
      heck = 1780584194;                                       #
      services.settings.main.fingerprinting-protection-overr   # services.settings.main.fingerprinting-protection-overr
      ides.last_check = 1780584194;                            # ides.last_check = 1780734748;
      services.settings.main.hijack-blocklists.last_check =    # services.settings.main.hijack-blocklists.last_check =
      1780584194;                                              # 1780734748;
      services.settings.main.partitioning-exempt-urls.last_c   # services.settings.main.partitioning-exempt-urls.last_c
      heck = 1780584194;                                       # heck = 1780734748;
      services.settings.main.password-recipes.last_check = 1   # services.settings.main.password-recipes.last_check = 1
      780584194;                                               # 780734748;
      services.settings.main.query-stripping.last_check = 17   # services.settings.main.query-stripping.last_check = 17
      80584194;                                                # 80734748;
      services.settings.main.third-party-cookie-blocking-exe   # services.settings.main.third-party-cookie-blocking-exe
      mpt-urls.last_check = 1780584194;                        # mpt-urls.last_check = 1780734748;
      services.settings.main.tracking-protection-lists.last_   # services.settings.main.tracking-protection-lists.last_
      check = 1780584194;                                      # check = 1780734748;
      services.settings.main.translations-models.last_check    # services.settings.main.translations-models-v2.last_che
      = 1774370051;                                            # ck = 1780734748;
      services.settings.main.translations-wasm.last_check =    #
      1774370051;                                              #
      services.settings.main.url-classifier-exceptions.last_   # services.settings.main.url-classifier-exceptions.last_
      check = 1780584194;                                      # check = 1780734748;
      services.settings.main.url-classifier-skip-urls.last_c   # services.settings.main.url-classifier-skip-urls.last_c
      heck = 1780584194;                                       # heck = 1780734748;
      services.settings.main.url-parser-default-unknown-sche   # services.settings.main.url-parser-default-unknown-sche
      mes-interventions.last_check = 1780584194;               # mes-interventions.last_check = 1780734748;
      services.settings.main.webcompat-interventions.last_ch   # services.settings.main.webcompat-interventions.last_ch
      eck = 1780584194;                                        # eck = 1780734748;
      services.settings.security-state.cert-revocations.last   # services.settings.security-state.cert-revocations.last
      _check = 1780642562;                                     # _check = 1780734748;
      services.settings.security-state.intermediates.last_ch   # services.settings.security-state.intermediates.last_ch
      eck = 1780584194;                                        # eck = 1780734748;
      services.settings.security-state.onecrl.last_check = 1   # services.settings.security-state.onecrl.last_check = 1
      780584194;                                               # 780734748;
      services.sync.addons.lastSync = "1780566406.48";         #
      services.sync.addons.syncID = "PERtm9UISYp0";            #
      services.sync.addresses.lastSync = "0";                  #
      services.sync.addresses.syncID = "O0iFOuIs4b_C";         #
      services.sync.client.GUID = "is4mPOKtQqhv";              #
      services.sync.client.syncID = "E-CtwIp4Y9w5";            #
      services.sync.clients.devices.desktop = 1;               #
      services.sync.clients.devices.mobile = 1;                #
      services.sync.clients.lastRecordUpload = 1780665891;     #
      services.sync.clients.lastSync = "1780665891.21";        #
      services.sync.clients.syncID = "hgnpDmvW1R8Q";           #
      services.sync.creditcards.lastSync = "0";                #
      services.sync.creditcards.syncID = "XZUqHnT_dzsC";       #
      services.sync.declinedEngines = "";                      #
      services.sync.engine.addresses = true;                   #
      services.sync.engine.addresses.available = true;         # services.sync.engine.addresses.available = true;
      services.sync.engine.creditcards = true;                 # sidebar.backupState = "{\"command\":\"viewBookmarksSid
                                                               # ebar\",\"panelOpen\":true,\"bookmarksExpandedFolders\"
                                                               # :[],\"launcherExpanded\":false,\"launcherVisible\":fal
                                                               # se}";
      services.sync.engine.prefs.modified = false;             #
      services.sync.forms.lastSync = "1727638418.52";          #
      services.sync.forms.syncID = "zSnz8rxB0QMu";             #
      services.sync.globalScore = 0;                           #
      services.sync.lastPing = 1780660497;                     #
      services.sync.lastSync = "Fri Jun 05 2026 15:24:51 GMT   #
      +0200 (Central European Summer Time)";                   #
      services.sync.lastTabFetch = 1780665547;                 #
      services.sync.lastversion = "1.125.0";                   #
      services.sync.nextSync = 1780666491;                     #
      services.sync.prefs.lastSync = "1780149882.54";          #
      services.sync.prefs.sync-seen.accessibility.browsewith   #
      caret = true;                                            #
      services.sync.prefs.sync-seen.browser.contentblocking.   #
      category = true;                                         #
      services.sync.prefs.sync-seen.browser.download.useDown   #
      loadDir = true;                                          #
      services.sync.prefs.sync-seen.browser.firefox-view.fea   #
      ture-tour = true;                                        #
      services.sync.prefs.sync-seen.browser.formfill.enable    #
      = true;                                                  #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.feeds.topsites = true;                        #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.section.highlights.includeBookmarks = true;   #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.section.highlights.includeDownloads = true;   #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.section.highlights.includePocket = true;      #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.section.highlights.includeVisited = true;     #
      services.sync.prefs.sync-seen.browser.newtabpage.activ   #
      ity-stream.showSearch = true;                            #
      services.sync.prefs.sync-seen.browser.newtabpage.enabl   #
      ed = true;                                               #
      services.sync.prefs.sync-seen.browser.newtabpage.pinne   #
      d = true;                                                #
      services.sync.prefs.sync-seen.browser.safebrowsing.dow   #
      nloads.remote.block_potentially_unwanted = true;         #
      services.sync.prefs.sync-seen.browser.startup.homepage   #
       = true;                                                 #
      services.sync.prefs.sync-seen.browser.startup.page = t   #
      rue;                                                     #
      services.sync.prefs.sync-seen.browser.urlbar.suggest.b   #
      ookmark = true;                                          #
      services.sync.prefs.sync-seen.browser.urlbar.suggest.e   #
      ngines = true;                                           #
      services.sync.prefs.sync-seen.browser.urlbar.suggest.o   #
      penpage = true;                                          #
      services.sync.prefs.sync-seen.browser.urlbar.suggest.s   #
      earches = true;                                          #
      services.sync.prefs.sync-seen.dom.security.https_only_   #
      mode = true;                                             #
      services.sync.prefs.sync-seen.dom.security.https_only_   #
      mode_ever_enabled = true;                                #
      services.sync.prefs.sync-seen.dom.security.https_only_   #
      mode_ever_enabled_pbm = true;                            #
      services.sync.prefs.sync-seen.extensions.activeThemeID   #
       = true;                                                 #
      services.sync.prefs.sync-seen.general.autoScroll = tru   #
      e;                                                       #
      services.sync.prefs.sync-seen.intl.accept_languages =    #
      true;                                                    #
      services.sync.prefs.sync-seen.intl.regional_prefs.use_   #
      os_locales = true;                                       #
      services.sync.prefs.sync-seen.layout.spellcheckDefault   #
       = true;                                                 #
      services.sync.prefs.sync-seen.media.autoplay.default =   #
       true;                                                   #
      services.sync.prefs.sync-seen.media.eme.enabled = true   #
      ;                                                        #
      services.sync.prefs.sync-seen.media.videocontrols.pict   #
      ure-in-picture.video-toggle.enabled = true;              #
      services.sync.prefs.sync-seen.pref.downloads.disable_b   #
      utton.edit_actions = true;                               #
      services.sync.prefs.sync-seen.privacy.clearOnShutdown.   #
      cache = true;                                            #
      services.sync.prefs.sync-seen.privacy.clearOnShutdown.   #
      cookies = true;                                          #
      services.sync.prefs.sync-seen.privacy.clearOnShutdown.   #
      offlineApps = true;                                      #
      services.sync.prefs.sync-seen.privacy.clearOnShutdown_   #
      v2.cache = true;                                         #
      services.sync.prefs.sync-seen.privacy.clearOnShutdown_   #
      v2.cookiesAndStorage = true;                             #
      services.sync.prefs.sync-seen.privacy.donottrackheader   #
      .enabled = true;                                         #
      services.sync.prefs.sync-seen.privacy.globalprivacycon   #
      trol.enabled = true;                                     #
      services.sync.prefs.sync-seen.privacy.sanitize.sanitiz   #
      eOnShutdown = true;                                      #
      services.sync.prefs.sync-seen.privacy.trackingprotecti   #
      on.enabled = true;                                       #
      services.sync.prefs.sync-seen.signon.autofillForms = t   #
      rue;                                                     #
      services.sync.prefs.sync-seen.signon.generation.enable   #
      d = true;                                                #
      services.sync.prefs.sync-seen.signon.management.page.b   #
      reach-alerts.enabled = true;                             #
      services.sync.prefs.sync-seen.signon.rememberSignons =   #
       true;                                                   #
      services.sync.prefs.sync-seen.ui.osk.enabled = true;     #
      services.sync.prefs.syncID = "n7lxnISx12V3";             #
      services.sync.syncInterval = 600000;                     #
      services.sync.syncThreshold = 300;                       #
      services.sync.username = "lumimail@proton.me";           #
      sidebar.animation.expand-on-hover.delay-duration-ms =    #
      0;                                                       #
      sidebar.animation.expand-on-hover.duration-ms = 50;      #
      sidebar.backupState = "{\"command\":\"\",\"panelOpen\"   #
      :false,\"bookmarksExpandedFolders\":[],\"launcherWidth   #
      \":46,\"expandedLauncherWidth\":274,\"launcherExpanded   #
      \":false,\"launcherVisible\":true,\"pinnedTabsHeight\"   #
      :328,\"collapsedPinnedTabsHeight\":328,\"toolsHeight\"   #
      :44.81666564941406,\"collapsedToolsHeight\":44.8166656   #
      4941406}";                                               #
      sidebar.installed.extensions = "{446900e4-71c2-419f-a6   #
      a7-df9c091e268b},{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d   #
      }";                                                      #
      sidebar.main.tools = "{7a7a4a92-a2a0-41d1-9fd7-1e92480   #
      d612d}";                                                 #
      sidebar.new-sidebar.has-used = true;                     #
      sidebar.old-sidebar.has-used = true;                     # sidebar.old-sidebar.has-used = true;
      sidebar.revamp = true;                                   # sidebar.visibility = "hide-sidebar";
      sidebar.verticalTabs = true;                             #
      sidebar.verticalTabs.dragToPinPromo.dismissed = true;    #
      signon.autofillForms = true;                             #
      signon.generation.enabled = false;                       #
      signon.management.page.breach-alerts.enabled = false;    #
      signon.rustMirror.migrationNeeded = true;                #
      storage.vacuum.last.content-prefs.sqlite = 1778862074;   #
      storage.vacuum.last.index = 2;                           #
      storage.vacuum.last.places.sqlite = 1778594539;          #
      toolkit.legacyUserProfileCustomizations.stylesheets =    #
      true;                                                    #
      toolkit.profiles.storeID = "264b58d8";                   # toolkit.profiles.storeID = "3c06e00e";
      toolkit.startup.last_success = 1780665886;               # toolkit.startup.last_success = 1780734687;
      toolkit.telemetry.cachedClientID = "d76df378-f042-46bb   # toolkit.telemetry.cachedClientID = "8d5d4a80-ea2c-43f0
      -b3d8-4d93318c63db";                                     # -bd9b-330cd42a9f08";
      toolkit.telemetry.cachedProfileGroupID = "d76df378-f04   # toolkit.telemetry.cachedProfileGroupID = "72a68642-d21
      2-46bb-b3d8-4d93318c63db";                               # 6-45f3-9db3-dabdb2c8da22";
      toolkit.telemetry.reportingpolicy.firstRun = false;      # toolkit.telemetry.reportingpolicy.firstRun = false;
      toolkit.winRegisterApplicationRestart = false;           # toolkit.winRegisterApplicationRestart = false;
      ui.osk.debug.keyboardDisplayReason = "IKPOS: Touch scr   #
      een not found.";                                         #t
      ui.osk.enabled = false;                                  #
      webgl.force-enabled = true;                              #
      }
    };
    policies = {
      DefaultDownloadDirectory = "\${home}";
      ExtensionSettings = {
        "*" = {
          "blocked_install_message" = "Not allowed via nix config..";
          "install_sources" = [ "https://example.com/*" ];
          "installation_mode" = "blocked";
        };
        "uBlock0@raymondhill.net" = {
          default_area = "menupanel";
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4814095/ublock_origin-1.71.0.xpi";
          installation_mode = "normal_installed";
          private_browsing = true;
        };
      };
      extensions = {
        exactPermissions = true; # Don't allow extensions that request unvetted permissions
        exhaustivePermissions = true; # All extensions' permissions must be vetted
      };
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
