require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    --list of servers for mason to install
    ensure_installed = {
        "html",
        "cssls",
        "lua_ls"
    },
    automatic_installation = true,
})
