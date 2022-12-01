-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- essential plugins
	use({ "wbthomason/packer.nvim" }) -- packer
	use({ "nvim-lua/plenary.nvim" }) -- lua functions that many plugins use
	use({ "christoomey/vim-tmux-navigator" }) -- tmux & split window navigation
	use({ "szw/vim-maximizer" }) -- maximize and restores current window
	use({ "tpope/vim-surround" }) -- surround words faster with certain characters
	use({ "numToStr/Comment.nvim" }) -- comment with gc
	use({ "nvim-tree/nvim-tree.lua" }) -- file explorer
	use({ "kyazdani42/nvim-web-devicons" }) -- icons
	use({ "nvim-lualine/lualine.nvim" }) -- statusline

	-- colorschemes
	use({ "ellisonleao/gruvbox.nvim" })
	use({ "EdenEast/nightfox.nvim" })
	use({ "navarasu/onedark.nvim" })
	use({ "marko-cerovac/material.nvim" })

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" }) --recommends words from buffer
	use({ "hrsh7th/cmp-path" }) --recommends words for paths

	-- snippets
	use({ "L3MON4D3/LuaSnip" }) -- snippet engine
	use({ "saadparwaiz1/cmp_luasnip" }) -- alow nvim-cmp to show snippets in autocompletions
	use({ "rafamadriz/friendly-snippets" }) -- collections of snippets from different languages

	-- managing & installing lsp servers, linters & formatters
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })

	-- configuring lsp server
	use({ "neovim/nvim-lspconfig" })
	use({ "hrsh7th/cmp-nvim-lsp" }) -- allow to configure lsp server that appear in autocmp
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- add enhanced ui to lsp experience
	use({ "jose-elias-alvarez/typescript.nvim" }) -- add further functionality to typescript lsp
	use({ "onsails/lspkind.nvim" }) -- add vscode-like icons to autocmp

	-- formatting & linting
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "jayp0521/mason-null-ls.nvim" })

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose ta

	-- git signs plugin
	use({ "lewis6991/gitsigns.nvim" })

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- indent line
	use({ "lukas-reineke/indent-blankline.nvim" })

	if packer_bootstrap then
		require("packer").sync()
	end
end)
