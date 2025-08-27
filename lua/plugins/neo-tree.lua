return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
				},
			},
			use_libuv_file_watcher = true,
		})

		vim.keymap.set("n", "<leader>e", ":Neotree toggle reveal=true<CR>", { desc = "Toggle NeoTree" })
		vim.keymap.set("n", "<leader>1", ":Neotree reveal=true<CR>", { desc = "Reveal File in NeoTree" })
	end,
}
