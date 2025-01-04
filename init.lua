--[[
Neovim init file
Maintainer: Rafael HS
--]]

-- Import Lua modules

-- Global imports
require('globals.mapping')
require('globals.options')
require('globals.themes')

-- Utils
require('plugins.utils.bufferline')
require('plugins.utils.chad')
require('plugins.utils.fold_text')
require('plugins.utils.git_blame')
require('plugins.utils.lualine')
require('plugins.utils.nerd_commenter')
require('plugins.utils.undotree')
require('plugins.utils.vim_fugitive')
require('plugins.utils.vim_signify')
require('plugins.utils.vim_telescope')

-- Programming Languages
require('plugins.langs.ale')
require('plugins.langs.treesitter')
require('plugins.langs.spectre')
require('plugins.langs.ultisnips')
require('plugins.langs.luasnip')
require('plugins.langs.vim_test')

-- LSP Config
require('plugins.langs.lsp')
require('plugins.langs.cmp')
require('plugins.langs.mason')

-- Packer import
require('packer_init')
