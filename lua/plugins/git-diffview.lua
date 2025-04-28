return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup({
			use_icons = false,
		})
		vim.keymap.set("n", "<leader>dv", ":DiffviewOpen<CR>", { desc = "[D]iff [V]iew" })
		vim.keymap.set("n", "<leader>dvc", ":DiffviewClose<CR>", { desc = "[D]iff [V]iew [C]lose" })
		vim.keymap.set("n", "<leader>dvf", ":DiffviewFile %<CR>", { desc = "[D]iff [V]iew [F]ile" })
	end,
}
