{
  programs.nixcord = {
    enable = true;
    vesktop.enable = true;
    config = {
      themeLinks = [
        "https://raw.githubusercontent.com/catppuccin/discord/refs/heads/main/themes/mocha.theme.css"
      ];
      frameless = true;
      plugins = {
        betterFolders.enable = true;
        betterNotesBox = {
          enable = true;
          hide = true;
        };
        betterSettings.enable = true;
        betterUploadButton.enable = true;
        biggerStreamPreview.enable = true;
        callTimer.enable = true;
        disableCallIdle.enable = true;
        experiments.enable = true;
        fakeNitro.enable = true;
        fixYoutubeEmbeds.enable = true;
        gameActivityToggle.enable = true;
        onePingPerDM.enable = true;
        readAllNotificationsButton.enable = true;
        silentTyping.enable = true;
        youtubeAdblock.enable = true;
      };
    };
  };
}
