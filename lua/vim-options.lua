vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.colorcolumn = "120"

-- Treesitter folding setup
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Diagnostics configuration
vim.diagnostic.config({
	severity_sort = true,
	float = { border = "rounded", source = "if_many" },
	underline = { severity = vim.diagnostic.severity.ERROR },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
	},
	virtual_text = {
		source = "if_many",
		spacing = 2,
		format = function(diagnostic)
			local diagnostic_message = {
				[vim.diagnostic.severity.ERROR] = diagnostic.message,
				[vim.diagnostic.severity.WARN] = diagnostic.message,
				[vim.diagnostic.severity.INFO] = diagnostic.message,
				[vim.diagnostic.severity.HINT] = diagnostic.message,
			}
			return diagnostic_message[diagnostic.severity]
		end,
	},
})

------ Keybindings -------
-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
-- -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "[G]oto [R]eferences" }) -- LSP References from telescope is used
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "[G]oto [I]mplementation" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })

-- Panels
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Move to right window" })

-- Editor
vim.keymap.set({ "n", "v" }, "\\", '"_', { noremap = true, silent = true, desc = "Black hole register" })

vim.keymap.set({ "n", "v" }, "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "[W]rite" })
vim.keymap.set({ "n", "v" }, "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "[Q]uit" })

vim.keymap.set(
	{ "n", "v" },
	"<leader>sv",
	":vsplit<CR>",
	{ noremap = true, silent = true, desc = "[S]plit [V]ertically" }
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>sh",
	":split<CR>",
	{ noremap = true, silent = true, desc = "[S]plit [H]orizontally" }
)

vim.keymap.set({ "n", "v" }, "<leader>cw", ":close<CR>", { noremap = true, silent = true, desc = "[C]lose [W]indow" })
vim.keymap.set(
	{ "n", "v" },
	"<leader>cq",
	":cclose<CR>",
	{ noremap = true, silent = true, desc = "[C]lose [Q]uickfixes" }
)

-- Buffer
vim.keymap.set({ "n", "v" }, "<leader>bd", ":bd<CR>", { noremap = true, silent = true, desc = "[B]uffer [D]elete" })
vim.keymap.set({ "n", "v" }, "<leader>bo", function()
	for _, n in ipairs(vim.api.nvim_list_bufs()) do
		if n ~= vim.api.nvim_get_current_buf() then
			vim.api.nvim_buf_delete(n, {})
		end
	end
end, { noremap = true, silent = true, desc = "[B]uffer delete [O]ther" })
vim.keymap.set("n", "<leader>br", ":bufdo e!<CR>", { noremap = true, silent = true, desc = "[B]uffer [R]efresh" })
