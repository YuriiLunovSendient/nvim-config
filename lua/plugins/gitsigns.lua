return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup()

		vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "[H]unk [P]review" })
		vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "[H]unk [S]tage" })
		vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "[H]unk [R]eset" })
		vim.keymap.set("n", "<leader>bf", gitsigns.blame, { desc = "[B]lame [F]ile" })
		vim.keymap.set("n", "<leader>bl", gitsigns.blame_line, { desc = "[B]lame [L]ine" })
	end,
}
