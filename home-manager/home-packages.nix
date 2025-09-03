{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # In alphabetical order
    brightnessctl
    chntpw
    cliphist
    emote
    ffmpeg
    ffmpegthumbnailer
    fzf
    htop
    hugo
    imv
    krita
    libreoffice
    microfetch
    mpv
    networkmanagerapplet
    pavucontrol
    pcmanfm
    playerctl
    pulseaudio
    qalculate-gtk
    ripgrep
    stremio
    unzip
    wl-clipboard
    yt-dlp
    zip
    gcc
    gnumake
    binutils
    glibc
    stdenv.cc
    android-tools
    jdk
    android-studio
    python3
    kicad-unstable
    cmake
    obs-studio
    davinci-resolve
    thunderbird
    fastfetch
    satisfactorymodmanager
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "qtwebengine-5.15.19"
  ];
}
