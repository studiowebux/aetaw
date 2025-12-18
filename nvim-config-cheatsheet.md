# Personal Neovim Config Cheatsheet

Leader key: `Space`

## Installation

Symlink this config to Neovim's config directory:

```sh
ln -s /path/to/aetaw/nvim ~/.config/nvim
```

## File Explorer

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>cd` | Open directory of current file |

## Telescope (File/Text Search)

| Key | Action |
|-----|--------|
| `<leader>f` | Find tracked files (respects gitignore) |
| `<leader><leader>f` | Find all files (including hidden, ignores .git and node_modules) |
| `<leader>.` | Find dotfiles |
| `<leader>/` | Live grep in tracked files |
| `<leader><leader>/` | Live grep in all files (including hidden) |

## LSP (Language Server)

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gy` | Go to type definition |
| `gr` | Show references |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>d` | Show diagnostic float |
| `<leader>bf` | Format buffer |

## Diagnostics

| Key | Action |
|-----|--------|
| `<leader>d` | Open diagnostic float |
| `<leader>D` | Add diagnostics to location list |
| `<leader>lo` | Open location list |
| `<leader>lc` | Close location list |
| `[l` | Previous diagnostic |
| `]l` | Next diagnostic |

## Quickfix

| Key | Action |
|-----|--------|
| `<leader>cn` | Next result |
| `<leader>cp` | Previous result |
| `<leader>co` | Open quickfix |
| `<leader>cc` | Close quickfix |
| `<CR>` | Jump to result (in quickfix window) |

## TODO Comments

| Key | Action |
|-----|--------|
| `]t` | Next todo comment |
| `[t` | Previous todo comment |
| `<leader>T` | Show all todos in quickfix list |

Supported keywords: TODO, FIXME, NOTE, HACK, WARN, PERF
Format: `-- KEYWORD: message` or `// KEYWORD: message`

## Git (Gitsigns)

| Key | Action |
|-----|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>gs` | Stage hunk (normal) / Stage selection (visual) |
| `<leader>gr` | Reset hunk (normal) / Reset selection (visual) |
| `<leader>gS` | Stage entire buffer |
| `<leader>gR` | Reset entire buffer |
| `<leader>gp` | Preview hunk |
| `<leader>gb` | Blame line |
| `<leader>gd` | Diff this |
| `ih` | Select hunk (operator/visual) |

## Clipboard

| Key | Action |
|-----|--------|
| `<leader>y` | Yank to system clipboard |
| `<leader>Y` | Yank line to system clipboard |
| `<leader>p` | Paste without yanking (visual mode) |

## Window Management

| Key | Action |
|-----|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to window below |
| `<C-k>` | Move to window above |
| `<C-l>` | Move to right window |
| `<leader>v` | Vertical split |
| `<leader>h` | Horizontal split |
| `<leader>x` | Close current split |
| `<leader>o` | Close all other splits |
| `<S-Left>` | Decrease vertical split width |
| `<S-Right>` | Increase vertical split width |
| `<leader>=` | Equalize split sizes |

## Text Manipulation

| Key | Action |
|-----|--------|
| `J` | Move selected line(s) down (visual mode) |
| `K` | Move selected line(s) up (visual mode) |
| `<Esc>` | Clear search highlights |

## Completion

| Key | Action |
|-----|--------|
| `<Tab>` | Next completion item |
| `<S-Tab>` | Previous completion item |
| `<CR>` | Accept completion |

## Terminal

| Key | Action |
|-----|--------|
| `<C-j>` | Toggle terminal (normal/terminal mode) |
| `<Esc>` | Exit terminal mode to normal mode |

## Sessions

| Key | Action |
|-----|--------|
| `<leader>sd` | Delete current session |

Sessions auto-save on exit and auto-load on start.

## Which-Key

| Key | Action |
|-----|--------|
| `<leader>?` | Show buffer local keymaps |

## Config Details

Tab width: 2 spaces (expandtab)
Relative line numbers: enabled
Line numbers: enabled
Colorscheme: unokai
Cursor line highlighting: enabled
Scroll offset: 20 lines
Error bells: disabled
Visual whitespace: enabled (tab: `» `, trail: `·`, nbsp: `␣`)
Incremental command preview: enabled
Confirm unsaved changes: enabled
Yank highlighting: enabled

Autopairs (nvim-autopairs):
- Pairs: `()`, `[]`, `{}`, `""`, `''`, ``` `` ```, `<>`
- Fast wrap: `<M-e>` to wrap word with pair
- Auto-delete both characters on backspace

Supported LSPs:
- Lua (lua_ls with vim global)
- TypeScript/JavaScript (denols)
- Go (gopls)
