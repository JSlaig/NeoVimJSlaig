local lint = require("lint")

lint.linters_by_ft = {
	javascript = { "eslint_d", "eslint" },
	java = { "eslint_d" },
	css = { "eslint_d" },
	html = { "eslint_d" },
	json = { "eslint_d" },
	yaml = { "eslint_d" },
	markdown = { "eslint_d" },
	lua = { "selene" },
}

-- local ns = lint.get_namespace("eslint_d")
-- vim.diagnostic.config({
--     virtual_text = true,
--     underline = true
-- }, ns)

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	group = lint_augroup,
	callback = function()
		lint.try_lint()
	end,
})

vim.keymap.set("n", "<leader>lt", function()
	lint.try_lint()
end)
