--local db = require('dashboard')
--local home = os.getenv('HOME')
local girl = {
    '',
    '⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕',
    '⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕',
    '⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕',
    '⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕',
    '⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑',
    '⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐',
    '⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐',
    '⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔',
    '⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕',
    '⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕',
    '⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕',
    '⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕',
    '⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁',
    '⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿',
    '',
  }

local duck = {
  '',
  '',
  ' ⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⠀⠀⠀⠀⢐⡛⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣶⣾⣷⣿⣿⣶⣶⣤⣌⣙⣛⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⡙⠿⠿⠟⠛⢛⣛⠛⠛⠛⠛⠻⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢛⣉⣩⣵⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣦⣍⣉⣙⡛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟ ',
  ' ⣿⣿⣿⣿⣿⡿⠟⣫⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⠉⠛⣿⣿⣿⣿⣿⣿⡟⢠ ',
  ' ⣿⣿⡟⢉⣱⡶⢟⣉⢥⣮⣭⡛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣮⣙⠿⠿⠿⠛⢡⣿ ',
  ' ⡿⢋⣴⣿⡏⣠⣿⡁⠀⢸⣿⣿⡎⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⣰⣿⣿ ',
  ' ⣴⣿⣿⣿⡇⠹⣿⣿⣿⣿⡿⢟⣼⣿⣿⣿⣿⠿⠟⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡙⣿ ',
  ' ⣿⣿⣿⣿⣿⣷⣬⣭⠭⠵⠶⠿⣟⣛⣭⣷⣶⣴⣿⣟⣻⣦⡝⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢫⣵⣶⠶⢶⣮⣍⢻⣿⣿⣿⣎ ',
  ' ⣿⣿⣿⣿⢻⣭⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣅⠀⢀⣿⣿⡇⢻⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣮⡃⢀⡀⠀⠀⠀⠀⠉⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣮⣍⡻⢿⣿⣿⣿⣿⣿⣧⡹⣿⣿⣿⣿⣿⣿⢇⣾⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣦⣙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠿⣿⣿⣿⣿⣷⣬⡻⣿⣿⣿⣿⣷⣮⣭⣉⣉⣩⣴⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣷⣬⡻⡓⠦⣤⣤⣤⣄⣀⣀⣀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⢿⣿⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡘⠷⣶⣾⣿⣿⡿⠿⠿⠿⢿⣟⣛⣛⣛⣛⣛⣉⣭⣭⣭⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡻⣭⣶⣦⣤⣤⣴⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⠿⢋⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣫ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣫⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣵⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⣴⣿⣿⣿⣿ ',
  ' ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⣿⣿⣿⡿⠿⠿ ',
  '',
  '"aaaaaaaaaaaaaaa"',
  '',
}

local neovim = {
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

local g = vim.g
g.dashboard_default_executive = 'telescope'

--db.setup({
    --theme = 'doom',
    --config = {
       --header = {
       --},
       --center = {
          --},
       --footer = {}
    --}
  --})

          --{icon = '  ',
           --desc = 'Recently opened files                   ',
           --action =  'Telescope oldfiles',
           --shortcut = '   NONE'},
          --{icon = '  ',
           --desc = 'Find  File                              ',
           --action = 'Telescope find_files',
           --shortcut = ' CTRL P'},
          --{icon = '  ',
           --desc ='File Browser                            ',
           --action =  'Telescope file_browser',
           --shortcut = '   NONE'},
          --{icon = '  ',
           --desc = 'Find  word                              ',
           --action = 'Telescope live_grep',
           --shortcut = ' CTRL F'},
          --{icon = '  ',
           --desc = 'Open Personal dotfiles                  ',
           --action = 'Telescope file_browser path=' .. home .. '/.config/nvim',
           --shortcut = '   NONE'},

--db.custom_header = duck
--db.header_pad = 7
--db.custom_center = {
    --{icon = '  ',
    --desc = 'Recently opened files                   ',
    --action =  'Telescope oldfiles',
    --shortcut = '   NONE'},
    --{icon = '  ',
    --desc = 'Find  File                              ',
    --action = 'Telescope find_files',
    --shortcut = ' CTRL P'},
    --{icon = '  ',
    --desc ='File Browser                            ',
    --action =  'Telescope file_browser',
    --shortcut = '   NONE'},
    --{icon = '  ',
    --desc = 'Find  word                              ',
    --action = 'Telescope live_grep',
    --shortcut = ' CTRL F'},
    --{icon = '  ',
    --desc = 'Open Personal dotfiles                  ',
    --action = 'Telescope file_browser path=' .. home .. '/.config/nvim',
    --shortcut = '   NONE'},
  --}
