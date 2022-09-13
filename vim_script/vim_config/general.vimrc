"Mouse setting
set mouse=a

" Syntax
syntax enable " enable syntax highglighting
syntax on " turn on syntax highlighting
set autoindent "indent the text
filetype plugin indent on

" Keymaps
map q :bdelete<CR>
map <C-q> :quit!<CR>
map <C-s> :w<CR>

" Tab switching
map tt :bnext<CR>
map Tt :bprevious<CR>
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
" Git
map GD :Gdiffsplit<CR>

"----------------------------------
set confirm
set title
set clipboard=unnamedplus "copiar e colar fora do vim
set showcmd cmdheight=1

"set foldmethod=indent
nnoremap <Space> za
set nofoldenable
set fdm=manual
"set fdc=4
"set fdl=1

" Neovim config
"-----------------------------------------

" Show line numbers
set number cursorline "relativenumber " set line number
set ruler

" Set Proper Tabs
set tabstop=4 softtabstop=4 " set tab size
set shiftwidth=2 " affect amount of indentation
set expandtab " set that tab will insert softabstop amount of space characters

"set nowrap " set no soft wrap
set nobackup " set no backup file
set nowritebackup " set to never save backup
set noswapfile " set no swap file
set breakindent " set every wrapped line will continue visually indented
set smartindent " set smart indentation
set smartcase " set to be cas sensitive when there is capital letter, this need set incsearch to work
set incsearch " set search to be case insensitive
set hidden
set shortmess+=c " for CoC plugin
"set noshowmode " set that vim mode is hidden, to incorporate for lightline plugin
"let mapleader=" "
"
" Panel switching
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
" Split panel
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
" Map yanked to clipboard
vnoremap <C-c> "*y
" Line moving

" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" " Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" " Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gvn
