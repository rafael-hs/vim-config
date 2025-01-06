require("nvim-web-devicons").setup {
    override = {
        ex = {
            icon = "", -- Ícone específico para Elixir
            color = "#6e4a7e", -- Cor roxa
            name = "Elixir",
        },
        exs = {
            icon = "", -- Mesmo ícone
            color = "#6e4a7e", -- Cor roxa para testes
            name = "ElixirScript",
        },
    },
    default = true, -- Usa configuração padrão para outras extensões
}
