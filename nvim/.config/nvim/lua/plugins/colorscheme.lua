return {
    "folke/tokyonight.nvim",
    priority = 1000, -- Ensures the colorscheme loads first
    config = function()
        -- Optional: Customize the Tokyonight theme
        require("tokyonight").setup({
            style = "night",        -- Choose from: "night", "storm", "day", "moon"
            transparent = false,    -- Enable/disable background transparency
            terminal_colors = true, -- Apply the theme to terminal colors
            styles = {
                comments = { italic = true },
                keywords = { italic = false },
                functions = { bold = true },
                variables = {},
            },
            sidebars = { "qf", "help" }, -- Set special colors for sidebars
            hide_inactive_statusline = true,
        })

        -- Apply the colorscheme
        vim.cmd("colorscheme tokyonight")
    end,
}
