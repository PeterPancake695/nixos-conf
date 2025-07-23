{inputs, ...} : {
  imports = [
    ./config.nix
    ./language.nix
    ./visual.nix
  ];

  programs.nvf.enable = true;
}
