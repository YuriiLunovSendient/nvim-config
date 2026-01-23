local vscode = require("vscode")

vim.keymap.set({ "n", "v" }, "\\", '"_', { noremap = true, silent = true, desc = "Black hole register" })

vim.keymap.set({ "n", "v" }, "<leader>w", function()
	vscode.action("workbench.action.files.save")
end, { noremap = true, silent = true, desc = "[W]rite" })

vim.keymap.set({ "n", "v" }, "<leader>ff", function()
	vscode.action("workbench.action.quickOpen")
end, { noremap = true, silent = true, desc = "[F]ind [F]iles" })

vim.keymap.set({ "n", "v" }, "<leader>fr", function()
	vscode.action("workbench.action.showAllEditorsByMostRecentlyUsed")
end, { noremap = true, silent = true, desc = "[F]ind [R]ecent" })

vim.keymap.set("n", "<leader>fs", function()
	vscode.action("workbench.action.findInFiles")
end, { noremap = true, silent = true, desc = "[F]ind [S]tring" })

vim.keymap.set("v", "<leader>fw", function()
	vscode.action("workbench.action.findInFiles")
end, { noremap = true, silent = true, desc = "[F]ind [W]ord" })

vim.keymap.set({ "n", "v" }, "<leader>fb", function()
	vscode.action("workbench.action.showAllEditors")
end, { noremap = true, silent = true, desc = "[F]ind [B]uffers" })

vim.keymap.set("n", "<leader>gd", function()
	vscode.action("editor.action.revealDefinition")
end, { noremap = true, silent = true, desc = "[G]oto [D]efinition" })

vim.keymap.set("n", "<leader>gr", function()
	vscode.action("editor.action.goToReferences")
end, { noremap = true, silent = true, desc = "[G]oto [D]efinition" })

vim.keymap.set("n", "<leader>ca", function()
	vscode.action("editor.action.codeAction")
end, { noremap = true, silent = true, desc = "[C]ode [A]ctions" })

vim.keymap.set("n", "<leader>rn", function()
	vscode.action("editor.action.rename")
end, { noremap = true, silent = true, desc = "[R]e[n]ame" })

vim.keymap.set("n", "K", function()
	vscode.action("editor.action.showHover")
end, { noremap = true, silent = true, desc = "Show Hover" })

vim.keymap.set("n", "za", function()
	vscode.action("editor.toggleFold")
end, { noremap = true, silent = true, desc = "Toggle Fold" })

-- Git Keybindings
vim.keymap.set("n", "<leader>gb", function()
	vscode.action("git.checkout")
end, { noremap = true, silent = true, desc = "[G]it [B]ranch" })

vim.keymap.set("n", "<leader>gnb", function()
	vscode.action("git.branch")
end, { noremap = true, silent = true, desc = "[G]it [N]ew [B]ranch" })

vim.keymap.set("n", "<leader>gM", function()
	vscode.action("git.merge")
end, { noremap = true, silent = true, desc = "[G]it [M]erge" })

vim.keymap.set("n", "<leader>gR", function()
	vscode.action("git.rebase")
end, { noremap = true, silent = true, desc = "[G]it [R]ebase" })

vim.keymap.set("n", "<leader>gp", function()
	vscode.action("git.pull")
end, { noremap = true, silent = true, desc = "[G]it [P]ull" })

vim.keymap.set("n", "<leader>gP", function()
	vscode.action("git.push")
end, { noremap = true, silent = true, desc = "[G]it [P]ush" })
