{pkgs, ...}: {
  hardware.keyboard.qmk.enable = true;

  environment.systemPackages = with pkgs; [
    vial
  ];
}
