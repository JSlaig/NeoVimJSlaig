function remove_bg(color)

  -- Hardcoded fallback color
  local hard_color = "slate"

  color = color or hard_color
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

  require("notify")("Colorscheme loaded: " .. color, "info") 
end

-- Active colorScheme
local scheme = "catppuccin"

remove_bg(scheme)
