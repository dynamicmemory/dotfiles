return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<C-d>"] = false,
                    },
                },
            },
        })

        -- Load the fzf extension
        require("telescope").load_extension("fzf")

	-- Add keymaps
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find Files" })
        vim.keymap.set("n", "<C-p>", builtin.git_files, {})
        vim.keymap.set("n", "<leader>ps", function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
	end, { desc = "Search for String" })
	
    end,
}

