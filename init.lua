-- General Settings
require("options")

-- Import Plugins
require("config.lazy")

-- Import LuaSnips
-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/luasnip/"})
