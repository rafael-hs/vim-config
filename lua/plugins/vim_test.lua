local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n','<leader>t',':TestNearest<CR>')
map('n','<leader>T',':TestFile<CR>')
map('n','<leader>a',':TestSuite<CR>')
map('n','<leader>l',':TestLast<CR>')
map('n','<leader>g',':TestVisit<CR>')
