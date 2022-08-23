local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "ellisonleao/gruvbox.nvim" 
  use 'hoob3rt/lualine.nvim' --Statusline
end)
  
