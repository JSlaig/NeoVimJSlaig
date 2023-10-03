local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.live_grep, {})
vim.keymap.set('n', '<leader>o', builtin.find_files, {})
