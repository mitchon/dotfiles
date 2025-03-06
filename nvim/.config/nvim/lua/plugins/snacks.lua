return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      { "echasnovski/mini.icons", version = '*' }
    },
    opts = {
      dashboard = { enabled = true },
      gitbrowse = { enabled = true },
    },
    keys = {
      { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
    }
  }
}
