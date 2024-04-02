return {
  "j-morano/buffer_manager.nvim", -- Buffer manager
  keys = {
    {"<leader>buf", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>"}
  } 
}
