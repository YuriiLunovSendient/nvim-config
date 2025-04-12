return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"cssls",
					"tailwindcss",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local servers = {
				lua_ls = {},
				ts_ls = {},
				html = {},
				cssls = {},
				tailwindcss = {},
				pyright = {
					filetypes = { "python" },
				},
			}

			for server, config in pairs(servers) do
				config.capabilities = capabilities
				lspconfig[server].setup(config)
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go Definition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go References" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set("n", "<leader>oi", function()
				vim.lsp.buf.code_action({
					context = { only = { "source.organizeImports" } },
					apply = true,
				})
			end, { desc = "Organize Imports" })
		end,
	},
}
