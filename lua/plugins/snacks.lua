return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		picker = { enabled = true },
		lazygit = { enabled = true },
	},
	keys = {
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
			mode = { "n", "x" },
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
