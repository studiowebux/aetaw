# tmux Cheatsheet

## Sessions

| Command | Description |
|---------|-------------|
| `tmux` | Start new session |
| `tmux new -s name` | Start new session with name |
| `tmux ls` | List sessions |
| `tmux attach` or `tmux a` | Attach to last session |
| `tmux a -t name` | Attach to named session |
| `tmux kill-session -t name` | Kill session |

## Prefix Key

Default prefix: **`Ctrl+b`** (press before any command below)

## Windows (tabs)

| Keys | Description |
|------|-------------|
| `c` | Create new window |
| `w` | List windows |
| `n` | Next window |
| `p` | Previous window |
| `0-9` | Switch to window by number |
| `,` | Rename current window |
| `&` | Kill current window |

## Panes (splits)

| Keys | Description |
|------|-------------|
| `%` | Split vertically |
| `"` | Split horizontally |
| `o` | Switch to next pane |
| `Arrow keys` | Move between panes |
| `x` | Kill current pane |
| `z` | Toggle pane zoom (fullscreen) |
| `{` / `}` | Swap pane left/right |
| `Space` | Cycle pane layouts |
| `Ctrl+Arrow` | Resize pane |

## Copy Mode

| Keys | Description |
|------|-------------|
| `[` | Enter copy mode |
| `q` | Exit copy mode |
| `Space` | Start selection (in copy mode) |
| `Enter` | Copy selection |
| `]` | Paste buffer |

## Other

| Keys | Description |
|------|-------------|
| `d` | Detach from session |
| `t` | Show clock |
| `?` | List all keybindings |
| `:` | Enter command prompt |

## Useful Commands

```bash
# Resize pane from command mode
:resize-pane -D 10    # Down
:resize-pane -U 10    # Up
:resize-pane -L 10    # Left
:resize-pane -R 10    # Right

# Synchronize panes (type in all panes at once)
:setw synchronize-panes on/off
```
