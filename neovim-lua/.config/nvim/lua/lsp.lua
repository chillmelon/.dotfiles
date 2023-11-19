require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'tsserver', 'pyright', 'lua_ls' }
})

vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

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

lspconfig.pyright.setup {
  on_attach = on_attach,
}
lspconfig.tsserver.setup {
  on_attach = on_attach,
}
lspconfig.lua_ls.setup {
  on_attach = on_attach,
}
