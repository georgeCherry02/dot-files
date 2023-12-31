local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>e', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>E', builtin.live_grep, {});
