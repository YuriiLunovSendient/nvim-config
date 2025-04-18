local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local snippets = {
	-- Console log
	s("clg", {
		t("console.log("),
		i(1),
		t(")"),
	}),
}

local languages = {
	"javascript",
	"typescript",
	"javascriptreact",
	"typescriptreact",
}

for _, lang in ipairs(languages) do
	ls.add_snippets(lang, snippets)
end
