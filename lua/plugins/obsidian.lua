local sysname = vim.loop.os_uname().sysname
if sysname == "Darwin" then
	vault_path = "/Users/hnmei/OneDrive/TwenTwo"
elseif sysname == "Linux" then
	vault_path = "/mnt/c/Users/hnmei/OneDrive/TwenTwo"
end

return {
	"epwalsh/obsidian.nvim",
	version = "*",  -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "personal",
				path = vault_path,
			},
		},
		ui = {
			enable = false
		}
	},
}
