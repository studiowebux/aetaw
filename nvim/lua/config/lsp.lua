vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  -- Sets the "workspace" to the directory where any of these files is found.
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
    ".git",
  },
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
})

-- Now that the language server is configured, it must be enabled
vim.lsp.enable('lua_ls')

-- Deno (TypeScript/JavaScript)
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'json', 'jsonc', 'markdown' },
  callback = function()
    vim.lsp.start({
      name = 'denols',
      cmd = { 'deno', 'lsp' },
      root_dir = vim.fs.dirname(vim.fs.find({ 'deno.json', 'deno.jsonc' }, { upward = true })[1]),
      init_options = {
        enable = true,
        lint = true,
        unstable = true,
      },
    })
  end,
})



-- Go
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.lsp.start({
      name = 'gopls',
      cmd = { 'gopls' },
      root_dir = vim.fs.dirname(vim.fs.find({ 'go.mod', 'go.work' }, { upward = true })[1]),
    })
  end,
})

-- -- Markdown
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'markdown',
--   callback = function()
--     vim.lsp.start({
--       name = 'marksman',
--       cmd = { 'marksman', 'server' },
--       root_dir = vim.fs.dirname(vim.fs.find({ '.git', '.marksman.toml' }, { upward = true })[1]) or
--       vim.fn.expand('%:p:h'),
--     })
-- 
--     vim.bo.formatprg = 'deno fmt --ext md -'
--   end,
-- })

-- Keybindings for LSP
--
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, { desc = 'Format buffer' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)       -- Go to declaration
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)    -- Go to implementation
vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition)   -- Go to type definition
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help) -- Show function signature

vim.diagnostic.config({
  virtual_text = true,      -- Show errors at end of line
  signs = true,             -- Show signs in gutter
  underline = true,         -- Underline errors
  update_in_insert = false, -- Don't update while typing
  severity_sort = true,     -- Show most severe first
})
vim.diagnostic.config({
  virtual_text = { prefix = '●', spacing = 2 },
})
vim.keymap.set('n', '<leader>D', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>lo', ':lopen<CR>')
vim.keymap.set('n', '<leader>lc', ':lclose<CR>')
vim.keymap.set('n', '[l', ':lprev<CR>')
vim.keymap.set('n', ']l', ':lnext<CR>')
