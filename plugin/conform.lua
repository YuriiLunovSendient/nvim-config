vim.pack.add({ "https://github.com/stevearc/conform.nvim" })

local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "eslint_d", "prettier" },
		javascriptreact = { "eslint_d" },
		typescript = { "eslint_d", "prettier" },
		typescriptreact = { "eslint_d" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
	},
	format_on_save = {
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	},
})

vim.keymap.set({ "n", "v" }, "<leader>fm", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file or selection" })
