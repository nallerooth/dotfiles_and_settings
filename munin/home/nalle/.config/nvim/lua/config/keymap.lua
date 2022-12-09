 -- luacheck: globals vim

-- helps preserve sanity when mapping keys
local map = function (mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader key
vim.g.mapleader = " "

---------------------
--   Key mapping   --
---------------------

-----------------
--   General   --
-----------------
map('n', '<leader>w', ':w<CR>')

--------------------
--   Navigation   --
--------------------
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

------------------
--   NERDTree   --
------------------
map('n', '<leader>n', ':NvimTreeToggle<CR>')
map('n', '<leader>N', ':NvimTreeFindFile<CR>')

-------------------
--   Telescope   --
-------------------
map('n', '<leader>b', ':Telescope buffers<CR>')
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>t', ':Telescope<CR>')

