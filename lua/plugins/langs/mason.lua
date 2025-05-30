local elixir = require("elixir")
local elixirls = require("elixir.elixirls")

-- Mason Setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})

require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup({})
  end,
}
