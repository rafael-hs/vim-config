-----------------------------------------------------------
-- Define keymaps of Neovim -------------------------------
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Move around splits using Ctrl + w + {h,j,k,l}
map('n', '<C-w> <Left>', '<C-w>h')
map('n', '<C-w> <Down>', '<C-w>j')
map('n', '<C-w> <Up>', '<C-w>k')
map('n', '<C-w> <Right>', '<C-w>l')

-- Buffer
map('n', 'q', ':bdelete<CR>') -- delete a buffer
map('n','<C-q>',':quit!<CR>') -- force quit
map('n','<C-s>',':w<CR>')     -- save buffer
map('v','<C-s>',':w<CR>')     -- save buffer
map('i','<C-s>',':w<CR>')     -- save buffer

-- Buffer swiching
map('n','tt',':bnext<CR>')      -- to next buffer
map('n','Tt',':bprevious<CR>')  -- to previous buffer
map('n','<Tab>',':bnext<CR>')      -- to next buffer
map('n','<S-Tab>',':bprevious<CR>')  -- to previous buffer
--map('n','<C-h>',':bp<CR>')      -- to previous buffer
--map('n','<C-l>',':bn<CR>')      -- to next buffer
--map('','','<CR>')

-- Moving line
map('n','<C-j>',':m .+1<CR>==') -- move in normal mode
map('n','<C-k>',':m .-2<CR>==')
map('i','<C-j>','<ESC>:m .+1<CR>==gi') -- move in insert mode
map('i','<C-k>','<ESC>:m .-2<CR>==gi')
map('v','<C-j>',':m \'>+1<CR>gv=gv') -- move in  visual mode
map('v','<C-k>',':m \'<-2<CR>gv=gv')