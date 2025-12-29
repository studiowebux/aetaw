-- Comprehensive help modal for all custom keybindings and commands
local M = {}

function M.show()
  local help_text = {
    '╔════════════════════════════════════════════════════════════╗',
    '║            Custom Neovim Keybindings (Leader: Space)       ║',
    '╚════════════════════════════════════════════════════════════╝',
    '',
    'EXPLORER',
    '  <leader>e         Toggle file explorer',
    '  <leader>cd        Open directory of current file',
    '',
    'TELESCOPE',
    '  <leader>f         Find tracked files (respects gitignore)',
    '  <leader><leader>f Find all files (including hidden)',
    '  <leader>.         Find dotfiles',
    '  <leader>/         Live grep in tracked files',
    '  <leader><leader>/ Live grep all (including hidden)',
    '  <leader>b         Open buffer picker',
    '  <leader>j         Open jumplist picker',
    '  <leader>s         LSP document symbols',
    '  <leader>S         LSP workspace symbols',
    '  <leader>d         Diagnostics (current buffer)',
    '  <leader>D         Diagnostics (workspace)',
    '',
    'LSP (Language Server)',
    '  gd                Go to definition',
    '  gD                Go to declaration',
    '  gi                Go to implementation',
    '  gy                Go to type definition',
    '  gr                Show references',
    '  K                 Hover documentation',
    '  <C-k>             Signature help',
    '  <leader>rn        Rename symbol',
    '  <leader>ca        Code action',
    '  <leader>bf        Format buffer',
    '',
    'QUICKFIX & LOCATION LIST',
    '  <leader>lo/lc     Open/close location list',
    '  [l / ]l           Previous/next diagnostic',
    '  <leader>cn/cp     Next/previous quickfix result',
    '  <leader>co/cc     Open/close quickfix',
    '',
    'GIT (Gitsigns)',
    '  ]h / [h           Next/previous hunk',
    '  <leader>gs        Stage hunk (or selection in visual)',
    '  <leader>gr        Reset hunk (or selection in visual)',
    '  <leader>gS        Stage entire buffer',
    '  <leader>gR        Reset entire buffer',
    '  <leader>gp        Preview hunk',
    '  <leader>gb        Blame line',
    '  <leader>gd        Diff this',
    '  ih                Select hunk (operator/visual)',
    '',
    'TODO COMMENTS',
    '  ]t / [t           Next/previous todo comment',
    '  <leader>T         Show all todos in quickfix list',
    '  Keywords: TODO, FIXME, NOTE, HACK, WARN, PERF',
    '',
    'WINDOWS',
    '  <C-h/j/k/l>       Navigate to left/down/up/right window',
    '  <leader>v         Vertical split',
    '  <leader>h         Horizontal split',
    '  <leader>x         Close current split',
    '  <leader>o         Close all other splits',
    '  <S-Left/Right>    Decrease/increase vertical width',
    '  <leader>=         Equalize split sizes',
    '',
    'TERMINAL',
    '  <C-j>             Toggle terminal (normal/terminal mode)',
    '  <Esc>             Exit terminal mode to normal mode',
    '',
    'CLIPBOARD',
    '  <leader>y         Yank to system clipboard',
    '  <leader>Y         Yank line to system clipboard',
    '  <leader>p         Paste without yanking (visual mode)',
    '',
    'EDITING',
    '  J/K (visual)      Move selected line(s) down/up',
    '  <Esc>             Clear search highlights',
    '',
    'COMPLETION (Insert mode)',
    '  <Tab>             Next completion item',
    '  <S-Tab>           Previous completion item',
    '  <CR>              Accept completion',
    '',
    'SESSIONS',
    '  <leader>sd        Delete current session',
    '  Auto-save on exit, auto-load on start',
    '',
    'HELP',
    '  <leader>?         Show this help',
    '',
    'HARPOON',
    '  <leader>he        Open harpoon window',
    '  <C-e>             Open harpoon window',
    '  <leader>hg        Add to harpoon list',
    '  <leader>a|s|d|f|g|h|j|k|l|;',
    '════════════════════════════════════════════════════════════',
    'Press q, Esc, or Enter to close',
  }

  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, help_text)
  vim.api.nvim_buf_set_option(buf, 'modifiable', false)
  vim.api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')

  local width = math.min(62, vim.o.columns - 4)
  local height = math.min(#help_text, vim.o.lines - 4)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
  })

  vim.api.nvim_win_set_option(win, 'winhl', 'Normal:Normal,FloatBorder:FloatBorder')

  vim.keymap.set('n', 'q', '<cmd>close<CR>', { buffer = buf, nowait = true })
  vim.keymap.set('n', '<Esc>', '<cmd>close<CR>', { buffer = buf, nowait = true })
  vim.keymap.set('n', '<CR>', '<cmd>close<CR>', { buffer = buf, nowait = true })

  vim.api.nvim_create_autocmd('BufLeave', {
    buffer = buf,
    once = true,
    callback = function()
      if vim.api.nvim_buf_is_valid(buf) then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
  })
end

return M
