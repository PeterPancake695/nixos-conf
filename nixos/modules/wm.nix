{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  services.displayManager.gdm.enable = true;
  security.pam.services.hyprlock = { };
  hardware.opentabletdriver.enable = true;
}
