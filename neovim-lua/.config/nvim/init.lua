vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Color Scheme
  'joshdick/onedark.vim',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Essential
  --'ryanoasis/vim-devicons',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  --'scrooloose/nerdtree',
  'preservim/nerdcommenter',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'windwp/nvim-autopairs',

  -- LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'folke/neodev.nvim',
  --'onsails/lspkind.nvim',

  -- Completion
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },

  -- Useful
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- Fancy
  'grddavies/tidal.nvim',
})

require('basic')
require('keymaps')
--require('nerdtree')
require('nvim-tree').setup()
require('telescope-config')
require('neodev').setup()
require("mason").setup()
require('mason-lspconfig').setup {
  ensure_installed = {
    'lua_ls',
    'eslint',
    'tsserver',
    'intelephense',
    'pyright',
    'tailwindcss',
  },
}
require('lsp')
require('cmp-config')
require("nvim-autopairs").setup()

require('tidal').setup {}
require('openframeworks')
