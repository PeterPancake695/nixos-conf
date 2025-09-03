{ pkgs, ... }:
{
  home.packages = with pkgs; [
    mangohud
    protonup
    lutris
    heroic
    bottles
  ];

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOL_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };
}
