return {
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
}
