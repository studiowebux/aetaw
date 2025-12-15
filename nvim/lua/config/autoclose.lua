local autopairs = {
  ['('] = ')',
  ['['] = ']',
  ['{'] = '}',
  ['"'] = '"',
  ["'"] = "'",
  ['`'] = '`',
  ['<'] = '>',
}

for open, close in pairs(autopairs) do
  vim.keymap.set('i', open, open .. close .. '<Left>')
end
