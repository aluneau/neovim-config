-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ~/nvim/lua/slydragonn/settings.lua
local global = vim.g
local o = vim.opt

require("user.options")
require("config.lazy")
require("user.colorscheme")
require('gitsigns').setup()
require("user.colorscheme")
require("colorizer").setup({
  user_default_options = {
    css_fn = true,
    css = true,
    tailwind = true,
  },
})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A>', ':split | resize 20 | terminal<CR>', { noremap = true, silent = true })
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fj', builtin.jumplist, { desc = 'Telescope jumplist'})
