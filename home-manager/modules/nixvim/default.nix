{
  programs.nixvim.enable = true;

  imports = [
    ./alpha.nix
    ./colorscheme.nix
    ./completion.nix
    ./keybinds.nix
    ./lsp.nix
    ./noice.nix
    ./options.nix
    ./plugins.nix
  ];
}
