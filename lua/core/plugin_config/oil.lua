require("oil").setup({})

local function openHS()
    vim.cmd("above split")
    vim.cmd("resize 20%")

    require("oil").open()

end

vim.keymap.set('n', '<leader>oil', openHS, { desc = "Open parent directory" })
 
