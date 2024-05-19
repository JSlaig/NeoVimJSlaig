--TODO: Need to make it work with the terminal I want and manage multiple instances
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    direction = "float",
    open_mapping = [[<c-\>]],
        -- Make it use pwsh
  },
  config = true,
}
