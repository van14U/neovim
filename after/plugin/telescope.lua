if vim.g.vscode then
  return 
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>l', function ()
  builtin.buffers({
    sort_lastused = true,
    --ignore_current_buffer = true,
  })
end
, {})
vim.keymap.set('n', '<C-l>', '<C-^>')

