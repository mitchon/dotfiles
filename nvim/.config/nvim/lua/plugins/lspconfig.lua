return {
  {
    "neovim/nvim-lspconfig",
    --dependencies = { "mfussenegger/nvim-jdtls" },
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.clangd.setup({})
      lspconfig.jdtls.setup({})
    end
  }
}
