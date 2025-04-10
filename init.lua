-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ~/nvim/lua/slydragonn/settings.lua

local global = vim.g
local o = vim.opt

require("user.options")
require("config.lazy")
require("user.colorscheme")
require'cmp'.setup {
  sources = {
    { name = 'path' }
  }
}
require("scrollbar").setup()
require('gitsigns').setup()

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A>', ':split | resize 20 | terminal<CR>', { noremap = true, silent = true })

