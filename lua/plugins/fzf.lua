return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local fzfLua = require("fzf-lua")
		local actions = fzfLua.actions

		fzfLua.setup({
			winopts = {
				backdrop = false,
				preview = {
					layout = "vertical",
					vertical = "down:70%",
				},
			},
			files = {
				rg_opts = [[--color=never --hidden --files -g "!.git" --sortr=modified]],
			},
			oldfiles = {
				cwd_only = true,
			},
			lsp = {
				code_actions = {
					winopts = {
						width = 0.4,
						height = 0.3,
						row = 0.5,
						col = 0.5,

						preview = {
							hidden = true,
						},
					},
				},
			},
			keymap = {
				builtin = {
					["<C-d>"] = "preview-page-down",
					["<C-u>"] = "preview-page-up",
				},
			},
			actions = {
				files = {
					["enter"] = FzfLua.actions.file_edit_or_qf,
					["ctrl-q"] = actions.file_sel_to_qf,
					["ctrl-s"] = actions.file_split,
					["ctrl-v"] = actions.file_vsplit,
					["alt-i"] = actions.toggle_ignore,
					["alt-h"] = actions.toggle_hidden,
					["alt-f"] = actions.toggle_follow,
				},
			},
		})

		fzfLua.register_ui_select()

		vim.keymap.set("n", "<leader>ff", function()
			fzfLua.files()
		end, { desc = "[F]ind [F]iles" })
		vim.keymap.set("n", "<leader>fs", function()
			fzfLua.live_grep()
		end, { desc = "[F]ind [S]tring" })
		vim.keymap.set("v", "<leader>fs", function()
			fzfLua.grep_visual()
		end, { desc = "[F]ind [S]tring (visual)" })
		vim.keymap.set("n", "<leader>fr", function()
			fzfLua.oldfiles()
		end, { desc = "[F]ind [R]ecent" })
		vim.keymap.set("n", "<leader>fb", function()
			fzfLua.buffers()
		end, { desc = "[F]ind [B]uffers" })
		vim.keymap.set("n", "<leader>fk", function()
			fzfLua.keymaps()
		end, { desc = "[F]ind [K]eymaps" })

		vim.keymap.set("n", "<leader>gr", function()
			fzfLua.lsp_references()
		end, { desc = "[G]oto [R]eferences" })

		vim.keymap.set("n", "<leader>gf", function()
			fzfLua.git_files()
		end, { desc = "[G]it [F]iles" })
		vim.keymap.set("n", "<leader>gs", function()
			fzfLua.git_status()
		end, { desc = "[G]it [S]tatus" })
		vim.keymap.set("n", "<leader>gb", function()
			fzfLua.git_branches()
		end, { desc = "[G]it [B]ranches" })
		vim.keymap.set("n", "<leader>gc", function()
			fzfLua.git_commits()
		end, { desc = "[G]it [C]ommits" })

		vim.keymap.set("n", "<leader>ca", function()
			fzfLua.lsp_code_actions()
		end, { desc = "[C]ode [A]ctions" })
	end,
}
