vim.pack.add({ "https://github.com/vim-test/vim-test", "https://github.com/preservim/vimux" })

vim.g["test#strategy"] = "vimux"

-- Vitest: match only *.unit.test.ts(x) or *.integration.test.ts(x)
vim.g["test#typescript#vitest#file_pattern"] = [[\v\.(unit|integration)\.test\.(ts|tsx)$]]
vim.g["test#javascript#vitest#file_pattern"] = [[\v\.(unit|integration)\.test\.(ts|tsx)$]]

-- Cypress: match only *.cy.ts(x)
vim.g["test#javascript#cypress#file_pattern"] = [[\v\.cy\.(ts|tsx|js|jsx)$]]
vim.g["test#typescript#cypress#file_pattern"] = [[\v\.cy\.(ts|tsx)$]]

vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
vim.keymap.set("n", "<leader>tf", ":TestFile<CR>")
vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>")
