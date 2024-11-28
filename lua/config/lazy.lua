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

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Plugin Configuration
require("lazy").setup({
  -- NERDTree
  'scrooloose/nerdtree',
  
  -- Auto Pairs
  'jiangmiao/auto-pairs',
  
  -- Everforest Theme
  {
    'sainnhe/everforest',
    config = function()
      -- Everforest Theme Settings
      vim.g.everforest_better_performance = 1
      vim.g.everforest_background = 'hard'
      vim.opt.background = 'dark'
      vim.cmd('colorscheme everforest')
    end
  },
  
  -- Syntax Highlighting
  'sheerun/vim-polyglot',
  
  -- Airline
  {
    'vim-airline/vim-airline',
    dependencies = {'vim-airline/vim-airline-themes'},
    config = function()
      -- Airline Settings
      vim.g.airline_theme = 'everforest'
      vim.g.airline_powerline_fonts = 1
      vim.g['airline#extensions#tabline#enabled'] = 1
    end
  },
  
  -- LuaSnip
  {
    'L3MON4D3/LuaSnip', 
    version = 'v2.*',
    build = 'make install_jsregexp'
  }
})

