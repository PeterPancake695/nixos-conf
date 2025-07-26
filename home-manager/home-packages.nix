{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    stremio
    vesktop
    mpv
    ripgrep
    microfetch
    wl-clipboard
    zip
    unzip
    htop
    imv
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    yt-dlp
    pavucontrol
    hugo
    brightnessctl
    bemoji
    playerctl
    networkmanagerapplet
  ];
}
