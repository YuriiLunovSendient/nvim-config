if not vim.g.vscode then
	vim.pack.add({
		"https://github.com/nvim-treesitter/nvim-treesitter",
		"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	})

	require("render-markdown").setup({})
end
