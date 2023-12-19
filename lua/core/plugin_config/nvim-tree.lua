vim.g.leaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup{
    update_cwd = true,
    view = {
        adaptive_size = true,
        centralize_selection = true,
    },
}

vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')
