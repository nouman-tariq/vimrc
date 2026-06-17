# vimrc

My personal [Vim](https://www.vim.org/) configuration — a single `.vimrc` with sensible defaults, 2-space indentation, and a couple of essential plugins.

## Features

- **Restore cursor position** — reopen a file and land back where you left off
- **2-space indentation** — `expandtab`, `tabstop=2`, `shiftwidth=2`
- **Sensible editing defaults** — line numbers, bracket matching, a permanent status line, and a backspace that behaves
- **Performance tweaks** — `lazyredraw` and `synmaxcol=200` keep things snappy on long lines
- **No clutter** — backup/swap files disabled

## Plugins

Managed with [vim-plug](https://github.com/junegunn/vim-plug):

| Plugin | Purpose |
|---|---|
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration inside Vim |
| [NERDTree](https://github.com/preservim/nerdtree) | File-tree sidebar |

## Installation

1. Install [vim-plug](https://github.com/junegunn/vim-plug#installation):

   ```sh
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

2. Copy the config into place:

   ```sh
   curl -fLo ~/.vimrc https://raw.githubusercontent.com/nouman-tariq/vimrc/main/.vimrc
   ```

3. Open Vim and install the plugins:

   ```vim
   :PlugInstall
   ```

## License

Free to use and adapt.
