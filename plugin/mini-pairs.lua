if not vim.g.vscode then
	vim.pack.add({ "https://github.com/nvim-mini/mini.pairs" })

	require("mini.pairs").setup()
end
