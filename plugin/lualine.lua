vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })

require("lualine").setup({
	options = {
		theme = "palenight",
		component_separators = "",
		section_separators = { left = " ", right = " " },
	},
})
