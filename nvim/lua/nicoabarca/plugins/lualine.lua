local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_onedark = require("lualine.themes.onedark")
local lualine_gruvbox = require("lualine.themes.gruvbox_dark")
local lualine_nightfox = require("lualine.themes.nightfox")
local lualine_solarized = require("lualine.themes.solarized")

local new_colors = {
	green = "#98971A",
	white = "#E7DDC1",
	blue = "#83A598",
}

lualine_gruvbox.insert.a.bg = new_colors.green
lualine_gruvbox.normal.a.bg = new_colors.white

lualine.setup({
	options = {
		-- theme = lualine_nightfox,
		theme = lualine_gruvbox,
		-- theme = lualine_onedark,
		-- theme = lualine_solarized,
	},
})
