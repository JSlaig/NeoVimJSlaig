return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
    vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
    vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end)
    vim.keymap.set("n", "<leader>7", function() ui.nav_file(7) end)
    vim.keymap.set("n", "<leader>8", function() ui.nav_file(8) end)
    vim.keymap.set("n", "<leader>9", function() ui.nav_file(9) end)

    vim.keymap.set("n", "<leader>j", function() ui.nav_next() end)
    vim.keymap.set("n", "<leader>k", function() ui.nav_prev() end)
  end
}
