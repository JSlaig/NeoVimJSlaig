require("vstask").setup({
  cache_json_conf = false, -- don't read the json conf every time a task is ran
  cache_strategy = "most", -- can be "most" or "last" (most used / last used)
  config_dir = ".vscode", -- directory to look for tasks.json and launch.json
  use_harpoon = true, -- use harpoon to auto cache terminals
  telescope_keys = { -- change the telescope bindings used to launch tasks
      tab = '<CR>',
      -- current = '<CR>',
  },
  autodetect = { -- auto load scripts
    npm = "off"
  },
  terminal = 'toggleterm',
  term_opts = {
    -- current = {
    --   direction = "float",
    -- },
    tab = {
      direction = 'tab',
    }
  },
  -- json_parser = 'vim.fn.json.decode'
})

-- Binding to list and run available tasks
vim.keymap.set('n', '<leader>ta', ":lua require('telescope').extensions.vstask.tasks()<CR>")  


