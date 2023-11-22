return { {
  -- Statusline
  -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
  "nvim-lualine/lualine.nvim",
  config = function(_)
    local lualine = require("lualine")


    local conditions = {
      buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
      end,
      hide_in_width = function()
        return vim.fn.winwidth(0) > 80
      end,
      check_git_workspace = function()
        local filepath = vim.fn.expand("%:p:h")
        local gitdir = vim.fn.finddir(".git", filepath .. ";")
        return gitdir and #gitdir > 0 and #gitdir < #filepath
      end
    }

    -- Config
    local config = {
      options = {
        -- Disable sections and component separators
        component_separators = "|",
        section_separators = "",
        disabled_filetypes = { "Lazy", "NvimTree" },
      },
    }

    -- Now don"t forget to initialize lualine
    lualine.setup(config)
  end
} }
