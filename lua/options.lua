--Encoding Settings
vim.opt.fileencodings = 'utf-8,ucs-bom,gbl8030,gbk,gb2312,cp936'
vim.opt.encoding = 'utf-8'

-- Line Number
vim.opt.number = true
vim.opt.relativenumber = true

-- Search Case
vim.opt.smartcase = true

-- Indent Settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.list = true
vim.opt.listchars = { tab = ">·", trail = "·" }


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
