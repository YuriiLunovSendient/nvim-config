return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"davidmh/cspell.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		-- local cspell = require("cspell")
		local eslint_diagnostics = require("none-ls.diagnostics.eslint_d").with({
			condition = function(utils)
				return utils.root_has_file({ ".eslintrc.js", ".eslintrc.json", ".eslintrc.cjs", "eslint.config.mjs" })
			end,
		})
		local eslint_code_actions = require("none-ls.code_actions.eslint_d")

		-- local cspell_config = {
		-- 	on_add_to_json = function(payload)
		-- 		os.execute(
		-- 			string.format(
		-- 				"jq -S '.words |= sort' %s | prettier --parser json > %s.tmp && mv %s.tmp %s",
		-- 				payload.cspell_config_path,
		-- 				payload.cspell_config_path,
		-- 				payload.cspell_config_path,
		-- 				payload.cspell_config_path
		-- 			)
		-- 		)
		-- 	end,
		-- }

		null_ls.setup({
			sources = {
				-- cspell.diagnostics.with({
				-- 	config = cspell_config,
				-- 	diagnostics_postprocess = function(diagnostic)
				-- 		diagnostic.severity = vim.diagnostic.severity.HINT
				-- 	end,
				-- }),
				-- cspell.code_actions.with({
				-- 	config = cspell_config,
				-- }),
				eslint_diagnostics,
				eslint_code_actions,
			},
		})
	end,
}
