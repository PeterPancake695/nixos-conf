{inputs, ...}: {
  imports = [
    inputs.zen-browser.homeModules.twilight
  ];

  programs.zen-browser = {
    enable = true;
    policies = {
      AutofillAddressEnabled = true;
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };

      ExtensionSettings = {
        # uBlock Origin
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
        # Bitwarden
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
          installation_mode = "force_installed";
        };
        # Sponsor block
        "sponsorBlocker@ajay.app" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";
          installation_mode = "force_installed";
        };
        # Surfing keys
        "{a8332c60-5b6d-41ee-bfc8-e9bb331d34ad}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/surfingkeys_ff/latest.xpi";
          installation_mode = "force_installed";
        };
        # Ecosia
        "{d04b0b40-3dab-4f0b-97a6-04ec3eddbfb0}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ecosia-the-green-search/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}
