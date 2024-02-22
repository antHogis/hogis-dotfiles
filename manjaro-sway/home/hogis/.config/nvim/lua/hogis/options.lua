-- Color scheme
-- SCHEME: darcula
--vim.cmd.colorscheme("darcula-dark")
-- SCHEME: gruvbox 
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- SCHEME: kanagawa
-- vim.cmd("colorscheme kanagawa-dragon")
-- SCHEME: Melange
-- vim.opt.termguicolors = true
-- vim.cmd.colorscheme 'melange'

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Window title
vim.opt.title = true
vim.opt.titlelen = 0 -- do not shorten title
vim.opt.titlestring = 'nvim %{expand("%:p")}'

-- Indentation
vim.opt.shiftwidth=4
vim.opt.tabstop = 4

