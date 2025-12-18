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

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to window below' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to window above' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })

-- ============================================
-- Split Creation
-- ============================================

vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = 'Horizontal split' })

-- ============================================
-- Split Closing
-- ============================================

vim.keymap.set('n', '<leader>x', ':close<CR>', { desc = 'Close window' })
vim.keymap.set('n', '<leader>o', ':only<CR>', { desc = 'Only this window' })

-- ============================================
-- Resize
-- ============================================

vim.keymap.set('n', '<S-Left>', ':vertical resize +2<CR>', { desc = 'Increase width' })
vim.keymap.set('n', '<S-Right>', ':vertical resize -2<CR>', { desc = 'Decrease width' })
vim.keymap.set('n', '<leader>=', '<C-w>=', { desc = 'Equalize windows' })
