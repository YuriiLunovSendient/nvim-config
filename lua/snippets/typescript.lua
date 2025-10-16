local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function get_filename()
	return f(function()
		return vim.fn.expand("%:t:r")
	end)
end

local snippets = {
	-- Console log
	s("clg", {
		t("console.log("),
		i(1),
		t(")"),
	}),

	-- Interface default inline
	s("intdi", {
		t({ "export default interface " }),
		get_filename(),
		t({ "{", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
}

local languages = {
	"typescript",
	"typescriptreact",
}

for _, lang in ipairs(languages) do
	ls.add_snippets(lang, snippets)
end
