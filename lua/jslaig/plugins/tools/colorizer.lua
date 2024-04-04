return {
    'NvChad/nvim-colorizer.lua',
    event = { "BufReadPre", "BufNewFile", "BufWritePost" },
    config = function()
        require('colorizer').setup()
    end
}
