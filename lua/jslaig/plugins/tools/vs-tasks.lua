--TODO: see if I can tweak it to integrate better
return {
    "EthanJWright/vs-tasks.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-lua/popup.nvim",
        "nvim-telescope/telescope.nvim",
    },
    keys = {
        {"<leader>bt", ":lua require('telescope').extensions.vstask.tasks()<CR>"}
    },
    config = function()
        require("vstask").setup({
            cache_json_conf = false, -- don't read the json conf every time a task is ran
            cache_strategy = "last", -- can be "most" or "last" (most used / last used)
            config_dir = ".vscode", -- directory to look for tasks.json and launch.json
            use_harpoon = true, -- Need this in order for terms to appear in buffers and be able to retrieve them
            telescope_keys = { -- change the telescope bindings used to launch tasks
                tab = '<CR>',
                -- current = '<CR>',
            },
            autodetect = { -- auto load scripts
                npm = "off"
            },
            terminal = 'custom',
            term_opts = {
                cmd = function(task)
                    return 'lua require("terminal.mappings").run() "' .. task.name .. '")'
                end,
            },
            tab = {
                direction = 'tab',
            }
        })
    end
}

