local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local keymap = vim.keymap

local opts = { noremap = true, silent = true }
local on_attach = function(client, bufnr)
  opts.buffer = bufnr

  opts.desc = "Show LSP references"

  keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", opts)
  keymap.set("n", "<leader>gd", vim.lsp.buf.declaration, opts)
end
