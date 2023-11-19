-- require('lualine').setup {
--   options = {
--     theme = 'tokyonight'
--   }
-- }
-- require('tidal').setup{}
-- require('openframeworks')
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
  {
    'scrooloose/nerdtree',
    on = 'NERDTreeToggle',
  },
  'preservim/nerdcommenter',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-repeat',

  -- Useful
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'folke/neodev.nvim',
  'onsails/lspkind.nvim',
  'hrsh7th/nvim-cmp',

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
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
})

require('basic')
require('keymaps')
require('nerdtree')
require('telescope-config')
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
require('lspkind-config')
