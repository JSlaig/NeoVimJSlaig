return {
	"ggandor/leap.nvim", -- InFile quick nav
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").create_default_mappings()

		-- Modify binding for backward search (forward search still being 's')
		vim.keymap.set({ "n", "x", "o" }, "m", "<Plug>(leap-backward)")
	end,
}
