local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/lua-dev.nvim'

  -- cmp plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Formatting
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- Icons for file extensions.
  use 'ryanoasis/vim-devicons'
  -- Better Syntax Support
  use 'sheerun/vim-polyglot'
  -- Auto pairs for '(' '[' '{'
  use 'jiangmiao/auto-pairs'
  -- Sudo inside files
  use 'lambdalisue/suda.vim'
  -- Commentary
  use 'numToStr/Comment.nvim'

  -- Indent lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- UndoTree
  use 'mbbill/undotree'

  -- Themes
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  use 'arzg/vim-colors-xcode'

  -- If you want to have icons in your statusline
  use 'kyazdani42/nvim-web-devicons'

  -- Project side menu
  use 'kyazdani42/nvim-tree.lua'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Homepage
  use 'goolord/alpha-nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Floaterm
  use 'akinsho/toggleterm.nvim'

  -- Statusbar
  use 'nvim-lualine/lualine.nvim'

  use 'folke/which-key.nvim'
end)
