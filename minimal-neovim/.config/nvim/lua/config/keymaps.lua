vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', { noremap = true })

-- Window resize
vim.keymap.set('n', '<C-w><C-h>', ':vertical resize -3<CR>', { noremap = true })
vim.keymap.set('n', '<C-w><C-l>', ':vertical resize +3<CR>', { noremap = true })
vim.keymap.set('n', '<C-w><C-j>', ':resize -3<CR>', { noremap = true })
vim.keymap.set('n', '<C-w><C-k>', ':resize +3<CR>', { noremap = true })

-- Buffer Navigation
vim.keymap.set('n', '<C-h>', ':bprevious<CR>', { noremap = true })
vim.keymap.set('n', '<C-l>', ':bnext<CR>', { noremap = true })

-- Line Moving
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { noremap = true })
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { noremap = true })
vim.keymap.set('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true })
vim.keymap.set('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true })

-- Fugitive
vim.keymap.set('n', '<leader>gs', ':G<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gh', ':diffget //3<CR>', { noremap = true })
vim.keymap.set('n', '<leader>gf', ':diffget //2<CR>', { noremap = true })

-- Reload configuration without restart nvim
vim.keymap.set("n", "<leader>r", ":so %<CR>", {})

-- Telescope
-- <leader> is a space now
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- NvimTree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {})
vim.keymap.set('n', '<C-f>', ':NvimTreeFindFile<CR>', {})

-- Terminal
vim.keymap.set("n", "<leader>tt", ":NeotermToggle<CR>", {})
-- vim.keymap.set("n", "<leader>tx", ":NeotermExit<CR>", {})
