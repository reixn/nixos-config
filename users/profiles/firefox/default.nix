{ pkgs, lib, ...}: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        settings = {
          "browser.download.useDownloadDir" = false;
          "browser.download.start_downloads_in_tmp_dir" = true;

          # add search in navbar
          "browser.search.widget.inNavBar" = true;
          "browser.uiCustomization.state" = ''
            {"placements":{"widget-overflow-fixed-list":[],"nav-bar":["back-button","forward-button","stop-reload-button","customizableui-special-spring1","urlbar-container","search-container","customizableui-special-spring2","save-to-pocket-button","downloads-button","fxa-toolbar-menu-button"],"toolbar-menubar":["menubar-items"],"TabsToolbar":["tabbrowser-tabs","new-tab-button","alltabs-button"],"PersonalToolbar":["import-button","personal-bookmarks"]},"seen":["save-to-pocket-button","developer-button"],"dirtyAreaCache":["nav-bar","PersonalToolbar","toolbar-menubar","TabsToolbar"],"currentVersion":17,"newElementCount":2}
          '';

          # delete cookies on close
          "network.cookie.lifetimePolicy" = 2;
          # don't remember history
          "browser.privatebrowsing.autostart" = true;

          # don't ask to save passwords
          "signon.rememberSignons" = false;
        };
        search = {
          engines = {
            "NixOS packages" = {
              description = "Search NixOS packages by name or description.";
              urls =  [
                {
                  template = "https://search.nixos.org/packages";
                  params = [{ name = "query"; value = "{searchTerms}"; }];
                }
              ];
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@nixpkg" ];
            };
            "NixOS options" = {
              description = "Search NixOS options by name or description.";
              urls = [
                {
                  template = "https://search.nixos.org/options";
                  params = [{ name = "query"; value = "{searchTerms}"; }];
                }
              ];
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@nixopt" ];
            };
            "Bing Global" = {
              description = "Bing Global";
              urls = [
                {
                  template = "https://global.bing.com";
                  params = [
                    { name = "q"; value = "{searchTerms}"; }
                    { name = "mkt"; value = "en-US"; }
                  ];
                }
              ];
              icon = "https://global.bing.com/sa/simg/favicon-trans-bg-blue-mg.ico";
              definedAliases = [ "@gbing" ];
            };
          };
          force = true;
          default = "Bing";
        };
        isDefault = true;
      };
    };
  };
}
