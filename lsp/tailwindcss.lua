return {
	init_options = { hostInfo = "neovim" },
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
		"html",
	},
	root_markers = { "package.json", ".git" },
}
