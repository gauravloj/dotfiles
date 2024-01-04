vim.cmd([[
try
  colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

-- onedark sets the termguicolors option.
-- Henve resetting it here
if os.getenv("TERM_PROGRAM") == "Apple_Terminal" then
	vim.opt.termguicolors = false
else
	vim.opt_global.termguicolors = true
end
