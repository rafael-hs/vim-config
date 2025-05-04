-----------------------------------------------------------------------------------------------------------------------
------------------------------------------------ SETUP Keybinds to LSP ------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the definition of the type symbol
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')

    -- Show diagnostics in a floating window
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Move to the previous diagnostic
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})

-----------------------------------------------------------------------------------------------------------------------
------------------------------------------------ SETUP LSP Configs ----------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities() -- Add additional capabilities supported by nvim-cmp
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- LSP Diagnostics Options Setup (LUA CONFIG)
lspconfig.lua_ls.setup({
  capabilities = capabilities
})

-- LSP Diagnostics Options Setup (RUST CONFIG)
lspconfig.rust_analyzer.setup {
-- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

local on_attach = function(client, bufnr)
  print('LSP started for ' .. client.name)
end

-- LSP Diagnostics Options Setup (ELIXIR)
lspconfig.elixirls.setup({
    cmd = { "/Users/rafaelhs/.elixir-ls/release/language_server.sh"},
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 300,
    },

  on_attach = on_attach,
    settings = {
      elixirLS = {
        dialyzerEnabled = true,
        fetchDeps = true,
        enableTestLenses = true,
        suggestSpecs = true,
      },
    },
})

-- LSP Diagnostics Options Setup (ERLANG)
require 'lspconfig'.erlangls.setup{}

-- LSP Golang config
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
}

-- LSP global config
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({ name = 'DiagnosticSignError', text = '✘' })
sign({ name = 'DiagnosticSignWarn', text = '▲' })
sign({ name = 'DiagnosticSignHint', text = '⚑' })
sign({ name = 'DiagnosticSignInfo', text = '»' })

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = true,
  underline = false,
  severity_sort = false,
  float = {
    border = 'rounded',
    source = 'always'
  },
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])


-- Turn global windows with borders
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {border = 'rounded'}
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {border = 'rounded'}
)
