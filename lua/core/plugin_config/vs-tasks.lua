-- Binding to list and run available tasks
vim.keymap.set('n', '<leader>ta', ":vsplit term://powershell<CR> | :vertical resize -25 | :lua require('telescope').extensions.vstask.tasks()<CR>")  


