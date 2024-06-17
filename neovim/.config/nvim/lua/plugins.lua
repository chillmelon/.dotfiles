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

  -- Coding
  require 'plugin.lsp',
  require 'plugin.ibl',
  require 'plugin.conform',

  -- Completion
  require 'plugin.cmp',


  -- Useful
  require 'plugin.telescope',
  require 'plugin.treesitter',
  require 'plugin.gitsigns',

  -- Live Coding
  require 'plugin.tidal',
  require 'plugin.scnvim',

  {
    'xiyaowong/transparent.nvim'
  },
})
