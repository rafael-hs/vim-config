local g = vim.g       -- Global variables
local set = vim.opt   -- Set options (global/buffer/windows-scoped)

vim.cmd[[
syntax enable " enable syntax highglighting
syntax on " turn on syntax highlighting
filetype plugin indent on
set noshowmode
]]

-- Global Settings --
set.number = true -- enable numbers on vim
set.ruler = true -- to show lines and collumns below
set.cursorline = true -- highlight current line
set.confirm = true -- asking if u wish to save the current file
set.title = true -- show the tittle
set.showcmd = true -- show cmd below
set.cmdheight = 1 -- height cmd below

-- Mouse --
set.mouse = 'a' -- enable mouse visual mode

-- Syntax --
set.autoindent = true -- does nothing more than, copy the indentation from the previous line, when starting a new line

-- Text
set.clipboard = 'unnamedplus' -- to copy for outside the vim

-- Tab
set.tabstop= 4 -- set tab size
set.softtabstop= 4 -- set tab size
set.shiftwidth= 2 -- affect amount of indentation
set.expandtab = true

-- Backup
g.nobackup = true      -- set no backup file
g.nowritebackup = true -- set to never save backup
g.noswapfile = true    -- set no swap file
g.breakindent = true   -- set every wrappeed line will continue visually indented
g.smartindent = true   -- set smart indentation
g.smartcase = true     -- set to be case sensitive when there is capital letter, this need set incserch to work
g.incserach = true -- set search to be case insensitive
g.hidden = true -- hide buffers
g.shortmess = 'c' -- to hide user defined completion message COC plugin
