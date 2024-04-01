 
return {
        'rcarriga/nvim-notify', -- Better notifications
        config = function()
            require("notify").setup {
                background_colour = "#000000"
            }
        end
}
