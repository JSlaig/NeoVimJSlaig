vim.notify = require("notify")


-- Appearance plugins config files
require("core.plugin_config.appearance.lualine")
require("core.plugin_config.appearance.nvim-notify")

-- Navigation plugins config files
require("core.plugin_config.navigation.nvim-tree")
require("core.plugin_config.navigation.fzf")
-- require("core.plugin_config.navigation.telescope")
require("core.plugin_config.navigation.harpoon")
require("core.plugin_config.navigation.leap")

-- IDE plugins config files
require("core.plugin_config.ide.mason")
require("core.plugin_config.ide.treesitter")
require("core.plugin_config.ide.linter")
require("core.plugin_config.ide.formatter")
-- require("core.plugin_config.ide.completions")
-- require("core.plugin_config.ide.autopairs")

-- Tool plugins config files
require("core.plugin_config.tools.buffer-manager")
require("core.plugin_config.tools.nvim-early-retirement")
require("core.plugin_config.tools.tagbar")
require("core.plugin_config.tools.undotree")
require("core.plugin_config.tools.toggleterm")
require("core.plugin_config.tools.vs-tasks")




vim.notify("All plugins loaded succesfully", "info")
