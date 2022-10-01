local opts = {
	noremap = true,
	silent = true,
}

local km = vim.api.nvim_set_keymap

-- Set space as the leader key
km("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quick Config
km("n", "<leader>c", ":e ~/.config/nvim/lua/user<CR>", opts)

-- Qucik Save
km("n", "<C-s>", ":w <CR>", opts)
km("i", "<C-s>", "<ESC>:w<CR>", opts)
km("v", "<C-s>", "<ESC>:w<CR>", opts)

-- Window Navigation
km("n", "<C-h>", "<C-w>h", opts)
km("n", "<C-j>", "<C-w>j", opts)
km("n", "<C-k>", "<C-w>k", opts)
km("n", "<C-l>", "<C-w>l", opts)

-- Resize Window
km("n", "<C-Up>", ":resize +2<CR>", opts)
km("n", "<C-Down>", ":resize -2<CR>", opts)

km("n", "<C-Left>", ":vertical resize -2<CR>", opts)
km("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer Navigation
km("n", "<S-l>", ":bnext<CR>", opts)
km("n", "<S-h>", ":bprevious<CR>", opts)

-- Indent with Tab and Shift Tab
km("v", "<Tab>", ">gv", opts)
km("v", "<S-Tab>", "<gv", opts)

-- Move text up and down
km("v", "<J>", ":m .+1<CR>==", opts)
km("v", "<K>", ":m .-2<CR>==", opts)
km("v", "p", '"_dP', opts)

-- Move text up and down
km("x", "J", ":move '>+1<CR>gv-gv", opts)
km("x", "K", ":move '<-2<CR>gv-gv", opts)
km("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
km("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope
km("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
km("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
km("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
km("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

-- Nvim Tree
km("n", "<leader>b", ":NvimTreeToggle<CR>", opts)

-- ToggleTerm
km("n", "<C-t>", "<CMD>exe v:count1 . 'ToggleTerm'<CR>", opts)
km("i", "<C-t>", "<ESC><CMD>exe v:count1 . 'ToggleTerm'<CR>", opts)
km("t", "<C-t>", "<ESC><CMD>exe v:count1 . 'ToggleTerm'<CR>", opts)

-- More keymaps to be added
