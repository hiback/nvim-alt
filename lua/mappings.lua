require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Insert Mode
map("i", "jj", "<ESC>")

-- Visual Mode
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Normal Mode
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>nh", ":nohl<CR>")
map("n", "H", "^")
map("n", "L", "$")
map("n", "J", "<C-d>")
map("n", "K", "<C-u>")
