-- General Settings
-- Syntax Highlighting
vim.cmd('syntax on')

-- Encoding Settings
vim.opt.fileencodings = 'utf-8,ucs-bom,gbl8030,gbk,gb2312,cp936'
vim.opt.encoding = 'utf-8'

-- Line Number
vim.opt.number = true
vim.opt.relativenumber = true

-- Indent Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.listchars = { tab = '>·' }
vim.opt.list = true

-- Filetype Handling
vim.cmd('filetype on')
vim.cmd('filetype indent on')
vim.cmd('filetype plugin on')

-- Brackets and UI
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.showcmd = true

-- Font (Note: This is typically set in your terminal or GUI settings)
vim.opt.guifont = 'Firacode'

-- Color Settings
vim.opt.termguicolors = true

-- Completion Settings
vim.opt.completeopt:remove('preview')


-- Import Plugins
require("config.lazy")

-- LuaSnip
-- Yes, we're just executing a bunch of Vimscript, but this is the officially
-- endorsed method; see https://github.com/L3MON4D3/LuaSnip#keymaps
vim.cmd[[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})
require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  store_selection_keys = "<Tab>",
})
