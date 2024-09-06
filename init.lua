--[[
Neovim init file
Maintainer: Rafael HS
--]]

-- Import Lua modules

-- Global imports
require('globals.mapping')
require('globals.options')
require('globals.themes')

-- Plugin imports
require('plugins.ale')
require('plugins.bufferline')
require('plugins.coc')
require('plugins.dashboard')
require('plugins.fuzzy_finder')
require('plugins.vim_telescope')
require('plugins.lualine')
require('plugins.nerd_commenter')
require('plugins.rainbow')
require('plugins.spectre')
require('plugins.ultisnips')
require('plugins.vim_test')
require('plugins.undotree')
require('plugins.chad')

-- Packer import
require('packer_init')
