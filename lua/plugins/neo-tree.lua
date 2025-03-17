return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"antosha417/nvim-lsp-file-operations",
		},
		config = function()
			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						hide_dotfiles = false,
					},
				},
			})
			require("lsp-file-operations").setup()

			vim.keymap.set("n", "<leader>1", ":Neotree filesystem reveal left<CR>")
			vim.keymap.set("n", "<leader>2", ":Neotree close<CR>")
		end,
	},
}
