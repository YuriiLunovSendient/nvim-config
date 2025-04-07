return {
	"numToStr/Comment.nvim",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local comment = require("Comment")
		local contextComment = require("ts_context_commentstring")

		contextComment.setup({
			enable_autocmd = false,
		})

		comment.setup({
			opts = {
				toggler = {
					line = "gcc",
					block = "gbc",
				},
			},
			lazy = false,
			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
		})
	end,
}
