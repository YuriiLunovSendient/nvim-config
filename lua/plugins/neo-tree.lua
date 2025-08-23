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
						visible = true,
					},
				},
			})
			require("lsp-file-operations").setup()

			vim.keymap.set("n", "<leader>e", ":Neotree toggle reveal=true<CR>", { desc = "Toggle NeoTree" })
			vim.keymap.set("n", "<leader>1", ":Neotree reveal=true<CR>", { desc = "Reveal File in NeoTree" })
		end,
	},
}
