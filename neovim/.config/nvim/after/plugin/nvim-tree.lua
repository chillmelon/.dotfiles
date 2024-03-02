local nv = require('nvim-tree')

nv.setup({
  update_cwd = true,
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  diagnostics = {
    enable = true,
  },
})
