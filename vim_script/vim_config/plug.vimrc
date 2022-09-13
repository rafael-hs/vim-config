call plug#begin("~/.config/nvim/plugged")
"Airline plugins serve para customização da statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'

"Themes
"Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'bluz71/vim-moonfly-colors'
Plug 'sainnhe/everforest'
"Plug 'shaunsingh/moonlight.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
"Plug 'ghifarit53/tokyonight-vim'
"Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
"Plug 'joshdick/onedark.vim'
"Plug 'pacokwon/onedarkpaco.vim'
"Plug 'marko-cerovac/material.nvim'
"Plug 'gugsrs/vim-moonlight2'
Plug 'AhmedAbdulrahman/vim-aylin'

"Dashboard
"Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'

"Color parentheses
Plug 'luochen1990/rainbow'

"Plugins tree
Plug 'preservim/nerdtree' "selecão de diretório a direita
Plug 'preservim/nerdcommenter' "commenter
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "cores para o nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin' "suporte para o git no nerdtree
Plug 'ryanoasis/vim-devicons' "icones para o nerdtree

"Plug tagbar
Plug 'preservim/tagbar'


"Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' "command-line fuzzy finder | serve para fazer uma busca por arquivos no diretório

"Search and replace in project
plug 'nvim-pack/nvim-spectre'
plug 'nvim-lua/plenary.nvim'

"NVIM Web DevIcons
Plug 'kyazdani42/nvim-web-devicons'

"Formatting | highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'

"Test
Plug 'vim-test/vim-test'

"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Utility
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

"CLOJURE
"Plug 'tpope/vim-fireplace'
"Plug 'clojure-vim/async-clj-omni' "autocomplete
"Plug 'venantius/vim-cljfmt' "fixer
"Plug 'Olical/conjure'

"ELIXIR
Plug 'elixir-editors/vim-elixir'
"Plug 'gasparch/vim-elixir-fold'
call plug#end()
