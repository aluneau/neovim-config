-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ~/nvim/lua/slydragonn/settings.lua

local global = vim.g
local o = vim.opt

require("user.options")
require("config.lazy")
require("user.colorscheme")


