return {
	"echasnovski/mini.files",
	version = "*",
	config = function()
		local mini_files = require("mini.files")
		mini_files.setup()

		vim.keymap.set("n", "-", function()
			mini_files.open(vim.api.nvim_buf_get_name(0), false)
		end, { desc = "Open Mini Files" })
	end,
}
