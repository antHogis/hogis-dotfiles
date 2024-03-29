-- Note, telescope uses ripgrep. Ripgrep configured with .ripgreprc to show hidden files

require('telescope').setup({
  pickers = {
    current_buffer_fuzzy_find = { sorting_strategy = 'ascending' },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
--vim.keymap.set('n', '<leader>ps', function ()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") });
--end)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
