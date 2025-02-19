return {
	{
		"lervag/vimtex",
		lazy = false,     -- we don't want to lazy load VimTeX
		-- tag = "v2.15", -- uncomment to pin to a specific release
		init = function()
			-- VimTeX configuration goes here, e.g.
			local sysname = vim.loop.os_uname().sysname
			if sysname == "Darwin" then
				vim.g.vimtex_view_method = "skim"
			elseif sysname == "Linux" and os.getenv("WSL_DISTRO_NAME") then
				vim.g.vimtex_view_method = "zathura"
			end

			vim.g.vimtex_complete_bib = {
				simple = 1,
				menu = 1,
			}
			vim.g.vimtex_bibtex = {
				sources = { "bib", "aux" }
			}
			vim.g.vimtex_syntax_bib_enabled = 1
			-- disable quickfix for warning
			vim.g.vimtex_quickfix_open_on_warning = 0
		end
	},
	{
		"micangl/cmp-vimtex",
		ft = "tex",
		--config = function()
		--	require('cmp_vimtex').setup({})
		--end,
	}
}
