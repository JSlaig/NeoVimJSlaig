return {
	"stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fw", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
				options = {
					indent_size = 3,
					single_quote = false,
					trailing_comma = "none",
				},
			})
		end)
	end,
}
