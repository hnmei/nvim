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
	}
}
