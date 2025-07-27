{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # In alphabetical order
    bemoji
    brightnessctl
    cliphist
    ffmpeg
    ffmpegthumbnailer
    fzf
    htop
    hugo
    imv
    microfetch
    mpv
    networkmanagerapplet
    pavucontrol
    pcmanfm
    playerctl
    ripgrep
    stremio
    unzip
    wl-clipboard
    yt-dlp
    zip
  ];
}
