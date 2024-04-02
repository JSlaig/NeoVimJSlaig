return {
   "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            --list of servers for mason to install
            ensure_installed = {
                "html",
                "cssls",
                "lua_ls"
            },
            automatic_installation = true,
        })
    end
}
