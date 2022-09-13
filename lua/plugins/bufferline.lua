vim.opt.termguicolors = true
require('bufferline').setup({
  options = {
    separator_style = 'slant',
    numbers = 'both',
    color_icons = true,
    diagnostics = "coc"
  }
})
