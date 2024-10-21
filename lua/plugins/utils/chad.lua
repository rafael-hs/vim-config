vim.cmd[[
nnoremap <C-b> <cmd>CHADopen<cr>
]]

local chadtree_settings = {
      ["options.session"] = true,
      ["view.open_direction"] = "left",
      ["view.width"] = 35,
      ["theme.text_colour_set"] = "env"
}
vim.api.nvim_set_var("chadtree_settings", chadtree_settings)
