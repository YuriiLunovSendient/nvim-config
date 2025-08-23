return {
	"sindrets/diffview.nvim",
	config = function()
		require("diffview").setup()

		vim.opt.fillchars:append("diff:╱")
		vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#20303b" })
		vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#37222c", fg = "#394b70" })
		vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1f2231" })
		vim.api.nvim_set_hl(0, "DiffText", { bg = "#394b70" })

		vim.keymap.set("n", "<leader>dvv", ":DiffviewOpen<CR>", { desc = "[D]iff [V]iew" })
		vim.keymap.set("n", "<leader>dvc", ":DiffviewClose<CR>", { desc = "[D]iff [V]iew [C]lose" })
		vim.keymap.set("n", "<leader>dvf", ":DiffviewFile %<CR>", { desc = "[D]iff [V]iew [F]ile" })
	end,
}
