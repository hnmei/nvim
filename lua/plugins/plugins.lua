return{
	{
	  -- NERDTree
	  'scrooloose/nerdtree',
	  
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
