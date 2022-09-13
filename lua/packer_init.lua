-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  local packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- Add you plugins here:
  --
  ---THEMES------THEMES------THEMES---
  use 'sainnhe/everforest'
  use 'folke/tokyonight.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- NERDTree Area
  use 'preservim/nerdtree'			-- nerdtree - file system explorer
  use 'ryanoasis/vim-devicons' 			-- Vim devicons - Icons to nerdtree
  use 'preservim/nerdcommenter'                 -- Commenter
  use 'tiagofumo/vim-nerdtree-syntax-highlight' -- Colors to NERDTree
  use 'Xuyuanp/nerdtree-git-plugin' 		-- Support to GIT into NERDTree

  -- Lualine is a modify below line
  use {
   'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  --use 'vim-airline/vim-airline'
  --use 'vim-airline/vim-airline-themes'

  -- customize a buffer section
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Searching section
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim' --command-line fuzzy finder | serve para fazer uma busca por arquivos no diretório

  -- Formatting || highlight || LSP
  use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
  use 'dense-analysis/ale'
  use 'sheerun/vim-polyglot'

  -- Color parentheses
  use 'luochen1990/rainbow'

  -- Tests
  use 'vim-test/vim-test'

  -- Elixir
  --use 'elixir-editors/vim-elixir'
  --use 'slashmili/alchemist.vim'

  -- Search and replace in project
  use 'nvim-pack/nvim-spectre'
  use 'nvim-lua/plenary.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Utility
  use 'tpope/vim-surround' -- delete, change and add such surroundings (parenthesis, breckets, quotes, tags)
  use 'tpope/vim-fugitive' -- Git plugin on vim
  use 'mbbill/undotree' -- visualizes undo history and makes it easier to browse and swtich between

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)