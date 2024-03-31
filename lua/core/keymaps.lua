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


-- ############################################################################
-- Mappings for quick editing the file
-- ############################################################################

-- Remove F1 mapping for help
mapper("", "<F1>", "<Nop>")

-- "r" to re-do
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

-- Make d actually delete
mapper("n", "dd", '"_dd')
mapper("n", "d", '"_d')
mapper("v", "d", '"_d')

-- Command to move highlighted lines
mapper("x", "<c-j>", ":m '>+1<cr>gv=gv")
mapper("x", "<c-k>", ":m '<-2<cr>gv=gv")

-- Command to quickly enter replace mode
-- SIDENOTE: Use "I" after the replace in order to be case-sensitive
mapper("n", "<leader>/r", ":%s/")


-- ############################################################################
-- Mappings for fast moving across the file
-- ############################################################################

-- "<leader>q" to quit
mapper("n", "<leader>q", ":q!<CR>")

-- "<leader>wq" to save and quit
mapper("n", "<leader>wq", ":wq<CR>")

-- "<leader>w" to save
mapper("n", "<leader>w", ":w<CR>")

-- Go to the end of the line with Ctrl + L
mapper("n", "<C-l>", "$")
mapper("x", "<C-l>", "$")

-- Go to the start of the line with Ctrl + H
mapper("n", "<C-h>", "^")
mapper("x", "<C-h>", "^")

-- Create split
mapper("n", "<leader>s", ":vsplit<CR>")
mapper("n", "<leader>vs", ":split<CR>")

-- Move across splits
mapper("n", "<leader>y", "<C-w>l")
mapper("n", "<leader>t", "<C-w>h")
mapper("n", "<leader>vk", "<C-w>k")
mapper("n", "<leader>vj", "<C-w>j")
