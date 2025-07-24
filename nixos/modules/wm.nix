{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
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
