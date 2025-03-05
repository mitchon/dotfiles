return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      require("nvim-tree").setup()
      vim.g.nvim_tree_quit_on_open = 0
    end,
  }
}
