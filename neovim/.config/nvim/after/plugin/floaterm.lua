vim.api.nvim_set_keymap('n', '<leader>ft', ":FloatermNew <CR>", { noremap = true })
vim.api.nvim_set_keymap('n', "t", ":FloatermToggle myfloat<CR>", { noremap = true })
vim.api.nvim_set_keymap('t', "<Esc>", "<C-\\><C-n>:q<CR>", { noremap = true })
