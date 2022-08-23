vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.optbackup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.scrollogg = 10
vim.opt.shell = 'zsh'
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto indent
vim.opt.si = true --Smart indent
vim.opt.wrap = false --No wrap lines
vim.opt.clipboard = 'unnamedplus'

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
