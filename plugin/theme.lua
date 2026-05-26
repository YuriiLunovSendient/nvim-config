if not vim.g.vscode then
	vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })

	vim.cmd.colorscheme("catppuccin-nvim")
end
