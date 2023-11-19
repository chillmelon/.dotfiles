vim.g.mapleader = " "

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
  'scrooloose/nerdtree',
  'ryanoasis/vim-devicons',
  'preservim/nerdcommenter',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-repeat',

  -- LSP
  --{'neoclide/coc.nvim', branch = 'release'},
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'folke/neodev.nvim',
  'onsails/lspkind.nvim',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
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
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        sync_install = false,
        highlight = { enable = false },
        indent = { enable = true },
      })
    end,
  },

  -- Fancy
  'grddavies/tidal.nvim',
})

require('basic')
require('keymaps')
require('nerdtree')
require('telescope-config')
--require('coc-config')
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
require('lsp-config-config')
require('lspkind-config')
require('cmp-config')

require('tidal').setup {}
require('openframeworks')
