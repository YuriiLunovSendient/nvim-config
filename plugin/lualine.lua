if not vim.g.vscode then
	vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

	require("lualine").setup({
		options = {
			theme = "auto",
			component_separators = "",
			section_separators = { left = " ", right = " " },
		},
	})
end
