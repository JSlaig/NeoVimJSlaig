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

  -- Needed both in harpoon and fuzzy finders
  use("nvim-lua/plenary.nvim")

  -- For web-dev-icons to work, patched font is needed https://www.nerdfonts.com/
  use("nvim-tree/nvim-web-devicons")
  
  -- #############################################################################
  -- ## Appearance
  -- #############################################################################

  -- Dashboard for mainscreen
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

  -- Status bar
  use("nvim-lualine/lualine.nvim")
  
  -- Notifications
  use("rcarriga/nvim-notify")

	-- Custom colorschemes
	use({ "catppuccin/nvim", as = "catppuccin" })


  -- #############################################################################
	-- ## IDE
  -- #############################################################################
  
  -- Syntax highlighting
  use("nvim-treesitter/nvim-treesitter")
  use("nvim-treesitter/playground")

  -- LSP Config
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  -- Plugin to autopair brackets,...
  use("windwp/nvim-autopairs")

  -- Formatter
  use("stevearc/conform.nvim")

  -- Linter
  use("mfussenegger/nvim-lint")


  -- #############################################################################
	-- ## Navigation
  -- #############################################################################

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

  -- File quick navigation
  use({ "theprimeagen/harpoon", requires = { "nvim-lua/plenary.nvim" } })

  -- In-File quick navigation
  use({
    "ggandor/leap.nvim",
    -- For . repeats to work
    requires = { "tpope/vim-repeat" },
  })

  -- File tree
	use("nvim-tree/nvim-tree.lua")


  -- #############################################################################
  -- ## Tools
  -- #############################################################################
  
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

  -- ToggleTerm
  use("akinsho/toggleterm.nvim")

  -- Buffer manager
  use("j-morano/buffer_manager.nvim")

  -- Undo tree
  use("mbbill/undotree")

	-- Ez comment lines
	use("tpope/vim-commentary")

	-- vimcaps (Disable CapsLock on normal mode)
	use("suxpert/vimcaps")


	-- Autoclose inactive buffers
	use("chrisgrieser/nvim-early-retirement")

  -- Game to learn VIM Motions
  use("ThePrimeagen/vim-be-good")

	-- #############################################################################
	-- End my plugins here
	-- #############################################################################

	-- Automatically set up your configuration after cloning packer.nvim

	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
