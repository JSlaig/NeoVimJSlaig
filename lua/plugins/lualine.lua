return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    setup = function()
        -- Any setup code can go here if needed
    end,
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
            },
            sections = {
                lualine_a = {
                    {
                        'filename',
                        path = 1,
                    }
                }
            }
        }
    end
}

