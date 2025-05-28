-- lugin Management (Using lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- ## Key Mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ### Modify default shortcuts
vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true, desc = "Search next and center" })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true, desc = "Search previous and center" })

-- ### Aliases for common commands
vim.keymap.set("n", "<leader>s", "<Cmd>write<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", "<Cmd>quit<CR>", { noremap = true, silent = true })

-- ### Navigation shortcuts
vim.keymap.set('n', '<leader>ww', '<C-w>w', { desc = 'Cycle between open windows' })
vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>ws', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Go to right window' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Go to below window' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Go to above window' })
vim.keymap.set('n', '<leader>wq', '<C-w>q', { desc = 'Close current window' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Only keep current window' })
vim.keymap.set('n', '<leader>w=', '<C-w>=', { desc = 'Make window sizes equal' })
vim.keymap.set('n', '<leader>w_', '<C-w>_', { desc = 'Maximize current window height' })
vim.keymap.set('n', '<leader>w|', '<C-w>|', { desc = 'Maximize current window width' })

-- ### Plugins shortcuts
vim.keymap.set("n", "<leader>v", "<plug>(vimtex-view)", { noremap = true, silent = true })

-- ### Plugin Configuration
require("lazy").setup("plugins")

