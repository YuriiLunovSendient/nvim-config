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
	-- React function component
	s("rsf", {
		t("function "),
		get_filename(),
		t({ "(props) {", "  return (", "    <div>" }),
		i(1),
		t({ "</div>", "  );", "}", "", "export default " }),
		get_filename(),
		t(";"),
	}),
	-- React function component with inline export
	s("rsfi", {
		t({ "export default function " }),
		get_filename(),
		t({ "(props) {", "  return (", "    <div>" }),
		i(2),
		t({
			"</div>",
			"  );",
			"}",
		}),
	}),

	-- React arrow function component
	s("rsc", {
		t({ "const " }),
		get_filename(),
		t({ " = () => {", "  return (", "    <div>" }),
		i(2),
		t({ "</div>", "  );", "};", "", "export default " }),
		get_filename(),
		t({ ";" }),
	}),

	-- React class component
	s("rcc", {
		t({ "import React, { Component } from 'react';", "", "class " }),
		get_filename(),
		t({ " extends Component {", "  render() {", "    return (", "      <div>" }),
		i(2),
		t({ "</div>", "    );", "  }", "}", "", "export default " }),
		get_filename(),
		t({ ";" }),
	}),

	-- React hook function
	s("rhf", {
		t({ "function " }),
		get_filename(),
		t({ "() {", "  return {};", "}", "", "export default " }),
		get_filename(),
		t({ ";" }),
	}),

	-- React hook function with inline export
	s("rhfi", {
		t({ "export default function " }),
		get_filename(),
		t({ "() {", "  return {};", "}" }),
	}),

	-- useTranslation hook
	s("ust", {
		t("const { t } = useTranslation();"),
	}),

	-- Next.js stateless component
	s("nsc", {
		t({ "function " }),
		get_filename(),
		t({ "(props) {", "  return (" }),
		i(2),
		t({ ");", "}", "", "export default " }),
		get_filename(),
		t({ ";" }),
	}),
}

local languages = { "javascriptreact", "typescriptreact" }

for _, lang in ipairs(languages) do
	ls.add_snippets(lang, snippets)
end
