vim.lsp.enable({
	"ts_ls",
	"html",
	"cssls",
	"tailwindcss",
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
