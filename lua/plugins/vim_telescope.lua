local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n', '<C-p>', ':Telescope find_files<CR>')
map('n', '<C-g>', ':Telescope git_files<CR>')
map('n', '<C-f>', ':Telescope live_grep<CR>')
map('n', '<leader>gs', ':Telescope git_status<CR>')

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"
