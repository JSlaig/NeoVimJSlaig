local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- #############################################################################
  -- My plugins here
  -- #############################################################################

  -- Dashboard mainscreen
  use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' ColorScheme',
          group = 'Personalize',
          action = 'color',
         key = 'a',
        },
      },
    },
 
  }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
  }

  -- For web-dev-icons to work, patched font is needed https://www.nerdfonts.com/
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'

  -- Syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- Ez comment lines
  use 'tpope/vim-commentary'

  -- Game to learn VIM Motions
  use('ThePrimeagen/vim-be-good') 

  -- File quick navigation 
  use ('theprimeagen/harpoon')

  -- Undo tree 
  use ('mbbill/undotree')

  -- Funtion summary
  use ('preservim/tagbar')

  -- Plugin to autopair brackets,...
  use ('windwp/nvim-autopairs')

  -- LSP (To be updated)
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- ToggleTerm
  use ("akinsho/toggleterm.nvim")

  -- vimcaps (Disable CapsLock on normal mode)
  use("suxpert/vimcaps")

  -- Oil
  use("stevearc/oil.nvim")

  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- #############################################################################
  -- End my plugins here
  -- #############################################################################

  -- Automatically set up your configuration after cloning packer.nvim

  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
