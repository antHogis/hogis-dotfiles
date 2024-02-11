-- Color scheme
-- vim.cmd.colorscheme("darcula-dark")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- Window title
vim.opt.title = true
-- vim.opt.titlelen = 0 -- do not shorten title
vim.opt.titlestring = '%{expand("%:p")}'

-- Indentation
vim.opt.shiftwidth=4
vim.opt.tabstop = 4

