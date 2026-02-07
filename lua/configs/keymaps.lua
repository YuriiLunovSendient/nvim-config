-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Documentation" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
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
