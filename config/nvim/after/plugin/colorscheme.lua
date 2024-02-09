vim.cmd([[
  try
    colorscheme onedark
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]])

-- onedark sets the termguicolors option.
if (os.getenv("COLORTERM") == "truecolor" or os.getenv("COLORTERM") == "24bit") then
  vim.opt.termguicolors = true
else
  vim.opt.termguicolors = false
end
