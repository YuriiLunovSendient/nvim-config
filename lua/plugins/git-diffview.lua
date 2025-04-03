return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup({
			use_icons = false,
		})
		vim.keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", {})
		vim.keymap.set("n", "<leader>dvc", ":DiffviewClose<CR>", {})
		vim.keymap.set("n", "<leader>dvf", ":DiffviewFile %<CR>", {})
	end,
}
