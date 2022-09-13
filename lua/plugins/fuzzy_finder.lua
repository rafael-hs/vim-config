local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n', '<C-p>', ':Files<CR>')
map('n', '<C-g>', ':GFiles<CR>')
map('n', '<C-f>', ':Ag<CR>')

vim.cmd[[
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
]]
