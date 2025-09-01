{pkgs, ...}: {
  networking.networkmanager.enable = true;

  services.gnome.gnome-keyring.enable = true;

  security.pam.services.gdm.enableGnomeKeyring = true;

  systemd.user.services.gnome-keyring = {
    wantedBy = ["default.target"];
    serviceConfig = {
      ExecStart = "${pkgs.gnome-keyring}/bin/gnome-keyring-daemon --start --foreground --components=pkcs11,secrets,ssh";
      Restart = "on-abort";
    };
  };
}
