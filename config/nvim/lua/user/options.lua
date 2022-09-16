local options = {
	autoread = true, -- automatically reads a file if changes outside nvim
	backspace = "indent,eol,start", -- Include indent, eol and start on backspace
	backup = false, -- creates a backup file
	-- clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
	-- cmdheight = 2,                           -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	cursorline = true, -- highlight the current line
	cursorlineopt = "number", -- highlight current line number
	expandtab = true, -- convert tabs to spaces
	fileencoding = "utf-8", -- the encoding written to a file
	-- guifont = "monospace:h17",               -- the font used in graphical neovim applications
	hlsearch = true, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	incsearch = true, -- enable incremental search
	lazyredraw = true, -- avoid redrawing screen after each step of macro
	-- mouse = "a",                             -- allow the mouse to be used in neovim
	number = true, -- set numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	pumblend = 0, -- Transparancy for pop up menu
	pumheight = 10, -- pop up menu height
	relativenumber = true, -- set relative numbered lines
	scrolloff = 4, -- is one of my fav
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	-- showcmd = true,
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	-- showtabline = 2,                         -- always show tabs
	sidescrolloff = 4,
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	tabstop = 2, -- insert 2 spaces for a tab
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 300, -- faster completion (4000ms default)
	-- wildemenu = true,
	wrap = true, -- display lines as one long line
	-- wrapscan = false, -- don't wrap around the search after search the last item in the buffer
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
}

vim.opt.shortmess:append("c")
-- vim.opt.shortmess:append("cmrw")
vim.opt.diffopt:append("vertical") -- open diff in vertical split

-- statusline settings
-- vim.opt.statusline =

-- vim.notify("snsha: " .. os.getenv("TERM_PROGRAM"))

vim.cmd("echo $TERM_PROGRAM")
if os.getenv("TERM_PROGRAM") == "Apple_Terminal" then
	vim.opt.termguicolors = false
else
	vim.opt.termguicolors = true
end

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
