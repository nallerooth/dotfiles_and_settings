-- luacheck: globals vim

-- Keep things separated
require('config.keymap')
require('config.packer')
require('config.visual')
require('config.plugin-settings')
require('config.lsp')

local set = vim.opt

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 0
set.scrolloff = 3

set.number = true
set.relativenumber = true
set.expandtab = true
set.autoindent = true
-- set showcmd

set.swapfile = false
set.history = 50 -- Keep 50 lines of command line history

-- Allow backspacing over everything in insert mode
set.backspace = {
    'indent',
    'eol',
    'start',
}

-- disable netrw at the very start of your init.lua (adviced by NvimTree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Global commands
-- Example with args:
-- vim.api.nvim_create_user_command('Upper', 'echo toupper(<q-args>)', { nargs = 1 })
vim.api.nvim_create_user_command('ReloadNvim', ':source ~/.config/nvim/init.lua', {})
vim.api.nvim_create_user_command('EditConfig', ':tabnew ~/.config/nvim/init.lua', {})

-- Autocmds

-- Strip trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- TODO:
-- autocmd filetype settings
