-- Use the vim.cmd function to execute Ex commands
vim.cmd([[
    let &makeprg = 'if [ -f Makefile ]; then make Release && make RunRelease; else make Release -C .. && make RunRelease -C ..; fi'
]])

-- Define a Lua function to set the 'makeprg' option
local function set_makeprg()
    vim.bo.makeprg = 'if [ -f Makefile ]; then make Release && make RunRelease; else make Release -C .. && make RunRelease -C ..; fi'
end

-- Set the 'makeprg' option on BufRead and BufNewFile events for *.cpp files
vim.cmd([[
    augroup cpp_makeprg
        autocmd!
        autocmd BufRead,BufNewFile *.cpp lua set_makeprg()
    augroup END
]])

