return {
	"rcarriga/nvim-notify", -- Better notifications
	event = "VimEnter",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
		})
	end,
}
