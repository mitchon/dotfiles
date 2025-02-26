return {
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
      require("nvim-tree").setup()
      vim.g.nvim_tree_quit_on_open = 0
    end,
  }
}
