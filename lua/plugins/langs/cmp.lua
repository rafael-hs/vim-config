local cmp = require'cmp'

local kind_icons = {
        -- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#basic-customisations
        Text = " ",
        Method = "󰆧",
        Function = "ƒ ",
        Constructor = " ",
        Field = "󰜢 ",
        Variable = " ",
        Constant = " ",
        Class = " ",
        Interface = "󰜰 ",
        Struct = " ",
        Enum = "了 ",
        EnumMember = " ",
        Module = "",
        Property = " ",
        Unit = " ",
        Value = "󰎠 ",
        Keyword = "󰌆 ",
        Snippet = " ",
        File = " ",
        Folder = " ",
        Color = " ",
    }

cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
       --vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      --require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      --vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
    end,
  },
  sources = {
    { name = 'nvim_lsp', priority = 4, keyword_length = 1},     -- from language server
    { name = 'ultisnips' , priority =  3, keyword_length = 1 }, -- For ultisnips users.
    { name = 'path', priority = 2, keyword_length = 3 },        -- file paths
    { name = 'buffer', priority = 1, keyword_lenght = 3 },      -- source current buffer
    { name = 'nvim_lsp_signature_help'},                        -- display function signatures with current parameter emphasized
    { name = 'nvim_lua' },                                      -- complete neovim's Lua runtime API such vim.lsp.*
    { name = 'calc'},                                           -- source for math calculation
    --{ name = 'vsnip', priority = 3 },                         -- nvim-cmp source for vim-vsnip
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'snippy' }, -- For snippy users.
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }),
  }),
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },

  formatting = {
      fields = { 'abbr', 'kind', 'menu' },
      format = function(entry, item)
        item.kind = string.format("%s %s", kind_icons[item.kind], item.kind) -- This concatonates the icons with the name of the item kind
        item.menu = ({
          nvim_lsp = "[LSP]",
          buffer = "[Buffer]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[LaTeX]",
        })[entry.source.name]
          return item
      end,
    },
})
 -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
--vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 200)

---- Fixed column for diagnostics to appear
---- Show autodiagnostic popup on cursor hover_range
---- Goto previous / next diagnostic warning / error
---- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
