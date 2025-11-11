-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

function P(obj)
  print(vim.inspect(obj))
end

local opts = { noremap = true, silent = true }


function get_opts(desc_text)
    return { noremap = true, silent = true, desc = desc_text }
end


local term_opts = { silent = true }

-- Shorten function name
-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- save shift for commands
-- keymap("n", ";", ":", opts)

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
-- TIP: Disable arrow keys in normal mode
-- keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', get_opts('Move focus to the left window'))
keymap('n', '<C-l>', '<C-w><C-l>', get_opts('Move focus to the right window'))
keymap('n', '<C-j>', '<C-w><C-j>', get_opts('Move focus to the lower window'))
keymap('n', '<C-k>', '<C-w><C-k>', get_opts('Move focus to the upper window'))
-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- keymap("n", "<C-S-h>", "<C-w>H", get_opts("Move window to the left"))
-- keymap("n", "<C-S-l>", "<C-w>L", get_opts("Move window to the right"))
-- keymap("n", "<C-S-j>", "<C-w>J", get_opts("Move window to the lower"))
-- keymap("n", "<C-S-k>", "<C-w>K", get_opts("Move window to the upper"))


-- Sesize with arrows
keymap("n", "<C-,>", ":vertical resize -3<CR>", opts)
keymap("n", "<C-.>", ":vertical resize +3<CR>", opts)

-- quickfix file navigation
keymap("n", "<C-n>", "<CMD>cnext<CR>", opts)
keymap("n", "<C-p>", "<CMD>cprevious<CR>", opts)

-- Run Lua Code
keymap("n", "<space><space>x", "<CMD>source %<CR>", get_opts("Run Current File"))
keymap("n", "<space>x", "<CMD>.lua<CR>", get_opts("Run Current line"))
-- keymap("v", "<space>x", ":lua<CR>", get_opts("Run Selected text"))


-- Diagnostic keymaps
-- keymap('n', '<leader>q', vim.diagnostic.setloclist, get_opts('Open diagnostic [Q]uickfix list'))


-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "p", '"_dP', opts)


-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- run tests
-- keymap("n", ",t", ":wa | !./run_tests.sh<CR>", opts)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>', opts)


-- Terminal --
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
keymap("t", "<ESC>", "<C-\\><C-N>", term_opts)
keymap("t", "<C-V><ESC>", "<ESC>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Shrug ¯\_(ツ)_/¯
vim.cmd.abbr { args = { "shrug", "¯\\_(ツ)_/¯" } }


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
