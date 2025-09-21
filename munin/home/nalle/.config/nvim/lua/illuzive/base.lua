-- Map leader key so that everything else uses this mapping
vim.g.mapleader = " "

-- Misc keymaps
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)


-- Editor preferences
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Look and feel
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
