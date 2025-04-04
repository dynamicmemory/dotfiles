return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },  -- Optional: Add Treesitter text objects support
    run = ":TSUpdate", -- Automatically update Treesitter parsers after installation
    config = function()
        -- Setup nvim-treesitter
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "lua", "python", "markdown", "sql" }, -- Install all parsers (you can specify specific ones too, e.g. {"lua", "python"})
            sync_install = false,      -- Install parsers asynchronously
            highlight = {
                enable = true,          -- Enable Treesitter syntax highlighting
                additional_vim_regex_highlighting = false,  -- Disable Vim regex highlighting (optional)
            },
            indent = {
                enable = true,          -- Enable Treesitter indentation
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,  -- Enable smart selection of text objects
                    keymaps = {
                        ["af"] = "@function.outer", -- Select entire function
                        ["if"] = "@function.inner", -- Select inner function
                        ["ac"] = "@class.outer",    -- Select entire class
                        ["ic"] = "@class.inner",    -- Select inner class
                    },
                },
            },
        })
         -- Add todos to highlight in Treesitter
        -- vim.api.nvim_set_hl(0, "TODO", { fg = "#FF6347", bg = "#2E3440", bold = true })  -- Highlight TODOs
        -- vim.api.nvim_set_hl(0, '@comment.todo', { link = 'TODO' })  -- Link @comment.todo to TODO highlight group
    end,
}

-- TODO: test 
-- TODO test 
-- Todo test 
-- Todo: test 
