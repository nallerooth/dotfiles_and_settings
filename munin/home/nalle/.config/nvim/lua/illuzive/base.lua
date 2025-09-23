-- Map leader key first, so that all plugins get the correct leader
vim.g.mapleader = " "

-- Misc keymaps
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ec", "<cmd>tabnew $HOME/.config/nvim/<CR>")

-- Keep cursor in the middle of the screen when navigating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Yanking
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Editor preferences
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Look and feel
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
vim.opt.hlsearch = false

-- Backup and undo
-- Swap and backup
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo/"
vim.opt.undofile = true
