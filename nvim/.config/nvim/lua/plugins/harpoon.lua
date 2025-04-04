return {
    "ThePrimeagen/harpoon",
    config = function()
        -- Setup harpoon
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        -- Keymaps for Harpoon
        vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add File to Harpoon" })  -- Add current file to Harpoon
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon Menu" })  -- Toggle Harpoon menu

        -- Harpoon navigation keymaps
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(1) end, { desc = "Navigate to file 1" })
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(2) end, { desc = "Navigate to file 2" })
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Navigate to file 3" })
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Navigate to file 4" })
    end,
}

