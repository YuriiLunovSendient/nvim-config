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
					file_ignore_patterns = {
						"node_modules/",
						"dist/",
						"build/",
						".git/",
						".git-crypt/",
						".cursor/",
						".vscode/",
						".idea/",
						".devcontainer/",
					},
				},
				pickers = {
					find_files = {
						hidden = true,
						find_command = { "rg", "--files", "--sortr=modified" },
					},
					oldfiles = {
						only_cwd = true,
					},
				},
			})
			local builtin = require("telescope.builtin")

			local find_word_or_selection = function()
				local text = ""
				if vim.fn.mode() == "v" or vim.fn.mode() == "V" then
					-- Visual mode: get selected text
					vim.cmd('normal! "vy')
					text = vim.fn.getreg("v")
				else
					-- Normal mode: get word under cursor
					text = vim.fn.expand("<cword>")
				end
				builtin.grep_string({ search = text })
			end

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "[F]ind [S]tring" })
			vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "[F]ind [R]ecent" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffers" })
			vim.keymap.set(
				{ "n", "v" },
				"<leader>fw",
				find_word_or_selection,
				{ noremap = true, silent = true, desc = "[F]ind current [W]ord/selection" }
			)
			vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })

			vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "[G]oto [R]eferences" })

			vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "[G]it [F]iles" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "[G]it [S]tatus" })
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "[G]it [B]ranches" })
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "[G]it [C]ommits" })
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
