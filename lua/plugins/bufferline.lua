vim.opt.termguicolors = true

require('bufferline').setup({
  options = {
    show_close_icon = true,
    version = "*",
    mode = "buffers",
    numbers = 'both',
    indicator_icon = '▎',
    buffer_close_icon = '',
    close_icon = '',
    separator_style = 'thick',
    color_icons = true,
    diagnostics = "coc",
    hover = {
            enabled = true,
            delay = 150,
            reveal = {'close'}
        }
  }
})
