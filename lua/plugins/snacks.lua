return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
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
				{ section = "startup" },
			},
		},
	},
	keys = {
		-- explorer
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},

		-- find
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "[F]ind [F]iles",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.recent()
			end,
			desc = "[F]ind [R]ecent",
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.grep()
			end,
			desc = "[F]ind [S]tring",
		},
		{
			"<leader>fs",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "[F]ind [S]election",
			mode = { "v" },
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[F]ind [B]uffers",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[F]ind [B]uffers",
		},
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "[F]ind [K]eymaps",
		},

		-- git
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = "[G]it [S]tatus",
		},
		{
			"<leader>gS",
			function()
				Snacks.picker.git_stash()
			end,
			desc = "[G]it [S]tash",
		},
		{
			"<leader>gl",
			function()
				Snacks.picker.git_log()
			end,
			desc = "[G]it [L]og",
		},
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "[L]azy[G]it",
		},

		-- LSP
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "[G]oto [R]eferences",
		},
	},
}
