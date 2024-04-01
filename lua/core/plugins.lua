local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
	-- ##########################################################################
	-- My plugins here
	-- ##########################################################################

  -- Needed both in harpoon and fuzzy finders
  'nvim-lua/plenary.nvim',

  -- Need a nerdfont in your terminal for this to display correctly
  'nvim-tree/nvim-web-devicons',
  
  -- ##########################################################################
  -- ## Appearance
  -- ##########################################################################

  -- Dashboard for mainscreen
  {
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
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- Status bar
  'nvim-lualine/lualine.nvim',
  
  -- Notifications
  'rcarriga/nvim-notify',

	-- Custom colorschemes
	{ "catppuccin/nvim", as = "catppuccin" },

  -- Plugin to manage user input and selections (vim.ui.select)
  'stevearc/dressing.nvim',

  -- ##########################################################################
	-- ## IDE
  -- ##########################################################################
  
  -- Syntax highlighting
  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/playground',

  -- LSP Config
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {"neovim/nvim-lspconfig", dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "antosha417/nvim-lsp-file-operations"
  }},

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp", 
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    }
  },

  -- Plugin to autopair brackets,...
  'windwp/nvim-autopairs',

  -- Formatter
  'stevearc/conform.nvim',

  -- Linter
  'mfussenegger/nvim-lint',


  -- ##########################################################################
	-- ## Navigation
  -- ##########################################################################

  -- Fuzzy finder
  -- use {
    --   'nvim-telescope/telescope.nvim',
    --   tag = '0.1.0',
    --   dependencies = { {'nvim-lua/plenary.nvim'} }
    -- }

  'junegunn/fzf',
  'junegunn/fzf.vim',
  'vijaymarupudi/nvim-fzf',
  'vijaymarupudi/nvim-fzf-commands',

  -- File quick navigation
  { "theprimeagen/harpoon", dependencies = { "nvim-lua/plenary.nvim" } },

  -- In-File quick navigation
  {
    "ggandor/leap.nvim",
    -- For . repeats to work
    dependencies = { "tpope/vim-repeat" },
  },

  -- File tree
	'nvim-tree/nvim-tree.lua',


  -- ##########################################################################
  -- ## Tools
  -- ##########################################################################
  
  -- build VSCode tasks inside NeoVim
  {
    -- Still need to tinker this so I can build multiple
    "EthanJWright/vs-tasks.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-lua/popup.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },

  -- ToggleTerm
  'akinsho/toggleterm.nvim',

  -- Buffer manager
  'j-morano/buffer_manager.nvim',

  -- Undo tree
  'mbbill/undotree',

	-- Ez comment lines
	'tpope/vim-commentary',

	-- vimcaps (Disable CapsLock on normal mode)
  'suxpert/vimcaps',


	-- Autoclose inactive buffers
	'chrisgrieser/nvim-early-retirement',

  -- Game to learn VIM Motions
  'ThePrimeagen/vim-be-good',

	-- ##########################################################################
	-- End my plugins here
	-- ##########################################################################

	-- Automatically set up your configuration after cloning packer.nvim

	-- Put this at the end after all plugins
	})
