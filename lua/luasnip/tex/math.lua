return {
	-- Greek letters
	s({ trig = ";a",},
	{t("\\alpha"),}
	),
	-- Equation environment 
	s({trig="eq", dscr="A LaTeX equation environment"},
	{
		t({ 
			"\\begin{equation}",
			"    "
		}),
		i(1),
		t({
			"",
			"\\end{equation}"
		}),
	}
	),
}
