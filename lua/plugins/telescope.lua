return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")

			telescope.setup({
				defaults = {
					layout_strategy = "vertical",
					sorting_strategy = "ascending",
					layout_config = {
						mirror = true,
						prompt_position = "top",
					},
				},
				pickers = {
					find_files = {
						find_command = { "rg", "--files", "--sortr=modified" },
					},
					oldfiles = {
						only_cwd = true,
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "[F]ind [S]tring (Grep)" })
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind [W]ord" })
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "[F]ind [O]ld Files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffers" })
			vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "[F]ind [R]eferences" })
			vim.keymap.set("n", "<leader>fgf", builtin.git_files, { desc = "[F]ind [G]it [F]iles" })
			vim.keymap.set("n", "<leader>fgs", builtin.git_status, { desc = "[F]ind [G]it [S]tatus" })
			vim.keymap.set("n", "<leader>fgb", builtin.git_branches, { desc = "[F]ind [G]it [B]ranches" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
