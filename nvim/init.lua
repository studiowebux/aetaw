vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.lsp")
require("config.completion")
require("config.telescope")
require("config.terminal")
require("config.session")
require("config.explorer")
require("config.windows")

-- Netrw (file tree) settings
vim.o.number = true
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

-- Disable error bells
vim.opt.errorbells = false
vim.opt.visualbell = true

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 20

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'

vim.o.confirm = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

vim.keymap.set("n", "<leader>T", ":TodoQuickFix<CR>", { desc = "Show all todos in quickfix list" })
