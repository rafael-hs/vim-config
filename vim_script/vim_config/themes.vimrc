" Customization
set t_Co=256
set background=dark
if (has("termguicolors"))
  set termguicolors
endif

"Switch to your current theme
"--------------------------------
" Aylin
"colorscheme aylin


" Embark
"let g:airline_theme='embark'
"let g:airline_theme = "bubblegum"
"let g:airline_theme='deus'
"colorscheme embark

" Moonfly
"colorscheme moonfly
"let g:airline_theme = 'moonfly'

" Everforest
"let g:everforest_better_performance = 1
"let g:everforest_background = 'hard'
"let g:airline_theme = 'everforest'
"colorscheme everforest

" Aquarium
"colorscheme aquarium
"let g:aqua_bold = 1
"let g:aquarium_style="dark"
"let g:aquarium_style="light"
"let g:airline_theme="base16_aquarium_dark"

" Moonlight
"colorscheme moonlight
"let g:airline_theme = 'moonlight'

" Material
"let g:material_style = 'deep ocean'
"colorscheme material

" OneDarkPaco
"let g:airline_theme='onedark'
"colorscheme onedark

" OneDark
"let g:airline_theme = 'onedark'
"let g:airline_theme = 'bubblegum'
"colorscheme onedarkpaco

" Tokyonight
"let g:airline_theme = "tokyonight"
"let g:tokyonight_style = "night"
"let g:tokyonight_enable_italic = 1
"let g:tokyonight_transparent_background = 1
"colorscheme tokyonight

" Catppuccin
let g:catppuccin_flavour = "frappe" " latte, frappe, macchiato, mocha
lua << EOF
require("catppuccin").setup()
EOF
colorscheme catppuccin
"let g:airline_theme = "deus"
let g:airline_theme = "bubblegum"
"let g:lightline = {'colorscheme': 'catppuccin'}
