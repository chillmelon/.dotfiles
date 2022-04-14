require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  ensure_installed = {
    "javascript",
    "css",
    "html",
    "json",
    "yaml",
    "lua",
    "python"
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      }
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gd",
        list_definitions = "gD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  }
}
