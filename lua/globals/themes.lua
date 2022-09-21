-----------------------------------------------------------
-- Color schemes configuration file -----------------------
-----------------------------------------------------------

--vim.opt.termguicolors = true
vim.cmd[[
if has('termguicolors')
  set termguicolors
endif
]]

vim.opt.background = 'dark'

-- Load nvim color scheme:


  -- Moonfly config
--vim.cmd [[colorscheme moonfly]]


  -- Nightfly config
--vim.cmd[[
--colorscheme nightfly
--]]

  -- Embark config
vim.cmd[[
colorscheme embark
]]


-- Everforest config
--vim.cmd[[
--let g:everforest_background = 'hard'
--let g:everforest_better_performance = 1
--colorscheme everforest
--]]
