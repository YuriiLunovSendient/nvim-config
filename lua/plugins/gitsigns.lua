return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")
		gitsigns.setup()

		vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Hunk Preview" })
		vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Hunk Stage" })
		vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Hunk Reset" })
		vim.keymap.set("n", "<leader>bf", gitsigns.blame, { desc = "Blame File" })
		vim.keymap.set("n", "<leader>bl", gitsigns.blame_line, { desc = "Blame Line" })
	end,
}
