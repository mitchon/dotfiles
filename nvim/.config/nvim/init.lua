local g = vim.g
g.mapleader = " "

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
require("lazy-bootstrap")
require("core.options")
require("core.keymaps")
