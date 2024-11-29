return{
	{
	  -- NERDTree
	  'scrooloose/nerdtree',
	  
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
	  -- 'sheerun/vim-polyglot',
	  
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
	  },
	}
}
