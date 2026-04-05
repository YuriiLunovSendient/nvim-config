vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

vim.api.nvim_create_autocmd("PackChanged", {
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == "nvim-treesitter" and kind == "update" then
			if not ev.data.active then
				vim.cmd.packadd("nvim-treesitter")
			end
			vim.cmd("TSUpdate")
		end
	end,
})

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
