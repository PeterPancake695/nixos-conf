{
  programs.nixvim.plugins = {
    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    trim = {
      enable = true;
      settings = {
        highlight = false;
        ft_blocklist = [
          "checkhealth"
          "floaterm"
          "lspinfo"
          "TelescopePrompt"
        ];
      };
    };

    telescope = {
      enable = true;

      settings.defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
        ];
        set_env.COLORTERM = "truecolor";
      };
    };

    telescope.extensions.undo = {
      enable = true;

      settings = {
        use_delta = true;
        side_by_side = true;
        layout_strategy = "vertical";
        layout_config.preview_height = 0.8;

        mappings.i = {
          "<cr>" = "require('telescope-undo.actions').restore";
          "<S-cr>" = "require('telescope-undo.actions').yank_additions";
          "<C-cr>" = "require('telescope-undo.actions').yank_deletions";
        };
      };
    };

    treesitter = {
      enable = true;

      nixvimInjections = true;

      folding = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        # ensure_installed = "all";
        auto_install = true;
      };
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    oil = {
      enable = true;
      settings = {
        skip_confirm_for_simple_edits = true;
        keymaps = {
          "<C-l>" = false;
          "<C-r>" = "actions.refresh";
          "y." = "actions.copy_entry_path";
        };
      };
    };

    markdown-preview = {
      enable = true;

      settings = {
        auto_close = 1;
        theme = "dark";
      };
    };

    hmts.enable = true;
    web-devicons.enable = true;
    nvim-autopairs.enable = true;
    none-ls.enable = true;
    nvim-surround.enable = true;
    blink-cmp.enable = true;
    comment.enable = true;
    gitblame.enable = true;
    harpoon.enable = true;
    indent-o-matic.enable = true;
    lazygit.enable = true;
    nix.enable = true;
    trouble.enable = true;
    which-key.enable = true;
    smear-cursor.enable = true;
    transparent.enable = true;
  };
}
