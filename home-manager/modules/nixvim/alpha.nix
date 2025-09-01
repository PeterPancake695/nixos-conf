{
  programs.nixvim = {
    plugins.alpha = {
      enable = true;

      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          opts = {
            hl = "Type";
            position = "center";
          };
          type = "text";
          val = [
            "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val = [
            {
              type = "button";
              val = " New file";
              on_press.__raw = "function() vim.cmd[[ene]] end";
              opts = {
                shortcut = "n";
                position = "center";
                cursor = 3;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
            {
              type = "button";
              val = "󰈆 Quit Neovim";
              on_press.__raw = "function() vim.cmd[[qa]] end";
              opts = {
                shortcut = "q";
                position = "center";
                cursor = 3;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
            {
              type = "button";
              val = "󰱼 Search Files";
              on_press.__raw = "function() vim.cmd[[Telescope find_files]] end";
              opts = {
                shortcut = "sf";
                position = "center";
                cursor = 5;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
            {
              type = "button";
              val = "󰺮 Live Grep";
              on_press.__raw = "function() vim.cmd[[Telescope live_grep]] end";
              opts = {
                shortcut = "sg";
                position = "center";
                cursor = 5;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
            {
              type = "button";
              val = "󱦞 Search Buffers";
              on_press.__raw = "function() vim.cmd[[Telescope buffers]] end";
              opts = {
                shortcut = "sb";
                position = "center";
                cursor = 5;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
            {
              type = "button";
              val = "󱎸 Commands";
              on_press.__raw = "function() vim.cmd[[Telescope commands]] end";
              opts = {
                shortcut = "sc";
                position = "center";
                cursor = 5;
                width = 50;
                align_shortcut = "right";
                hl_shortcut = "Keyword";
                hl = "Function";
              };
            }
          ];
        }
        {
          type = "padding";
          val = 2;
        }
        {

          type = "group";
          val = [
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "An idiot admires complexity, a genius admires";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "simplicity, a physicist tries to make it simple,";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "for an idiot anything the more complicated it is";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "the more he will admire it, if you make something";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "so clusterfucked he can't understand it he's";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "gonna think you're a god cause you made it so";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "complicated nobody can understand it. That's how";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "they write journals in Academics, they try to";
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "make it so complicated people think you're a genius.";
            }
            {
              type = "padding";
              val = 1;
            }
            {
              type = "text";
              opts = {
                hl = "Keyword";
                position = "center";
              };
              val = "                                             - Terry A. Davis";
            }
          ];
        }
      ];
    };
  };
}
