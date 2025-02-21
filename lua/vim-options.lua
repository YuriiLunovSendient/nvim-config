vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.g.mapleader = " "

-- keybindings
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "v", "n" }, "<leader>p", '"+p', { noremap = true, silent = true })

vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
-- normal mode
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>th", ":belowright split | resize 20 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true })
