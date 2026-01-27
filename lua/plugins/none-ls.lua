return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		local eslint_config_files = {
			".eslintrc.js",
			".eslintrc.json",
			".eslintrc.cjs",
			"eslint.config.mjs",
			"eslint.config.js",
		}

		local eslint_condition = function(utils)
			return utils.root_has_file(eslint_config_files)
		end

		local eslint_diagnostics = require("none-ls.diagnostics.eslint_d").with({
			condition = eslint_condition,
		})
		local eslint_code_actions = require("none-ls.code_actions.eslint_d").with({
			condition = eslint_condition,
		})

		null_ls.setup({
			sources = {
				eslint_diagnostics,
				eslint_code_actions,
			},
		})
	end,
}
