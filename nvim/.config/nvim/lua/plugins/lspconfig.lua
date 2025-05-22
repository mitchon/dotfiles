return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'j-hui/fidget.nvim',
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "jdtls",
          "clangd",
          "marksman",
          "gopls",
        }
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lsp_attach = function(client, bufnr)
      end

      require('mason-lspconfig').setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = lsp_attach,
            capabilities = lsp_capabilities,
          })
        end
      })

      lspconfig.lua_ls.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = {'vim'},
            },
          },
        },
      }

      require('lspconfig.configs').kotlin_ls = {
        default_config = {
          cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(9999)),
          single_file_support = true,
          filetypes = { "kotlin" },
          root_markers = { "build.gradle", "build.gradle.kts", "pom.xml" };
          root_dir = function(fname)
              return lspconfig.util.find_git_ancestor(fname)
          end;
          settings = {};
        };
      }

      lspconfig.kotlin_ls.setup{}

      local open_floating_preview = vim.lsp.util.open_floating_preview
      function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
        opts = opts or {}
        opts.border = opts.border or "rounded" -- Set border to rounded
        return open_floating_preview(contents, syntax, opts, ...)
      end
    end
  }
}
