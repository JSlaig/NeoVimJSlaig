local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- Search and open on split
vim.keymap.set('n', '<leader>sff', ":vsplit<CR>|:Telescope find_files<CR>", {})
vim.keymap.set('n', '<leader>vsff', ":split<CR>|:Telescope find_files<CR>", {})
