-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`



local options = {
  autoread = true,                            -- automatically reads a file if changes outside nvim
  backspace = "indent,eol,start",              -- Include indent, eol and start on backspace
  backup = false,                             -- creates a backup file
  backupext = ".bak",                         -- append an extension to a file name to make a backup file
  breakindent = true,                         -- Enable break indent
  -- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect", "longest" }, -- mostly just for cmp
  compatible = false,                                -- make it incompatible with legacy vi
  conceallevel = 0,                                  -- so that `` is visible in markdown files

  -- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
  -- instead raise a dialog asking if you wish to save the current file(s)
  -- See `:help 'confirm'`
  confirm = true,
  cursorline = true,                                 -- highlight the current line
  cursorlineopt = "number",                          -- highlight current line number
  expandtab = true,                                  -- convert tabs to spaces
  fileencoding = "utf-8",                            -- the encoding written to a file
  -- guifont = "monospace:h17",               -- the font used in graphical neovim applications
  hlsearch = true,                                   -- highlight all matches on previous search pattern
  ignorecase = true,                                 -- ignore case in search patterns
  -- inccommand = 'split',                              -- Preview substitutions live, as you type!
  incsearch = true,                                  -- enable incremental search
  lazyredraw = true,                                 -- avoid redrawing screen after each step of macro

  -- Sets how neovim will display certain whitespace characters in the editor.
  --  See `:help 'list'` and `:help 'listchars'`
  list = true,
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  mouse = "",                                        -- don't allow the mouse to be used in neovim
  nrformats = { "bin", "hex", "alpha" },             -- binary and hexadecimal numbers
  number = true,                                     -- Make line numbers default
  numberwidth = 4,                                   -- set number column width to 2 {default 4}
  pumblend = 0,                                      -- Transparancy for pop up menu
  pumheight = 10,                                    -- pop up menu height
  relativenumber = true,                             -- set relative numbered lines
  scrolloff = 4,                                     -- Minimal number of screen lines to keep above and below the cursor.
  shiftwidth = 2,                                    -- the number of spaces inserted for each indentation
  shiftround = true,                                 -- round indent
  -- showcmd = true,
  showmode = false,                                  -- we don't need to see things like -- INSERT -- anymore, since it's already in the status line
  -- showtabline = 2,                         -- always show tabs
  sidescrolloff = 4,
  signcolumn = "yes",              -- always show the sign column, otherwise it would shift the text each time
  smartcase = true,               -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
  smartindent = true,              -- make indenting smarter again
  splitbelow = true,              -- force all horizontal splits to go below current window
  splitright = true,              -- force all vertical splits to go to the right of current window
  -- startofline = false, -- don't go to the start of the line when moving to another file
  swapfile = false,               -- creates a swapfile
  tabstop = 2,                    -- insert 2 spaces for a tab
  timeoutlen = 300,              -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                -- Save undo history
  updatetime = 300,               -- faster completion (4000ms default)
  -- wildemenu = true,
  -- whichwrap = {"a", "o", "O", "t", "T", "I"},
  wrap = true,                     -- display lines as one long line
  -- wrapscan = false,              -- don't wrap around the search after search the last item in the buffer
  writebackup = false,              -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

-- Use above table to set options
-- Notice using `vim.opt` instead of `vim.o`.
-- It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
-- See `:help lua-options` and `:help lua-options-guide`
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- experiment with linebreak, breakat, showbreak, breakindent
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
vim.opt.shortmess:append("cmrw")
vim.opt.diffopt:append("vertical") -- open diff in vertical split
vim.opt.display:append("uhex")


-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.o.clipboard = 'unnamedplus'
-- end)


-- onedark sets the termguicolors option.
if (os.getenv("COLORTERM") == "truecolor" or os.getenv("COLORTERM") == "24bit") then
  vim.opt.termguicolors = true
else
  vim.opt.termguicolors = false
end

--  ]]

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
