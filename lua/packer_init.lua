-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({
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
  ---------  THEMES  ---------
  --use 'folke/tokyonight.nvim'
  --use 'embark-theme/vim'
  --use 'AlexvZyl/nordic.nvim'
  --use "lunarvim/horizon.nvim"
  --use 'bluz71/vim-moonfly-colors'
  --use 'bluz71/vim-nightfly-guicolors'
  --use 'rebelot/kanagawa.nvim'
  --use 'sainnhe/everforest'
  --use 'frenzyexists/aquarium-vim'
  use 'catppuccin/nvim'
  --use 'embark-theme/vim'
  --use 'AlexvZyl/nordic.nvim'
  --use 'cseelus/vim-colors-lucid'
  --use 'aswathkk/DarkScene.vim'
  --use 'crispybaccoon/dawn.vim'
  --use 'Domeee/mosel.nvim'
  --use 'comfysage/evergarden'
  --use 'sts10/vim-pink-moon'
  use { "RedsXDD/neopywal.nvim", as = "neopywal" }


  use { "goolord/alpha-nvim", config = function() require("plugins.utils.alpha").setup() end, } -- Dashboard
  use 'preservim/nerdcommenter'                 -- Commenter
  --use 'ryanoasis/vim-devicons' -- Vim devicons
  --use 'kyazdani42/nvim-web-devicons'
  use {'ms-jpq/chadtree', branch = 'chad', run = 'python3 -m chadtree deps'} -- chadtree Directory
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} -- customize a buffer section

  -- Lualine is a modify below line
  use {
   'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'vim-test/vim-test'
  use 'honza/vim-snippets' -- snippets for differents languages

   --LSP config
  use 'neovim/nvim-lspconfig'
  -- Elixir
  use {"elixir-tools/elixir-tools.nvim", tag = "stable", requires = { "nvim-lua/plenary.nvim" }}
  use 'elixir-editors/vim-elixir'
  -- Rust
  use 'simrat39/rust-tools.nvim'

  -- JS
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- Completion
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
   -- Completion framework:
  use 'hrsh7th/nvim-cmp' -- autocompletion plugin like a COC
   -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp' -- the integration of nvim-cmp with neovim's LSP
   -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'SirVer/ultisnips'
  use'quangnguyen30192/cmp-nvim-ultisnips'
  -- Formater
  use 'dense-analysis/ale'

  -- Snips
  -- For vsnip users.
  --use 'hrsh7th/cmp-vsnip'
  --use 'hrsh7th/vim-vsnip'

  -- For snippy users.
  --use 'dcampos/nvim-snippy'
  --use 'dcampos/cmp-snippy'

  -- For luasnip users.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'rafamadriz/friendly-snippets' }

  -- For ultisnips users.
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'


  -- Search and replace in project
  use 'nvim-lua/plenary.nvim'
  use 'nvim-pack/nvim-spectre'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Utility
  use 'tpope/vim-fugitive' -- Git plugin on vim
  use 'junegunn/gv.vim' -- A git commit browser.
  use 'mhinz/vim-signify'  -- show differences with style
  use 'mbbill/undotree' -- visualizes undo history and makes it easier to browse and swtich between
  use 'nvim-treesitter/nvim-treesitter'
  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  -- gitblame on lualine
  use 'f-person/git-blame.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
