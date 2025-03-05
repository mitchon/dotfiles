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
      lazygit = { enabled = true },
      notifier = { enabled = true },
      terminal = { enabled = true },
    },
    keys = {
      { "<c-\\>",      function() Snacks.terminal() end, desc = "Toggle Terminal" },
      { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse", mode = { "n", "v" } },
      { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    }
  }
}
