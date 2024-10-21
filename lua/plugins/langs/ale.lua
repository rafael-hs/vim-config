vim.cmd[[
let g:ale_fixers = {
      \  '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['prettier'],
      \ 'elixir': ['mix_format'],
      \}
]]

vim.g.ale_fix_on_save = true
