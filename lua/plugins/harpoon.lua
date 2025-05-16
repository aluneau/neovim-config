return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    local telescope = require("telescope")


    -- Keymaps
    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon add file" })
    vim.keymap.set("n", "<leader>d", mark.rm_file, { desc = "Harpoon remove current file" })

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Harpoon file 1" })
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "Harpoon file 2" })
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "Harpoon file 3" })
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "Harpoon file 4" })

    -- Telescope integration
    telescope.load_extension("harpoon")
    vim.keymap.set("n", "<leader>h", ":Telescope harpoon marks<CR>", { desc = "Telescope Harpoon menu" })
  end,
}

