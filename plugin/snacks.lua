vim.pack.add({ "https://github.com/folke/snacks.nvim" })

local Snacks = require("snacks")

Snacks.setup({
	explorer = { enabled = true },
	picker = {
		enabled = true,
		sources = {
			recent = {
				filter = {
					cwd = true,
				},
			},
		},
		win = {
			input = {
				keys = {
					["<C-d>"] = { "preview_scroll_down", mode = { "i", "n" } },
					["<C-u>"] = { "preview_scroll_up", mode = { "i", "n" } },
				},
			},
		},
	},
	input = { enabled = true },
	lazygit = { enabled = true },
	indent = {
		enable = true,
		animate = {
			enabled = false,
		},
	},
	dashboard = {
		enabled = true,
		sections = {
			{ section = "header" },
			{ icon = " ", title = "Recent Files", padding = 1 },
			{ section = "recent_files", cwd = true, padding = 1 },
		},
	},
})

vim.keymap.set({ "n", "v" }, "<leader>e", function()
	Snacks.explorer()
end, { noremap = true, silent = true, desc = "[E]xplorer" })

vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, { noremap = true, silent = true, desc = "[F]ind [F]iles" })

vim.keymap.set("n", "<leader>fr", function()
	Snacks.picker.recent()
end, { noremap = true, silent = true, desc = "[F]ind [R]ecent" })

vim.keymap.set("n", "<leader>fs", function()
	Snacks.picker.grep()
end, { noremap = true, silent = true, desc = "[F]ind [S]tring" })

vim.keymap.set("v", "<leader>fs", function()
	Snacks.picker.grep_word()
end, { noremap = true, silent = true, desc = "[F]ind [S]election" })

vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { noremap = true, silent = true, desc = "[F]ind [B]uffers" })

vim.keymap.set("n", "<leader>fk", function()
	Snacks.picker.keymaps()
end, { noremap = true, silent = true, desc = "[F]ind [K]eymaps" })

vim.keymap.set("n", "<leader>gs", function()
	Snacks.picker.git_status()
end, { noremap = true, silent = true, desc = "[G]it [S]tatus" })

vim.keymap.set("n", "<leader>gS", function()
	Snacks.picker.git_stash()
end, { noremap = true, silent = true, desc = "[G]it [S]tash" })

vim.keymap.set("n", "<leader>gl", function()
	Snacks.picker.git_log()
end, { noremap = true, silent = true, desc = "[G]it [L]og" })

vim.keymap.set("n", "<leader>lg", function()
	Snacks.lazygit()
end, { noremap = true, silent = true, desc = "[L]azy[G]it" })

vim.keymap.set("n", "gr", function()
	Snacks.picker.lsp_references()
end, { noremap = true, silent = true, nowait = true, desc = "[G]oto [R]eferences" })
