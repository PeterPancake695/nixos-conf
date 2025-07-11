{pkgs, ...}: {
  programs.firefox = {
      enable = true;
      profiles = {
        default = {
          id = 0;
          name = "default";
          isDefault = true;
          settings = {
            "browser.search.defaultenginename" = "Kagi";
            "browser.search.order.1" = "Kagi";

            "signon.rememberSignons" = false;
            "widget.use-xdg-desktop-portal.file-picker" = 1;
            "browser.aboutConfig.showWarning" = false;
            "browser.compactmode.show" = true;
            "browser.cache.disk.enable" = false;

            "widget.disable-workspace-management" = true;
          };
          search = {
            force = true;
            default = "Kagi";

            engines."Kagi".urls = [{
              template = "https://kagi.com/search?";
              params = [{
                name = "q";
                value = "{searchTerms}";
              }];
            }];
         };
        };
      };
  };
}
