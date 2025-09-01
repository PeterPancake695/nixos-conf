{
  programs.nixvim.colorschemes = {
    catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
        integrations = {
          cmp = true;
          gitsigns = true;
          treesitter = true;
          notify = true;
          mini.enabled = true;
        };
      };
    };
  };
}
