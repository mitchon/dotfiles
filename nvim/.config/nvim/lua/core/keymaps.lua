local map = vim.keymap.set
local nvimTreeApi = require('nvim-tree.api')
local telescopeBuiltin = require('telescope.builtin')
local term_map = require('terminal.mappings')

map('n', '<leader>e', nvimTreeApi.tree.toggle, {noremap = true, silent = true, desc = 'toggle tree'})

map('n', '<leader>ff', telescopeBuiltin.find_files, {desc = 'find files'})
map('n', '<leader>fg', telescopeBuiltin.live_grep, {desc = 'grep'})
map('n', '<leader>fb', telescopeBuiltin.buffers, {desc = 'find buffers'})
map('n', '<leader>fh', telescopeBuiltin.help_tags, {desc = 'help tags'})

map('n', '<leader>to', term_map.toggle, {desc = 'toggle terminal'})
map('n', '<leader>tr', term_map.run, {desc = 'run command in terminal'})
map('n', '<leader>tk', term_map.kill, {desc = 'kill terminal'})
map('n', '<leader>t]', term_map.cycle_next, {desc = 'cycle next terminal'})
map('n', '<leader>t[', term_map.cycle_prev, {desc = 'cycle previous terminal'})

map('n', '<leader>c', ":Themery<CR>", {noremap = true, silent = true, desc = 'open themery'})

map('n', '<A-h>', ":BufferPrevious<CR>", {silent = true})
map('n', '<A-l>', ":BufferNext<CR>", {silent = true})
map('n', '<A-H>', ":BufferMovePrevious<CR>", {silent = true})
map('n', '<A-L>', ":BufferMoveNext<CR>", {silent = true})
map('n', '<A-0>', ":BufferLast<CR>", {silent = true})
map('n', '<A-1>', ":BufferGoto 1<CR>", {silent = true})
map('n', '<A-2>', ":BufferGoto 2<CR>", {silent = true})
map('n', '<A-3>', ":BufferGoto 3<CR>", {silent = true})
map('n', '<A-4>', ":BufferGoto 4<CR>", {silent = true})
map('n', '<A-5>', ":BufferGoto 5<CR>", {silent = true})
map('n', '<A-6>', ":BufferGoto 6<CR>", {silent = true})
map('n', '<A-7>', ":BufferGoto 7<CR>", {silent = true})
map('n', '<A-8>', ":BufferGoto 8<CR>", {silent = true})
map('n', '<A-9>', ":BufferGoto 9<CR>", {silent = true})
map('n', '<A-c>', ":BufferClose<CR>", {silent = true})
map('n', '<A-s-c>', ":BufferRestore<CR>", {silent = true})
map('n', '<A-p>', ":BufferPin<CR>", {silent = true})



