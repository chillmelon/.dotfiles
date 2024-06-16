require('lazy').setup({
  -- Color Scheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'tokyonight'
    end,
  },

  'preservim/nerdcommenter',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'tpope/vim-repeat',

  -- Essential
  require 'plugin.nvim-tree',

  require 'plugin.autopairs',
  require 'plugin.lualine',

  require 'plugin.lsp',
  require 'plugin.ibl',

  -- Completion
  require 'plugin.cmp',

  require 'plugin.telescope',

  -- Useful
   {
     "nvim-treesitter/nvim-treesitter",
     build = ":TSUpdate",
   },
   {
     'xiyaowong/transparent.nvim'
   },

   -- Other
   require 'plugin.tidal',
   require 'plugin.scnvim',

   'prisma/vim-prisma',
   'stevearc/conform.nvim',
   'voldikss/vim-floaterm',
   'lukas-reineke/indent-blankline.nvim',
})
