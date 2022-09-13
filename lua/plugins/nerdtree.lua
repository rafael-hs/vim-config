-----------------NERDTREE CONFIG---------------------
local vc = vim.cmd
local o = vim.opt
local g = vim.g

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<C-b>', ':call ToggleTree()<CR>')
map('n', '++', '<plug>NERDCommenterToggle')
map('v', '++', '<plug>NERDCommenterToggle')

-- CMD
vc[[
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! CheckIfCurrentBufferIsFile()
  return strlen(expand('%')) > 0
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && CheckIfCurrentBufferIsFile() && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufRead * call timer_start(500, SyncTree())

function! ToggleTree()
  if CheckIfCurrentBufferIsFile()
    if IsNERDTreeOpen()
      NERDTreeClose
    else
      NERDTreeFind
    endif
  else
    NERDTree
  endif
endfunction

" Hide NERDTree folder trailing slashes
augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end
]]

-- NERDTree
o.signcolumn = 'yes'
g.NERDTreeShowHidden = true -- this setting tells vim whether to display hidden files by default.
g.NERDTreeWinPos     = 'right' -- open nerd tree on right
g.NERDTreeWinSize    = 40 -- size of nerdtree buffer
g.NERDTreeIgnore     = {'^node_modules$'} -- ignore node_modules (increase load speed)
g.NERDTreeStatusline = ''
g.NERDTreeHighlightFolders = true
g.NERDTreeHighlightFoldersFullName = true

-- NERDTree Git Plugin
g.NERDTreeGitStatusIndicatorMapCustom = {
      Modified  = '✹',
      Staged    = '✚',
      Untracked = '✭',
      Renamed   = '➜',
      Unmerged  = '═',
      Deleted   = '✖',
      Dirty     = '✗',
      Clean     = '✔︎',
      Ignored   = '☒',
      Unknown   = '?'
}

-- NERDTree Icons
g.webdevicons_enable = 1
g.WebDevIconsUnicodeDecorateFolderNodes = 1
g.DevIconsEnableFoldersOpenClose = 1
g.DevIconsEnableFolderExtensionPatternMatching = 1
g.DevIconsDefaultFolderOpenSymbol = ''
g.WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
g.NERDTreeDirArrowExpandable = ''
g.NERDTreeDirArrowCollapsible = ''
--g.NERDTreeDirArrowExpandable = '➫'
--g.NERDTreeDirArrowCollapsible = '➘'
