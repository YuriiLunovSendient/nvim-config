local vscode = require("vscode")

-- Disable Cursor Tab in normal mode
vim.api.nvim_create_autocmd("InsertLeave", {
	callback = function()
		vscode.action("editor.cpp.disableenabled")
	end,
})
vim.api.nvim_create_autocmd("InsertEnter", {
	callback = function()
		vscode.action("editor.action.enableCppGlobally")
	end,
})
