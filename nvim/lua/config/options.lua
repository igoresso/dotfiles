-- Leader keys
vim.g.mapleader = " "

-- Indentation
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.tabstop = 2      -- Number of spaces per tab
vim.opt.softtabstop = 2  -- Number of spaces per tab in insert mode
vim.opt.shiftwidth = 2   -- Number of spaces to use for each autoindent

-- Splits
vim.opt.splitright = true -- Vertical splits to the right
vim.opt.splitbelow = true -- Horizontal splits to the bottom

-- General options
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true    -- Show relative line numbers
vim.opt.cursorline = false        -- Highlight the current line
vim.opt.smartindent = true        -- Auto-indent new lines
vim.opt.termguicolors = true      -- Enable 24-bit RGB colors
vim.opt.ignorecase = true         -- Case-insensitive searching...
vim.opt.smartcase = true          -- Unless you type a capital letter
vim.opt.mouse = "a"               -- Enable mouse support
vim.opt.clipboard = "unnamedplus" -- Use the system clipboard
