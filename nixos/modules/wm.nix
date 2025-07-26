{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-hyprland];
  };

  security.pam.services.hyprlock = {};
  security.pam.services.gdm.enableGnomeKeyring = true;
  security.pam.services.hyprland.enableGnomeKeyring = true;

  services = {
    displayManager.gdm.enable = true;
    gnome.gnome-keyring.enable = true;

    libinput.enable = true;

    libinput.mouse = {
      middleEmulation = true;
    };

    libinput.touchpad = {
      middleEmulation = true;
    };
  };
}
