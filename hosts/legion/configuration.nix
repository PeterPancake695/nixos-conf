{
  config,
  pkgs,
  stateVersion,
  hostname,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [pkgs.home-manager];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;

  services.xserver.enable = true;

  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;

    powerManagement.enable = false;

    powerManagement.finegrained = false;

    open = false;

    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  environment.etc."hypr/hyprland.conf.d/monitors.conf".text = ''
    monitor=HDMI-A-1,1920x1080@60,0x0,1,mirror,eDP-1
    monitor=,preferred,auto,1,mirror,HDMI-A-1
  '';
}
