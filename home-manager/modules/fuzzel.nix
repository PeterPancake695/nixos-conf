{
  config,
  lib,
  ...
}:
with config.lib.stylix.colors; let
  opacity = lib.toHexString (builtins.ceil (config.stylix.opacity.popups * 255));
in {
  programs.fuzzel.enable = true;
  programs.fuzzel.settings = {
    colors = {
      background = "${base00-hex}${opacity}";
      text = "${base05-hex}ff";
      match = "${base0A-hex}ff";
      selection = "${base03-hex}ff";
      selection-text = "${base05-hex}ff";
      selection-match = "${base0A-hex}ff";
      border = "${base0D-hex}ff";
    };

    main = {
      font = "${config.stylix.fonts.monospace.name}:size=18";
      dpi-aware = "no";
      icon-theme = "Papirus";
      prompt = ">> ";
    };

    border = {
      width = 3;
      radius = 15;
    };
  };
}
