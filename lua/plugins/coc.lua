local vc = vim.cmd
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local g = vim.g

g.coc_global_extensions = {
  'coc-emmet',
  'coc-css',
  'coc-html',
  'coc-json',
  'coc-prettier',
  'coc-tsserver',
  'coc-snippets',
  'coc-eslint',
  'coc-elixir',
  'coc-lua',
  'coc-omnisharp',
}

map('n','<leader>gd','<Plug>(coc-definition)')
map('n','<leader>gi','<Plug>(coc-type-definition)')
map('n','<leader>gy','<Plug>(coc-implementation)')
map('n','<leader>gr','<Plug>(coc-references)')
map('n','<leader>co',':<C-u>CocList outline<CR>')


vc[[
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
]]

--vc[[
--" Use tab for trigger completion with characters ahead and navigate.
--" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
--" other plugin before putting this into your config.
--inoremap <silent><expr> <TAB>
      --\ coc#pum#visible() ? coc#pum#next(1):
      --\ CheckBackspace() ? "\<Tab>" :
      --\ coc#refresh()
--]]

vc[[
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" " Always show the signcolumn, otherwise it would shift the text each time
" " diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" " Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" " Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" " Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
]]
