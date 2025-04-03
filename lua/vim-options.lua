vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
	virtual_text = true, -- shows the inline text
	signs = true,
	underline = true,
	update_in_insert = false,
})

-- keybindings
vim.keymap.set("n", "<leader>th", ":belowright split | resize 20 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<leader>bd", ":bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
vim.keymap.set({ "n", "v" }, "<leader>bo", function()
	for _, n in ipairs(vim.api.nvim_list_bufs()) do
		if n ~= vim.api.nvim_get_current_buf() then
			vim.api.nvim_buf_delete(n, {})
		end
	end
end, { noremap = true, silent = true, desc = "Close other buffers" })
