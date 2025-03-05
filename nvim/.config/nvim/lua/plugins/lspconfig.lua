return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "lua_ls",
          "jdtls",
          "clangd",
          "marksman",
        }
      })

      local lspconfig = require('lspconfig')
      --local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lsp_attach = function(client, bufnr)
      end

      require('mason-lspconfig').setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({
            on_attach = lsp_attach,
            --capabilities = lsp_capabilities,
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
    end
  }
}
