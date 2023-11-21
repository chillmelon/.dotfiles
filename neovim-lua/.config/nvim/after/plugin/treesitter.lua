local ts = require('nvim-treesitter.configs')

ts.setup({
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'php',
    'javascript',
    'typescript',
    'python',
    'yaml',
    'json',
    'tsx',
    'css',
    'lua',
  },
})
