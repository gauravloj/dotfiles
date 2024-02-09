local options = {
  autoread = true,               -- automatically reads a file if changes outside nvim
  backspace = "indent,eol,start", -- Include indent, eol and start on backspace
  backup = false,                -- creates a backup file
  backupext = ".bak",            -- append an extension to a file name to make a backup file
  -- clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  -- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect", "longest" }, -- mostly just for cmp
  compatible = false,                                -- make it incompatible with legacy vi
  conceallevel = 0,                                  -- so that `` is visible in markdown files
  cursorline = true,                                 -- highlight the current line
  cursorlineopt = "number",                          -- highlight current line number
  expandtab = true,                                  -- convert tabs to spaces
  fileencoding = "utf-8",                            -- the encoding written to a file
  -- guifont = "monospace:h17",               -- the font used in graphical neovim applications
  hlsearch = true,                                   -- highlight all matches on previous search pattern
  ignorecase = true,                                 -- ignore case in search patterns
  incsearch = true,                                  -- enable incremental search
  lazyredraw = true,                                 -- avoid redrawing screen after each step of macro
  mouse = "",                                        -- don't allow the mouse to be used in neovim
  nrformats = { "bin", "hex", "alpha" },             -- binary and hexadecimal numbers
  number = true,                                     -- set numbered lines
  numberwidth = 4,                                   -- set number column width to 2 {default 4}
  pumblend = 0,                                      -- Transparancy for pop up menu
  pumheight = 10,                                    -- pop up menu height
  relativenumber = true,                             -- set relative numbered lines
  scrolloff = 4,                                     -- is one of my fav
  shiftwidth = 2,                                    -- the number of spaces inserted for each indentation
  shiftround = true,                                 -- round indent
  -- showcmd = true,
  showmode = false,                                  -- we don't need to see things like -- INSERT -- anymore
  -- showtabline = 2,                         -- always show tabs
  sidescrolloff = 4,
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  smartcase = true,  -- smart case
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  -- startofline = false, -- don't go to the start of the line when moving to another file
  swapfile = false,  -- creates a swapfile
  tabstop = 2,       -- insert 2 spaces for a tab
  timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,   -- enable persistent undo
  updatetime = 300,  -- faster completion (4000ms default)
  -- wildemenu = true,
  -- whichwrap = {"a", "o", "O", "t", "T", "I"},
  wrap = true,        -- display lines as one long line
  -- wrapscan = false, -- don't wrap around the search after search the last item in the buffer
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

-- Use above table to set options
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")
vim.opt.shortmess:append("cmrw")
vim.opt.diffopt:append("vertical") -- open diff in vertical split
vim.opt.display:append("uhex")

-- onedark sets the termguicolors option.
if (os.getenv("COLORTERM") == "truecolor" or os.getenv("COLORTERM") == "24bit") then
  vim.opt.termguicolors = true
else
  vim.opt.termguicolors = false
end


-- experiment with linebreak, breakat, showbreak, breakindent

