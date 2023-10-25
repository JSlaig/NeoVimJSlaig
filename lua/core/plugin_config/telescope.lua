local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.live_grep, {})
vim.keymap.set('n', '<leader>o', builtin.find_files, {})

-- Search and open on split
vim.keymap.set('n', '<leader>so', ":vsplit<CR>|:Telescope find_files<CR>", {})
vim.keymap.set('n', '<leader>vso', ":split<CR>|:Telescope find_files<CR>", {})
