require('basic')
require('telescope-config')
require('coc-config')
require('keymaps')
require('netrw')
require('nerdtree')
require('treesitter')
require('lualine').setup {
  options = {
    theme = 'onedark'
  }
}

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'joshdick/onedark.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'preservim/nerdcommenter'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'jiangmiao/auto-pairs'
  use 'ryanoasis/vim-devicons'
  use {
    'scrooloose/nerdtree',
    on = 'NERDTreeToggle'
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
end)

