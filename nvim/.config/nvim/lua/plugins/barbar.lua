return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
    config = function()
      require('barbar').setup()
    end,
    version = '^1.0.0',
  }
}
