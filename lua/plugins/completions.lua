return {
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			"hrsh7th/cmp-buffer",--autocomplete on the buffer
			"hrsh7th/cmp-path",--autocomplete path variables
			"hrsh7th/cmp-cmdline",
			"saadparwaiz1/cmp_luasnip",--autocomplete from luasnip
			"L3MON4D3/LuaSnip",
			"onsails/lspkind.nvim",
		},

		config = function()
			local luasnip = require("luasnip")
			local cmp = require("cmp")
			local lspkind = require("lspkind")
			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				window = {
					completion = {
						border = 'rounded',
						scrollbar = false,
					},
					documentation = {
						border = 'rounded',
						scrollbar = false,
					},
				},
				mapping = {
					['<CR>'] = cmp.mapping(function(fallback)
						if cmp.visible() then
							if luasnip.expandable() then
								luasnip.expand()
							else
								cmp.confirm({
									select = true,
								})
							end
						else
							fallback()
						end
					end),

					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							if #cmp.get_entries() == 1 then
								cmp.confirm({select =true})
							else
								cmp.select_next_item()
							end
						elseif luasnip.locally_jumpable(1) then
							luasnip.jump(1)
						else
							fallback()
						end
					end, { "i", "s" }),

					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),

					['<C-g>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
					['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
					['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
					['<C-y>'] = cmp.config.disable,
					['<C-e>'] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
				},
				formatting = {
					format = lspkind.cmp_format({
						mode = 'symbol_text',
						maxwidth = 22,
						ellipsis_char = '...',
						symbol_map = { Copilot = "" },
						menu = ({
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							luasnip = "[LuaSnip]",
							nvim_lua = "[Lua]",
							latex_symbols = "[Latex]",
						})
					})
				},
				sources = cmp.config.sources({
					{ name = 'copilot' },
					{ name = 'luasnip' },
					{ name = 'buffer'},
					{ name = 'path' }
				}),
			})
			cmp.setup.cmdline({ '/', '?' }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' }
				}
			})
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = 'path', option = {trailing_slash = true}, }
				}, {
					{ name = 'cmdline' , option = {treat_trailing_slash =false}}
				}),
				matching = { disallow_symbol_nonprefix_matching = false }
			})
			cmp.setup.filetype("tex", {
				sources = {
					{ name = 'copilot' },
					{ name = 'vimtex'},
					{ name = 'luasnip' },
					{ name = 'buffer'},
				},
			})
			cmp.setup.filetype("python", {
				sources = {
					{ name = 'copilot' },
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
					{ name = 'buffer' },
					{ name = 'path' }
				}
			}
			)
		end
	}
}
