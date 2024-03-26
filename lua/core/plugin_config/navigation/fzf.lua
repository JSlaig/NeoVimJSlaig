-- Resize window in order to take less screen space
vim.g.fzf_layout = { up = '~20%' }


-- Open File finder
vim.keymap.set('n', '<leader>ff', ":Files<CR>")

-- Open grep finder
vim.keymap.set('n', '<leader>fg', ":Rg<CR>")

-- Show opened buffers
vim.keymap.set('n', '<leader>fb', ":Buffer<CR>")

-- Split Window Open File finder
vim.keymap.set('n', '<leader>sff', ":vsplit<CR>|:Files<CR>")

-- Split Open grep finder
vim.keymap.set('n', '<leader>sfg', ":vsplit<CR>|:Rg<CR>")
