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
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find String (Grep)" })
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find Word" })
			vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find Old (Recent) Files" })
			vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find Git Files" })
			vim.keymap.set("n", "<leader>fc", builtin.git_status, { desc = "Find Changed Git Files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
			vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Find References" })
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
