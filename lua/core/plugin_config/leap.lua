require('leap').create_default_mappings()

vim.keymap.set({'n', 'x', 'o'}, 'm', '<Plug>(leap-backward)')
