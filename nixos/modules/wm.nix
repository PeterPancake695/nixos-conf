{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-hyprland];
  };

  security.pam.services.hyprlock = {};

  services = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;

    libinput.enable = true;

    libinput.mouse = {
      middleEmulation = true;
    };

    libinput.touchpad = {
      middleEmulation = true;
    };
  };
}
