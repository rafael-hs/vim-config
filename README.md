# Neovim Configuration

> A modern Neovim setup using Lua, maintained by Rafael Honório.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration Structure](#configuration-structure)
- [Key Components](#key-components)
- [Directory Layout](#directory-layout)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Features
- Packer for plugin management (auto-installed on first run)
- LSP configuration for multiple languages (Elixir, Rust, JS, etc.)
- Autocompletion with nvim-cmp
- Snippets support via LuaSnip and UltiSnips
- Fuzzy finding and project search with Telescope
- Syntax highlighting powered by Treesitter
- File explorer with chadtree
- Status line customization with lualine
- Git integrations (vim-fugitive, git-blame, vim-signify)
- Color themes: catppuccin, neopywal, and more
- Custom key mappings and editor options

## Requirements
- Neovim 0.5 or higher
- Git
- (Optional) Python 3 for chadtree dependencies

## Installation
1. Clone this repository into your Neovim config directory:

   ```bash
   git clone https://github.com/rafael-hs/vim-config.git ~/.config/nvim
   ```

2. Launch Neovim and install plugins:

   ```vim
   :PackerSync
   ```

Packer will be bootstrapped automatically if not already installed.

## Usage
Open Neovim as usual:

```bash
nvim
```

Plugins will be installed and compiled automatically on first run.

## Configuration Structure
- `init.lua` – Main entrypoint for Neovim setup.
- `packer_init.lua` – Bootstrap and list of plugins managed by Packer.
- `lua/globals` – Global configurations:
  - `mapping.lua` – Key mappings.
  - `options.lua` – Editor options and settings.
  - `themes.lua` – Colorscheme selection.
- `lua/plugins/utils` – Plugin-specific utility setups.
- `lua/plugins/langs` – Language-specific plugin configurations.
- `plugin/packer_compiled.lua` – Auto-generated compiled Packer loader.
- `vim_script` – Legacy Vimscript configurations (kept for reference).

## Key Components
- Key mappings: `lua/globals/mapping.lua`
- Editor options: `lua/globals/options.lua`
- Colorschemes: `lua/globals/themes.lua`
- Plugin utilities: `lua/plugins/utils/*`
- Language setups: `lua/plugins/langs/*`

For the full plugin list and configuration details, see `packer_init.lua`.

## Directory Layout
```
.
├── init.lua
├── packer_init.lua
├── LICENSE
├── coc-settings.json
├── plugin
│   └── packer_compiled.lua
├── lua
│   ├── globals
│   │   ├── mapping.lua
│   │   ├── options.lua
│   │   └── themes.lua
│   └── plugins
│       ├── utils
│       └── langs
└── vim_script
    └── old_init.vim
```

## Customization
You can tweak the configuration by editing:
- `lua/globals/options.lua` for general editor settings.
- `lua/globals/mapping.lua` for custom keybindings.
- `lua/globals/themes.lua` to switch colorschemes.
- Any plugin settings under `lua/plugins/`.

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.

## License
This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
