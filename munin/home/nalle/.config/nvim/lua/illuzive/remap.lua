vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ec", "<cmd>tabnew $HOME/.config/nvim/<CR>")

vim.keymap.set("n", "<C-u>", vim.cmd.UndotreeToggle)

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- Scrolling without moving cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Yanking
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Quickfix
vim.keymap.set("n", "<leader>h", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- GitGutter
vim.keymap.set("n", "[g", "<cmd>GitGutterPrevHunk<CR>")
vim.keymap.set("n", "]g", "<cmd>GitGutterNextHunk<CR>")

-- Terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Nerdtree --
vim.keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<CR>")
