return {
    "zeioth/garbage-day.nvim", -- Plugin to manage inactive lsp servers (Garbage collector)
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
        wakeup_delay =  500,
    }
}
