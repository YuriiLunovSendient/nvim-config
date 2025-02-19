return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({
			"css",
			"scss",
			"html",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
		})
	end,
}
