-----------------------------------------------------------
----------- Color schemes configuration file --------------
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
--vim.cmd[[colorscheme moonfly]]

-- Catppuccin config
--require("catppuccin").setup({
    --flavour = "mocha", -- latte, frappe, macchiato, mocha
    --background = { -- :h background
        --light = "latte",
        --dark = "mocha",
    --},
    --transparent_background = false,
    --show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    --term_colors = false,
    --dim_inactive = {
        --enabled = false,
        --shade = "dark",
        --percentage = 0.15,
    --},
    --no_italic = false, -- Force no italic
    --no_bold = false, -- Force no bold
    --styles = {
        --comments = { "italic" },
        --conditionals = { "italic" },
        --loops = {},
        --functions = {},
        --keywords = {},
        --strings = {},
        --variables = {},
        --numbers = {},
        --booleans = {},
        --properties = {},
        --types = {},
        --operators = {},
    --},
    ----color_overrides = {
      ----all = {
        ----base = "#1f1f29"
      ----}
    ----},
    --color_overrides = {
            --all = {
                --rosewater = "#F5E0DC",
                --flamingo = "#F2CDCD",
                --mauve = "#DDB6F2",
                --pink = "#F5C2E7",
                --red = "#F28FAD",
                --maroon = "#E8A2AF",
                --peach = "#F8BD96",
                --yellow = "#FAE3B0",
                --green = "#ABE9B3",
                --blue = "#96CDFB",
                --sky = "#89DCEB",
                --teal = "#B5E8E0",
                --lavender = "#C9CBFF",

                --text = "#D9E0EE",
                --subtext1 = "#BAC2DE",
                --subtext0 = "#A6ADC8",
                --overlay2 = "#C3BAC6",
                --overlay1 = "#988BA2",
                --overlay0 = "#6E6C7E",
                --surface2 = "#6E6C7E",
                --surface1 = "#575268",
                --surface0 = "#302D41",

                --base = "#1F1F29",
                --mantle = "#1A1826",
                --crust = "#161320",
            --},
        --},
    --custom_highlights = {},
    --integrations = {
        --cmp = true,
        --gitsigns = true,
        --nvimtree = true,
        --telescope = true,
        --notify = false,
        --mini = false,
        ---- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    --},
--})
--vim.cmd.colorscheme "catppuccin"


 --Nightfly config
--vim.cmd[[
--colorscheme nightfly
--]]

  -- Embark config
--vim.cmd[[
--colorscheme embark
--]]

-- Everforest config
vim.cmd[[
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
colorscheme everforest
]]

-- Kanagawa config
--vim.cmd[[
--colorscheme kanagawa
--]]

-- Aquarium config
--vim.cmd[[
  --colorscheme aquarium
--]]

-- Nordic config
--vim.cmd[[
--colorscheme nordic
--]]

-- Lucid config
--vim.cmd[[
--colorscheme lucid
--]]

-- DarkScene config
--vim.cmd[[
--colorscheme darkscene
--]]

-- Dawn config
--vim.cmd[[
--colorscheme dawn
--]]

-- Morsel config
--vim.cmd[[
--colorscheme mosel
--]]
