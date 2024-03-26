local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- #############################################################################
	-- My plugins here
	-- #############################################################################

	--Custom colorschemes
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Dashboard mainscreen
	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
				theme = "hyper",
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{
							icon = " ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = ":Files",
							key = "f",
						},
						{
							desc = " ColorScheme",
							group = "Personalize",
							action = ":Color",
							key = "a",
						},
					},
				},
			})
		end,
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- Needed both in harpoon and fuzzy finders
	use("nvim-lua/plenary.nvim")

	-- For web-dev-icons to work, patched font is needed https://www.nerdfonts.com/
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")

	use("nvim-lualine/lualine.nvim")

	-- Syntax highlighting
	use("nvim-treesitter/nvim-treesitter")
	use("nvim-treesitter/playground")

	-- Fuzzy finder
	-- use {
	--   'nvim-telescope/telescope.nvim',
	--   tag = '0.1.0',
	--   requires = { {'nvim-lua/plenary.nvim'} }
	-- }

	use({ "junegunn/fzf" })
	use({ "junegunn/fzf.vim" })
	use("vijaymarupudi/nvim-fzf")
	use("vijaymarupudi/nvim-fzf-commands")

	-- Ez comment lines
	use("tpope/vim-commentary")

	-- Game to learn VIM Motions
	use("ThePrimeagen/vim-be-good")

	-- File quick navigation
	use({ "theprimeagen/harpoon", requires = { "nvim-lua/plenary.nvim" } })

	-- Harpoon like buffer manager
	use("j-morano/buffer_manager.nvim")

	-- Undo tree
	use("mbbill/undotree")

	-- Funtion summary
	use("preservim/tagbar")

	-- Plugin to autopair brackets,...
	use("windwp/nvim-autopairs")

	-- ToggleTerm
	use("akinsho/toggleterm.nvim")

	-- vimcaps (Disable CapsLock on normal mode)
	use("suxpert/vimcaps")

	-- Leap
	use({
		"ggandor/leap.nvim",
		-- For . repeats to work
		requires = { "tpope/vim-repeat" },
	})

	-- Github copilot
	-- use("github/copilot.vim")

	-- Run VSCode tasks inside NeoVim
	use({
		-- Still need to tinker this so I can run multiple
		"EthanJWright/vs-tasks.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope.nvim",
		},
	})

	-- Autoclose inactive buffers
	use("chrisgrieser/nvim-early-retirement")

	-- Notifications
	use("rcarriga/nvim-notify")

	-- LSP Config
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Formatter
	use("stevearc/conform.nvim")

	-- Linter
	use("mfussenegger/nvim-lint")

	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- #############################################################################
	-- End my plugins here
	-- #############################################################################

	-- Automatically set up your configuration after cloning packer.nvim

	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
