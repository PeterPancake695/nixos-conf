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

  systemd.user.services.gnome-keyring-daemon = {
    enable = true;
    description = "GNOME Keyring Daemon";
    wantedBy = ["default.target"];

    serviceConfig = {
      Type = "dbus";
      BusName = "org.gnome.keyring";
      ExecStart = "${pkgs.gnome-keyring}/bin/gnome-keyring-daemon --foreground --components=pkcs11,secrets,ssh,gpg";
      Environment = "SSH_AUTH_SOCK=%t/keyring/ssh";
    };
  };
}
