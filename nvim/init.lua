vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.lsp")
require("config.completion")
require("config.telescope")
require("config.terminal")
require("config.autoclose")
require("config.session")
require("config.explorer")

-- Netrw (file tree) settings
vim.g.netrw_banner = 0    -- Hide banner
vim.g.netrw_liststyle = 3 -- Tree view
vim.g.netrw_winsize = 25  -- Width of explorer (25%)
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.tabstop = 2      -- Number of spaces a tab represents
vim.opt.shiftwidth = 2   -- Number of spaces for each indentation
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.statusline = '%f %m %= %l/%L (%p%%)'

-- Template
vim.cmd("colorscheme unokai")

-- System clipboard interactions
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yanking existing selection" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

-- Navigate quickfix
vim.keymap.set('n', '<leader>cn', ':cnext<CR>', { desc = 'Next result' })
vim.keymap.set('n', '<leader>cp', ':cprev<CR>', { desc = 'Prev result' })
vim.keymap.set('n', '<leader>co', ':copen<CR>', { desc = 'Open results' })
vim.keymap.set('n', '<leader>cc', ':cclose<CR>', { desc = 'Close results' })

-- Make Enter work in quickfix
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    vim.keymap.set('n', '<CR>', '<CR>', { buffer = true })
  end,
})
