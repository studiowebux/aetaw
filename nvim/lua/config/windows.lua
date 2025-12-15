--- Show which window is active via the status line
vim.opt.laststatus = 2  -- always show status line

-- Different status line for active vs inactive
vim.opt.statusline = '%f %m %r %h %w %y %=%l/%L : %c'

-- The active window will have a highlighted statusline automatically
-- You can customize the colors:
vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#ffffff', bg = '#444444' })    -- active
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = '#888888', bg = '#222222' })  -- inactive

-- ============================================
-- Split Navigation
-- ============================================

-- Move to the window on the left
vim.keymap.set('n', '<C-h>', '<C-w>h')

-- Move to the window below
vim.keymap.set('n', '<C-j>', '<C-w>j')

-- Move to the window above
vim.keymap.set('n', '<C-k>', '<C-w>k')

-- Move to the window on the right
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- ============================================
-- Split Creation
-- ============================================

-- Vertical split (side by side)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')

-- Horizontal split (top/bottom)
vim.keymap.set('n', '<leader>h', ':split<CR>')

-- ============================================
-- Split Closing
-- ============================================

-- Close current split (keeps buffer open)
vim.keymap.set('n', '<leader>x', ':close<CR>')

-- Close all other splits (keep only current)
vim.keymap.set('n', '<leader>o', ':only<CR>')

-- ============================================
-- Resize 
-- ============================================

-- Use Shift + arrows instead
vim.keymap.set('n', '<S-Left>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<S-Right>', ':vertical resize -2<CR>')

-- Equalize
vim.keymap.set('n', '<leader>=', '<C-w>=')
