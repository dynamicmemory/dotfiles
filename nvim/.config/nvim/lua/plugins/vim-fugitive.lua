return {
    "tpope/vim-fugitive",
    config = function()
        -- Optional: Set up key mappings for fugitive commands
        vim.keymap.set("n", "<leader>gs", ":Gstatus<CR>", { desc = "Git Status" })
        vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>", { desc = "Git Commit" })
        vim.keymap.set("n", "<leader>gp", ":Gpush<CR>", { desc = "Git Push" })
        vim.keymap.set("n", "<leader>gl", ":Glog<CR>", { desc = "Git Log" })
        vim.keymap.set("n", "<leader>gb", ":Gblame<CR>", { desc = "Git Blame" })
    end,
}

