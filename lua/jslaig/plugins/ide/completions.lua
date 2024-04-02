
return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
    config = function()
        local cmp = require("cmp")

        local luasnip = require("luasnip")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = {
                -- configure how nvim-cmp interacts with the snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                -- Move across items
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),

                -- Navigate through suggested file/snippet (currently not working)
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),

                -- Complete writing suggestion (not working)
                ["<C-Space>"] = cmp.mapping.complete(),

                -- Cancel suggestions
                ["<C-e>"] = cmp.mapping.abort(),

                -- Confirm suggestion
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = 'luasnip' },   -- snippets
                { name = 'buffer' },    -- text within current buffer
                { name = 'path' },      -- file system paths
            }),
        })
    end
}
