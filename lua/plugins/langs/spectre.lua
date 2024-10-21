local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n','<leader>S','<cmd>lua require(\'spectre\').open()<CR>')
map('n','<leader>sw','<cmd>lua require(\'spectre\').open_visual({select_word=true})<CR>')
map('n','<leader>s','<cmd>lua require(\'spectre\').open_visual()<CR>')
map('n','<leader>sp','viw:lua require(\'spectre\').open_file_search()<cr>')
