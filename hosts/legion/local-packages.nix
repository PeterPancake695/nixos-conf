{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    kdePackages.kate
    neovim
    git
    librewolf
    home-manager
  ];
}
