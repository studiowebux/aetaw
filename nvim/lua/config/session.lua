local session_dir = vim.fn.stdpath('data') .. '/sessions/'

-- Create sessions directory if it doesn't exist
vim.fn.mkdir(session_dir, 'p')

-- Get a session file path based on cwd
local function get_session_file()
  local cwd = vim.fn.getcwd()
  local session_name = cwd:gsub('/', '%%') .. '.vim'
  return session_dir .. session_name
end

-- Auto-save session on exit
vim.api.nvim_create_autocmd('VimLeavePre', {
  callback = function()
    vim.cmd('mksession! ' .. vim.fn.fnameescape(get_session_file()))
  end,
})

-- Auto-load session on start (if no files were passed and session exists)
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if vim.fn.argc() == 0 then
      local session_file = get_session_file()
      if vim.fn.filereadable(session_file) == 1 then
        vim.cmd('source ' .. vim.fn.fnameescape(session_file))
        -- Re-trigger events for plugins
        vim.cmd('doautoall BufReadPost')
        vim.cmd('doautoall FileType')
      end
    end
  end,
})

vim.keymap.set('n', '<leader>sd', function()
  os.remove(get_session_file())
  print('Session deleted')
end)
