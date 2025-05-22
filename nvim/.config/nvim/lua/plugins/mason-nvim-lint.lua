return {
  "williamboman/mason.nvim",
  "mfussenegger/nvim-lint",
  "rshkarin/mason-nvim-lint",
  config = function()
    require ('mason-nvim-lint').setup({
      ensure_installed = {
        'golangcli-lint'
      },
    })
  end
}
