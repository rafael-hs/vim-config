--require('lualine').setup({
  --options = {
    --icons_enabled = true,
    --theme = 'catppuccin'
  --},
  --sections = {
    --lualine_a = {'mode'},
    --lualine_b = {'branch', 'diff', 'diagnostics'},
    --lualine_c = {'filename', 'branch', 'filesize'},
    --lualine_x = {
      --{
        --'encoding',
      --},
      --{
        --'filetype'
      --},
      --{
        --'fileformat',
        --symbols = {
          --unix = '', -- e712
          --dos = '',  -- e70f
          --mac = '',  -- e711
        --}
      --},
    --},
    --lualine_y = {'progress'},
    --lualine_z = {'location'}
--}
--})

--local colors = {
  --blue   = '#80a0ff',
  --cyan   = '#79dac8',
  --black  = '#080808',
  --white  = '#c6c6c6',
  --red    = '#ff5189',
  --violet = '#d183e8',
  --grey   = '#303030',
--}

--local bubbles_theme = {
  --normal = {
    --a = { fg = colors.black, bg = colors.violet },
    --b = { fg = colors.white, bg = colors.grey },
    --c = { fg = colors.black, bg = colors.black },
  --},

  --insert = { a = { fg = colors.black, bg = colors.blue } },
  --visual = { a = { fg = colors.black, bg = colors.cyan } },
  --replace = { a = { fg = colors.black, bg = colors.red } },

  --inactive = {
    --a = { fg = colors.white, bg = colors.black },
    --b = { fg = colors.white, bg = colors.black },
    --c = { fg = colors.black, bg = colors.black },
  --},
--}



require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'nord'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics' },
    lualine_c = {
    {'filename'},
    {'filesize'},
    },
    lualine_x = {
      {'encoding'},
      {'filetype'},
      {'fileformat',
        symbols = {
          unix = '', -- e712
          dos = '',  -- e70f
          mac = '',  -- e711
        }
      },
    },
    lualine_y = {'progress' },
    lualine_z = {'location'},
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
