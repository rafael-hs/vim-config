require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'aquarium'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename', 'branch', 'filesize'},
    lualine_x = {
      {
        'encoding',
      },
      {
        'filetype'
      },
      {
        'fileformat',
        symbols = {
          unix = '', -- e712
          dos = '',  -- e70f
          mac = '',  -- e711
        }
      },
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
}
})
