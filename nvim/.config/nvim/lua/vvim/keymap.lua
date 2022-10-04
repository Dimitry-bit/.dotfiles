local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Capitalize word under cusor
-- keymap("n", "<c-u>", "viwU<Esc>", opts)

-- nnoremap("<Leader>o", "o<Esc>^Da")
-- nnoremap("<Leader>O", "O<Esc>^Da")
keymap("n", "<leader>fd", ":Ex<CR>", opts)

-- TAB in general mode will move to text buffer
-- SHIFT-TAB will go back 
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)

-- Easy CAPS
keymap("i", "<c-u>", "<ESC>viwUi", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<A-1>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>op", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>.", ":Telescope file_browser<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers theme=dropdown previewer=false<CR>", opts)

-- Comment
keymap("n", "<C-/>", "<Plug>(comment_toggle_linewise_current)", opts)
keymap("n", "<C-S-/>", "<Plug>(comment_toggle_blockwise_current)", opts)
keymap("v", "<C-/>", "<Plug>(comment_toggle_linewise_current)", opts)
keymap("v", "<C-S-/>", "<Plug>(comment_toggle_blockwise_current)", opts)
