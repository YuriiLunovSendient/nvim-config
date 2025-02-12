vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")

vim.g.mapleader = " "
vim.api.nvim_set_option("clipboard", "unnamedplus")

-- keybindings
vim.keymap.set("n", "<leader>th", ":belowright split | resize 20 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set({ "v", "n" }, "<leader>p", '"+p', { noremap = true, silent = true })

vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<C-S-v>", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-h>", ":split<CR>", { noremap = true, silent = true })
