-- Leader
vim.g.mapleader = ","

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- Remove swap files and replace them with long running undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Avoid dumb case stuff
vim.opt.ignorecase = true;
vim.opt.smartcase = true;

-- Incremental search
vim.opt.incsearch = true

-- Fast scroll
vim.opt.ttyfast = true

-- Never less than 8 lines below or above
vim.opt.scrolloff = 8

-- Overclock
vim.opt.updatetime = 50

-- Just let's you know where 80 chars is
vim.opt.colorcolumn = "80"

-- Clipboard
vim.opt.clipboard = "unnamedplus"
