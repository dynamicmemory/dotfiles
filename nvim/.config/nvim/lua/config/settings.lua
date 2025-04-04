-- lua/settings.lua

-- General Settings
vim.o.number = true              -- Show line numbers
vim.o.relativenumber = true      -- Relative line numbers
vim.o.wrap = false               -- Don't wrap long lines
vim.o.scrolloff = 20              -- Keep 8 lines visible above/below the cursor

-- Indentation
vim.o.shiftwidth = 4            -- Indentation width for >>, << commands
vim.o.tabstop = 4               -- How many spaces a tab counts for
vim.o.expandtab = true          -- Use spaces instead of tabs
vim.o.smartindent = true        -- Enable smart indentation

-- Search settings
vim.o.ignorecase = true         -- Case insensitive search
vim.o.smartcase = true          -- Case-sensitive if search contains uppercase

-- Enable seach highlighting
vim.o.incsearch = true   -- Enable incremental search
vim.o.hlsearch = false   -- Enable highlight of search matches

-- Clipboard settings (if you want to use system clipboard)
vim.o.clipboard = "unnamedplus" -- Use the system clipboard

-- Line number and cursor behavior
vim.o.cursorline = true         -- Highlight the current line
vim.o.cursorcolumn = false      -- Highlight the current column

-- Performance settings
vim.o.updatetime = 300          -- Reduce the time between keypress and update (used for diagnostics, etc.)

-- Other UI settings
vim.o.termguicolors = true      -- Enable true color support
vim.o.showmatch = true          -- Highlight matching parenthesis

-- Show line and column number in the status line
vim.o.ruler = true

-- Auto Commands
vim.cmd("autocmd FileType * setlocal formatoptions-=cro")  -- Avoid automatically adding comment characters

-- -- Highlight TODO in comments using Vim syntax matching
-- vim.api.nvim_set_hl(0, "Todo", { fg = "#FF6347", bg = "#2E3440", bold = true })  -- Custom highlight for TODO
--
-- -- Automatically highlight TODO comments in any file type
-- vim.cmd([[
--   augroup HighlightTODOs
--     autocmd!
--     " Match 'TODO' in comments for all filetypes
--     autocmd BufRead,BufNewFile * syntax match Todo /TODO:/ containedin=comment
--   augroup END
-- ]])
--
-- -- Test examples:
-- -- TODO: Implement feature
-- -- -- TODO: Fix bug in code
