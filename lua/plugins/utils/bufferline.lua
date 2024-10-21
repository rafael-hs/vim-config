vim.opt.termguicolors = true

require('bufferline').setup({
  options = {
    mode = "buffers",
    numbers = 'both',
    indicator = {
      icon = '▎',
    },
    max_name_length = 40,
    separator_style = 'slant',
    color_icons = true,
    diagnostics = "nvim_lsp",
    sort_by = 'insert_at_end',
  }
})

vim.cmd[[
" Pina a tab
nnoremap <leader>p <cmd>BufferLineTogglePin<cr> 
]]
