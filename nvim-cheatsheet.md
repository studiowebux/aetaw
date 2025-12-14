# Neovim Cheatsheet

## Modes

| Key | Action |
|-----|--------|
| `i` | Insert before cursor |
| `I` | Insert at line start |
| `a` | Append after cursor |
| `A` | Append at line end |
| `o` | Open line below |
| `O` | Open line above |
| `v` | Visual mode |
| `V` | Visual line mode |
| `<C-v>` | Visual block mode |
| `<Esc>` | Normal mode |

## Navigation

| Key | Action |
|-----|--------|
| `h` `j` `k` `l` | Left, down, up, right |
| `w` | Next word |
| `b` | Previous word |
| `e` | End of word |
| `0` | Line start |
| `^` | First non-blank character |
| `$` | Line end |
| `gg` | File start |
| `G` | File end |
| `{line}G` | Go to line |
| `%` | Jump to matching bracket |
| `<C-d>` | Half page down |
| `<C-u>` | Half page up |
| `<C-f>` | Page down |
| `<C-b>` | Page up |
| `<C-o>` | Jump back |
| `<C-i>` | Jump forward |

## Editing

| Key | Action |
|-----|--------|
| `x` | Delete character |
| `dd` | Delete line |
| `D` | Delete to line end |
| `cc` | Change line |
| `C` | Change to line end |
| `yy` | Yank line |
| `Y` | Yank to line end |
| `p` | Paste after |
| `P` | Paste before |
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | Repeat last command |
| `r{char}` | Replace character |
| `J` | Join lines |
| `~` | Toggle case |
| `>` | Indent |
| `<` | Unindent |

## Text Objects

| Key | Action |
|-----|--------|
| `ciw` | Change inner word |
| `caw` | Change around word |
| `ci"` | Change inside quotes |
| `ca"` | Change around quotes |
| `ci(` | Change inside parens |
| `ca(` | Change around parens |
| `ci{` | Change inside braces |
| `ci[` | Change inside brackets |
| `cit` | Change inside tag |
| `dip` | Delete inner paragraph |

## Search

| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |
| `:noh` | Clear search highlight |

## Marks

| Key | Action |
|-----|--------|
| `m{a-z}` | Set local mark |
| `m{A-Z}` | Set global mark |
| `'{mark}` | Jump to mark line |
| `` `{mark} `` | Jump to mark position |
| `''` | Jump to previous position |

## Registers

| Key | Action |
|-----|--------|
| `"{reg}y` | Yank to register |
| `"{reg}p` | Paste from register |
| `:reg` | Show registers |
| `"0` | Last yank |
| `"1-9` | Delete history |
| `"+` | System clipboard |

## Macros

| Key | Action |
|-----|--------|
| `q{reg}` | Start recording |
| `q` | Stop recording |
| `@{reg}` | Play macro |
| `@@` | Replay last macro |

## Windows

| Key | Action |
|-----|--------|
| `:sp` | Horizontal split |
| `:vsp` | Vertical split |
| `<C-w>h/j/k/l` | Navigate windows |
| `<C-w>w` | Cycle windows |
| `<C-w>q` | Close window |
| `<C-w>=` | Equal size |
| `<C-w>_` | Max height |
| `<C-w>\|` | Max width |
| `<C-w>r` | Rotate windows |

## Buffers

| Key | Action |
|-----|--------|
| `:e {file}` | Edit file |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Delete buffer |
| `:ls` | List buffers |
| `:b{n}` | Go to buffer n |
| `:b {pattern}` | Go to buffer by pattern |

## Tabs

| Key | Action |
|-----|--------|
| `:tabnew` | New tab |
| `:tabc` | Close tab |
| `gt` | Next tab |
| `gT` | Previous tab |
| `{n}gt` | Go to tab n |

## Files

| Key | Action |
|-----|--------|
| `:w` | Save |
| `:wq` | Save and quit |
| `:q` | Quit |
| `:q!` | Force quit |
| `:wa` | Save all |
| `:qa` | Quit all |
| `:wqa` | Save all and quit |
| `:x` | Save if modified and quit |

## Command Mode

| Key | Action |
|-----|--------|
| `:{range}s/old/new/g` | Substitute in range |
| `:%s/old/new/g` | Substitute in file |
| `:%s/old/new/gc` | Substitute with confirm |
| `:!{cmd}` | Run shell command |
| `:r !{cmd}` | Read command output |
| `:e!` | Reload file |
| `:set {option}` | Set option |
| `:set {option}?` | Check option value |

## Visual Mode

| Key | Action |
|-----|--------|
| `>` | Indent selection |
| `<` | Unindent selection |
| `=` | Auto-indent selection |
| `d` | Delete selection |
| `y` | Yank selection |
| `c` | Change selection |
| `u` | Lowercase |
| `U` | Uppercase |
| `~` | Toggle case |

## Folding

| Key | Action |
|-----|--------|
| `zo` | Open fold |
| `zc` | Close fold |
| `za` | Toggle fold |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zj` | Next fold |
| `zk` | Previous fold |
