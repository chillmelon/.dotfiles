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
  modules = {},
  auto_install = true,
  sync_install = false,
  ignore_install = {},
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
