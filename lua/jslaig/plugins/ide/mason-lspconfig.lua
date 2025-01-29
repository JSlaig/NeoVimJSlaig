return {
	"williamboman/mason-lspconfig.nvim",
	lazy = true,
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig" },
		{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
		{ "j-hui/fidget.nvim", opts = {} },
		{ "folke/neodev.nvim" },
	},
	config = function()
		require("mason-lspconfig").setup({
			--list of servers for mason to install
			ensure_installed = {
				"html",
				"cssls",
				"lua_ls",
				"jdtls",
			},
			automatic_installation = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"java-debug-adapter",
				"java-test",
			},
		})

		local lspconfig = require("lspconfig")
		local lsp_capabilities = require("cmp_nvim_lsp")
		local lsp_attach = function(client, bufnr)
			--Keybindings
		end

		require("mason-lspconfig").setup_handlers({
			function(server_name)
				if server_name ~= "jdtls" then
					lspconfig[server_name].setup({
						on_attach = lsp_attach,
						capabilities = lsp_capabilities,
					})
				end
			end,
		})
	end,
}
