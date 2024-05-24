--TODO: Need to make it work with the terminal I want and manage multiple instances

return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup{
            -- Use the settings specified in opts
            direction = "float",
            open_mapping = [[<c-\>]],
            shell = "pwsh",
            float_opts = {
                border = "curved",
            },
        }

        -- Create and manage multiple instances of terminals
        local Terminal = require("toggleterm.terminal").Terminal

        -- Define multiple terminal instances
        local terminals = {
            Terminal:new({ direction = "float", shell = "pwsh" }),
            Terminal:new({ direction = "float", shell = "pwsh" }),
            Terminal:new({ direction = "float", shell = "pwsh" }),
        }

        -- Function to toggle each terminal instance
        _G.toggle_term_instance = function(instance_number)
            if terminals[instance_number] then
                terminals[instance_number]:toggle()
            else
                print("Terminal instance " .. instance_number .. " does not exist.")
            end
        end

        -- Map keys to toggle specific terminal instances
        -- vim.api.nvim_set_keymap("n", "<leader>t1", "<cmd>lua toggle_term_instance(1)<CR>", { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap("n", "<leader>t2", "<cmd>lua toggle_term_instance(2)<CR>", { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap("n", "<leader>t3", "<cmd>lua toggle_term_instance(3)<CR>", { noremap = true, silent = true })
    end,
}

