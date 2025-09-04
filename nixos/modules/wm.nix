{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  services.displayManager.gdm.enable = true;
  security.pam.services.hyprlock = { };
  hardware.opentabletdriver.enable = true;

  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };
  programs.gamemode.enable = true;
}
