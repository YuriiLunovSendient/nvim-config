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
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"eslint_d",
					"prettier",
					"stylua",
					"cspell",
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
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]o [D]efinition" })
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "[G]o [R]eferences" })
			vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "[G]o [I]mplementation" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
			vim.keymap.set("n", "<leader>oi", function()
				vim.lsp.buf.code_action({
					context = { only = { "source.organizeImports" } },
					apply = true,
				})
			end, { desc = "[O]rganize [I]mports" })
		end,
	},
}
