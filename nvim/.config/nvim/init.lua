local opt = vim.opt
local g = vim.g
g.mapleader = " "
g.mapcalleader = "\\"

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
require("lazy-bootstrap")
require("keymaps")
opt.splitright = true
opt.splitbelow = true
opt.clipboard = 'unnamedplus'
opt.completeopt = 'menuone,noselect'

