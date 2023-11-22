local cmd = vim.cmd
-- Set options (global/buffer/windows-scoped)
local opt = vim.opt
-- Global variables
local g = vim.g
local s = vim.s
local indent = 4

cmd([[
	filetype plugin indent on
]])

vim.opt.backspace = { "eol", "start", "indent" } -- allow backspacing over everything in insert mode
vim.opt.clipboard = "unnamedplus"                -- allow neovim to access the system clipboard
vim.opt.fileencoding = "utf-8"                   -- the encoding written to a file
vim.opt.encoding = "utf-8"                       -- the encoding
vim.opt.matchpairs = { "(:)", "{:}", "[:]", "<:>" }
vim.opt.syntax = "enable"

-- indention
vim.opt.autoindent = true    -- auto indentation
vim.opt.expandtab = true     -- convert tabs to spaces
vim.opt.shiftwidth = indent  -- the number of spaces inserted for each indentation
vim.opt.smartindent = true   -- make indenting smarter
vim.opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
vim.opt.tabstop = indent     -- insert 2 spaces for a tab
vim.opt.shiftround = true    -- use multiple of shiftwidth when indenting with "<" and ">"

-- search
vim.opt.hlsearch = true   -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true  -- smart case
vim.opt.wildignore = opt.wildignore + { "*/node_modules/*", "*/.git/*", "*/vendor/*" }
vim.opt.wildmenu = true   -- make tab completion for files/buffers act like bash

-- ui
vim.opt.cursorline = true -- highlight the current line
vim.opt.laststatus = 2    -- only the last window will always have a status line
vim.opt.lazyredraw = true -- don"t update the display while executing macros
vim.opt.list = true
-- You can also add "space" or "eol", but I feel it"s quite annoying
vim.opt.listchars = {
  tab = "┊ ",
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "×"
}

-- Hide cmd line
vim.opt.cmdheight = 0  -- more space in the neovim command line for displaying messages

vim.opt.mouse = "a"    -- allow the mouse to be used in neovim
vim.opt.number = true  -- set numbered lines
opt.scrolloff = 18     -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 3  -- minimal number of screen columns to keep to the left and right (horizontal) of the cursor if wrap is `false`
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.splitbelow = true  -- open new split below
opt.splitright = true  -- open new split to the right
opt.wrap = false       -- display a long line

-- backups
opt.backup = false      -- create a backup file
opt.swapfile = false    -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

-- autocomplete
opt.completeopt = { "menu", "menuone", "noselect" } -- mostly just for cmp
opt.shortmess = opt.shortmess + {
  c = true
} -- hide all the completion messages, e.g. "-- XXX completion (YYY)", "match 1 of 2", "The only match", "Pattern not found"

-- By the way, -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
opt.showmode = false

-- perfomance
-- remember N lines in history
opt.history = 100    -- keep 100 lines of history
opt.redrawtime = 1500
opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.ttimeoutlen = 10
opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors

-- persistent undo
-- Don"t forget to create folder $HOME/.local/share/nvim/undo
local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true -- enable persistent undo
opt.undodir = undodir
opt.undolevels = 1000
opt.undoreload = 10000

-- fold
opt.foldmethod = "marker"
opt.foldlevel = 99

-- Disable builtin plugins
local disabled_built_ins = { "2html_plugin", "getscript", "getscriptPlugin", "gzip", "logipat", "netrw", "netrwPlugin",
  "netrwSettings", "netrwFileHandlers", "matchit", "tar", "tarPlugin", "rrhelper",
  "spellfile_plugin", "vimball", "vimballPlugin", "zip", "zipPlugin", "tutor", "rplugin",
  "synmenu", "optwin", "compiler", "bugreport", "ftplugin" }

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end

-- Colorscheme
-- By default, use rose-pine
cmd.colorscheme("tokyonight")
