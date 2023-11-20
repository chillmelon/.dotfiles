require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'eslint',
    'tsserver',
    'intelephense',
    'pyright',
    'tailwindcss',
  },
})

vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.diagnostic.config({
  virtual_text = false
})
-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', '<space>f', function()
    vim.lsp.buf.format { async = true }
  end, {})
end

local lspconfig = require('lspconfig')

require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
    }
  end,
  -- Next, you can provide targeted overrides for specific servers.
  ["lua_ls"] = function ()
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }
          }
        }
    }
  }
  end
})
