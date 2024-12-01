return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = { 
			theme = 'everforest', 
			sections = {
				lualine_x = { 
					"encoding", 
					{ "fileformat", symbols = { unix = "" } }, 
					"filetype" 
				},
			},
		}
	}
}
