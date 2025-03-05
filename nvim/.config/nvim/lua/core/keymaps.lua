local map = vim.keymap.set

map('n', '<leader>e', ":NvimTreeToggle<CR>", {silent = true})
map('n', '<leader>c', ":Themery<CR>", {noremap = true, silent = true})
map('n', '<C-k>', "<C-w><up>")
map('n', '<C-j>', "<C-w><down>")
map('n', '<C-h>', "<C-w><left>")
map('n', '<C-l>', "<C-w><right>")

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



