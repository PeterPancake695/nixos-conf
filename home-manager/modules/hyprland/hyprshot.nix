{
  home.sessionVariables = {
    HYPRSHOT_DIR = "\${HOME}/Pictures/Screenshots";
  };

  home.file."Pictures/Screenshots/.keep".text = "";

  programs.hyprshot.enable = true;
}
