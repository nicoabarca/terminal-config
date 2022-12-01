-- local status, _ = pcall(vim.cmd, "colorscheme nightfox") --uncomment for nightfox
local status, _ = pcall(vim.cmd, "colorscheme gruvbox") -- uncomment for gruvbox
--local status, _ = pcall(vim.cmd, "colorscheme onedark") -- uncomment for onedark
-- local status, _ = pcall(vim.cmd, "colorscheme material")
if not status then
	print("Colorscheme not found!")
	return
end

-- vim.g.material_style = "darker"
-- require("material").setup({})
-- vim.cmd("colorscheme material")

require("gruvbox").setup({
	bold = false,
	contrast = "hard",
})

vim.cmd("colorscheme gruvbox")
