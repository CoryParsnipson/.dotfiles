require "nvchad.options"

local opt = vim.opt
opt.termguicolors = true
opt.whichwrap = "<,>,b,s,[,]"
opt.wrap = false

opt.number = true
opt.colorcolumn = "80"

opt.cursorlineopt = "both"

opt.listchars = "tab:▷▷⋮"
opt.list = true -- show invisible characters

opt.expandtab = false
opt.copyindent = true
opt.preserveindent = true
