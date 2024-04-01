return {
  'nvim-tree/nvim-tree.lua', -- File tree
  keys = {
    {"<leader>n", ":NvimTreeFindFileToggle<CR>", desc = "NvimTree"},
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
   config = function()

            vim.g.leaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            require("nvim-tree").setup {
                update_cwd = true,
                view = {
                    adaptive_size = true,
                    centralize_selection = true,
                },
            }
        end,
      }  
