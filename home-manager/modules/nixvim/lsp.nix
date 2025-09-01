{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        keymaps = {
          silent = true;
          diagnostic = {
            # Navigate in diagnostics
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gD = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            re = "rename";
          };
        };

        servers = {
          gopls = {
            enable = true;
            filetypes = [
              "go"
              "gomod"
              "gowork"
              "gotmpl"
            ];
            settings = {
              usePlaceholders = true;
              completeUnimported = true;
              completeFunctionCalls = true;
              staticcheck = true;
              matcher = "fuzzy";
              analyses = {
                unusedparams = true;
                shadow = true;
              };
            };
          };
          nixd = {
            enable = true;
            settings = {
              nixd = {
                nixpkgs = {
                  expr = "import <nixpkgs> { }";
                };
                formatting = {
                  command = [ "nixpkgs-fmt" ];
                };
                options = {
                  nixos = {
                    expr = "(builtins.getFlake \"/path/to/your/flake\").nixosConfigurations.HOSTNAME.options";
                  };
                  home_manager = {
                    expr = "(builtins.getFlake \"/path/to/your/flake\").homeConfigurations.USERNAME.options";
                  };
                };
              };
            };
          };
          golangci_lint_ls.enable = true;
          lua_ls.enable = true;
          nil_ls.enable = true;
          pyright.enable = true;
          pylsp.enable = true;
          tflint.enable = true;
          clangd.enable = true;
          html.enable = true;
          cssls.enable = true;
          ts_ls.enable = true;
          jdtls.enable = true;
        };
      };
      lsp-format = {
        enable = true;
      };
    };

    filetype = {
      extension = {
        yuck = "yuck";
      };
    };

    # Custom LSP configuration for Yuck
    extraConfigLua = ''
      -- Set up Yuck filetype
      vim.filetype.add({
        extension = {
          yuck = "yuck",
        },
      })

      -- Configure LSP for Yuck files
      local lspconfig = require('lspconfig')
      local configs = require('lspconfig.configs')

      -- Check if yuck_lsp is already defined
      if not configs.yuck_lsp then
        configs.yuck_lsp = {
          default_config = {
            cmd = { 'yuck', 'lsp' },
            filetypes = { 'yuck' },
            root_dir = lspconfig.util.root_pattern('.git', 'eww.yuck'),
            single_file_support = true,
            settings = {},
          },
          docs = {
            description = 'Yuck language server for Eww configuration files',
          },
        }
      end

      -- Setup the LSP server with minimal configuration
      lspconfig.yuck_lsp.setup({
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })
    '';
  };
}
