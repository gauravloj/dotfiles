local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- save shift for commands
keymap("n", ";", ":", opts)

-- Run last macro with Q
keymap("n", "Q", "@@", opts)

-- copy till line end with Y
keymap("n", "Y", "y$", opts)
keymap("n", "s", '"_d', opts)
keymap("n", "S", '"_c', opts)
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
keymap("n", "<leader>yd", '"*d', opts)
keymap("n", "<leader>yc", '"*c', opts)
keymap("n", "<leader>yy", '"*y', opts)
keymap("n", "<leader>yp", '"*p', opts)
keymap("n", "<leader>yP", '"*P', opts)
keymap("n", "<leader>yY", '"*y$', opts)

-- Avoid using arrow keys
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

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

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

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

-- quickfix file navigation
keymap("n", "<C-n>", "<CMD>cnext<CR>", opts)
keymap("n", "<C-p>", "<CMD>cprevious<CR>", opts)

-- debugging

keymap("n", "<leader>dc", ":lua require('dap').continue()<CR>", opts)
keymap("n", "<leader>do", ":lua require('dap').step_over()<CR>", opts)
keymap("n", "<leader>di", ":lua require('dap').step_into()<CR>", opts)
keymap("n", "<leader>dO", ":lua require('dap').step_out()<CR>", opts)
keymap("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>dB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>", opts)
keymap("n", "<leader>dr", ":lua require('dap').repl.open()<CR>", opts)

-- run tests
keymap("n", ",t", ":wa | !./run_tests.sh<CR>", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Shrug ¯\_(ツ)_/¯

-- keymap("i", ",shrug", "¯\\_(ツ)_/¯", opts)
vim.cmd([[abbreviate shrug ¯\_(ツ)_/¯]])
