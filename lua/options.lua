require "nvchad.options"

-- add yours here!

local o = vim.opt

-- clipboard
vim.api.nvim_set_option("clipboard","unnamed")

-- Search
o.ignorecase = true
o.smartcase = true

-- Line Number
o.relativenumber = true
o.number = true

-- Indent
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
