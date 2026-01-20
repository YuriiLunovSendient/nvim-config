return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		-- Install parsers (async, runs on startup)
		require("nvim-treesitter").install({
			"lua",
			"javascript",
			"typescript",
			"tsx",
			"html",
			"css",
			"json",
			"markdown",
			"markdown_inline",
			"vim",
			"vimdoc",
			"bash",
			"yaml",
			"toml",
		})

		-- Enable treesitter highlighting, indentation, and folding
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"lua",
				"javascript",
				"typescript",
				"typescriptreact",
				"html",
				"css",
				"json",
				"jsonc",
				"markdown",
				"vim",
				"help",
				"bash",
				"sh",
				"yaml",
				"toml",
			},
			callback = function()
				-- Highlighting
				vim.treesitter.start()

				-- Identation
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

				-- Folding
				vim.wo[0][0].foldmethod = "expr"
				vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo[0][0].foldlevel = 99 -- start with all folds open
			end,
		})
	end,
}
