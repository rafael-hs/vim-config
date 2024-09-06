vim.cmd[[
nnoremap <C-b> <cmd>CHADopen<cr>
]]

local chadtree_settings = {
      ["options.session"] = false,
      ["view.width"] = 55
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
