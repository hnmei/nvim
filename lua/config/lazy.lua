-- Plugin Management (Using lazy.nvim)
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

-- Key Mappings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

	-- Modify default shortcuts
vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true, desc = "Search next and center" })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true, desc = "Search previous and center" })

	-- Aliases for common commands
vim.keymap.set("n", "<leader>s", "<Cmd>write<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", "<Cmd>quit<CR>", { noremap = true, silent = true })

	-- Plugins shortcuts
vim.keymap.set("n", "<leader>v", "<plug>(vimtex-view)", { noremap = true, silent = true })

-- Plugin Configuration
require("lazy").setup("plugins")

