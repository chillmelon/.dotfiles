return {{
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
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    }
  },
  {
    'folke/lazydev.nvim',
    config = function ()
      require('lazydev').setup()
    end,
  },

  -- Completion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
      },
    },
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
  },
  {
    'folke/zen-mode.nvim',
    opts = {},
  },
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('oil').setup({
        default_file_explorer = false,
      })
    end,
  },

  -- Other
  'grddavies/tidal.nvim',
  'prisma/vim-prisma',
  'stevearc/conform.nvim',
  'voldikss/vim-floaterm',
  'lukas-reineke/indent-blankline.nvim',
}}
