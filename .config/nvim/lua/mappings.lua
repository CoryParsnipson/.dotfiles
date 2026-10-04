require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local ss = require "smart-splits"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--- smart-splits: must come AFTER nvchad.mappings, which binds <C-hjkl> to <C-w>hjkl
map("n", "<C-h>", ss.move_cursor_left,  { desc = "Window move left" })
map("n", "<C-j>", ss.move_cursor_down,  { desc = "Window move down" })
map("n", "<C-k>", ss.move_cursor_up,    { desc = "Window move up" })
map("n", "<C-l>", ss.move_cursor_right, { desc = "Window move right" })

map("n", "<A-h>", ss.resize_left,  { desc = "Window resize left" })
map("n", "<A-j>", ss.resize_down,  { desc = "Window resize down" })
map("n", "<A-k>", ss.resize_up,    { desc = "Window resize up" })
map("n", "<A-l>", ss.resize_right, { desc = "Window resize right" })
