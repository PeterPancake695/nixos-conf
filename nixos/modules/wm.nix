{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-hyprland];
  };

  services = {
    displayManager.gdm.enable = true;
    gnome.gnome-keyring.enable = true;
  };

  security.pam.services.hyprlock = {};
  security.pam.services.gdm.enableGnomeKeyring = true;
  security.pam.services.hyprland.enableGnomeKeyring = true;

  systemd.user.services.gnome-keyring = {
    wantedBy = ["default.target"];
    serviceConfig = {
      ExecStart = "${pkgs.gnome-keyring}/bin/gnome-keyring-daemon --start --foreground --components=pkcs11,secrets,ssh";
      Restart = "on-abort";
    };
  };
}
