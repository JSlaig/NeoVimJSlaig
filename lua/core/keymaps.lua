local mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

-- Set up the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Mappings for quick editing the file

mapper("n", "r", "<C-r>")

-- "tt" To duplicate line
mapper("n", "tt", ":t.<CR>")

-- Copy to clipboard in visual mode
mapper("x", "c", '"+y')

-- Cut to clipboard in visual mode
mapper("x", "x", '"+d')

-- Copy a whole line in normal mode by double-tapping "c"
mapper("n", "cc", 'yy')

-- Cut a whole line in normal mode by double-tapping "x"
mapper("n", "xx", 'dd')


-- Mappings for fast moving across the file


-- "q" to quit
mapper("n", "q", ":q!<CR>")

-- Go to the end of the file with Ctrl + J
mapper("n", "<C-j>", "]]")
mapper("x", "<C-j>", "]]")

-- Go to the start of the file with Ctrl + K
mapper("n", "<C-k>", "[[")
mapper("x", "<C-k>", "[[")

-- Go to the end of the line with Ctrl + L
mapper("n", "<C-l>", "$")
mapper("x", "<C-l>", "$")

-- Go to the start of the line with Ctrl + H
mapper("n", "<C-h>", "^")
mapper("x", "<C-h>", "^")
