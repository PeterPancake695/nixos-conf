{
  config,
  pkgs,
  stateVersion,
  hostname,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../nixos/modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;

  # Nvidia bullshit
  services.xserver.enable = true;
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  boot.kernelParams = [
    "nvidia_drm.modeset=1"
    "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
  ];

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    VDPAU_DRIVER = "nvidia";
    XDG_SESSION_TYPE = "wayland";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    WLR_RENDERER_ALLOW_SOFTWARE = "1";
    __GL_GSYNC_ALLOWED = "1";
    __GL_VRR_ALLOWED = "0";
    NVD_BACKEND = "direct";
    NVD_GPU = "1";
  };

  programs.hyprland = {
    xwayland.enable = true;
  };

  # Monitor config for hyprland
  environment.etc."hypr/hyprland.conf.d/monitors.conf".text = ''
    monitor=HDMI-A-1,1920x1080@60,0x0,1,mirror,eDP-1
    monitor=,preferred,auto,1,mirror,HDMI-A-1
  '';
}
