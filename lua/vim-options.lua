vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")

vim.g.mapleader = " "

-- keybindings
vim.keymap.set("n", "<leader>th", ":belowright split | resize 20 | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tv", ":vsplit | terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })

vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
