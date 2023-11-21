local plugins = {
  -- Color Scheme
  'joshdick/onedark.vim',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
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

  -- Completion
  'hrsh7th/nvim-cmp',
  --'hrsh7th/vim-vsnip',
  --'hrsh7th/cmp-vsnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp"
  },
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",

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

  -- Other
  'grddavies/tidal.nvim',
  'prisma/vim-prisma',
}

local opt = {}

require("lazy").setup(plugins, opt)
