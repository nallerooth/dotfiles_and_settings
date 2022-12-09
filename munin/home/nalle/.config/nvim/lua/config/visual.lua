-- luacheck: globals vim

-- Colorscheme and such
vim.cmd [[ colorscheme base16-tender ]]
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]] -- fix transparent background

-- Highlight col 80
vim.cmd [[ highlight ColorColumn ctermbg=234 ]]
vim.cmd [[ set colorcolumn=80 ]]

-- Highlight current line
vim.cmd [[ set cursorline ]]
