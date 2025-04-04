-- Due to how I load my plugins last as lazy configs all of them and lazy needs
-- a few settings i have in my settings file loaded before it is...... i have 
-- to put this here so i can load the color column after my colorscheme.. sigh.

-- Adds a column of colour at column 80 of all my coding pages >>>>>>>>>>>>>>>>
vim.api.nvim_set_hl(0, "colorcolumn", { bg = "#3B4252" })
vim.o.colorcolumn = "80,100,120"        -- >>>>>>>>>>>>>>>>>dis over ere>>>>>>>>>>>>>>>  

-- Add todos to highlight in the lsp, treesitter, whatever
-- vim.api.nvim_set_hl(0, '@text.note', {link = 'TODO', bg = "#000000"})

