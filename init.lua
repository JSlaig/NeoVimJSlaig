require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

o.splitright = true
o.hidden = true
o.lazyredraw = true
