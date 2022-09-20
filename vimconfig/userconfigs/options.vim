" autocommand for extra whitespaces at the end of line
" set  completeopt 
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
colorscheme elflord
filetype indent on    " Load an indent file for the detected file type.
set autoindent        " turns it on
set autoread "  automatically reads a file if changes outside nvim
set backspace=indent,eol,start           "  Include indent, eol and start on backspace
set completeopt=menuone,noselect "  mostly just for cmp
set conceallevel=0                        "  so that `` is visible in markdown files
set cursorline                        "  highlight the current line
set cursorlineopt=number
set cursorlineopt=number                 "  highlight current line number 
set diffopt+=filler,vertical     " Setting diff split to vertical
set eadirection=ver     " test
set expandtab		" covert tab to spaces 
set fileencoding=utf-8                  "  the encoding written to a file
set foldcolumn=4	" enable fold column to disply fold cues
set foldenable		" enable folds
set hlsearch          " Enable search term highlight
set ignorecase        " Enable case insensitive search
set incsearch         " Enable on the go search
set iskeyword+=-
set lazyredraw 
set nobackup                           "  creates a backup file
set nocompatible	" Use VIM instead of vi
set norelativenumber 
set noshowmode "  we don't need to see things like -- INSERT -- anymore
set noswapfile "  creates a swapfile
set nowritebackup 
set number "  set numbered lines
set numberwidth=4                         "  set number column width to 2 {default 4}
set pumheight=10                          "  pop up menu height
set scrolloff=8                           "  is one of my fav
set shiftwidth=4      " indenting is 4 spaces
set showmatch         " enable display of parenthesis matching
set sidescrolloff=4
set signcolumn=yes                      "  always show the sign column, otherwise it would shift the text each time
set smartcase		" Override ignorecase search specifically for capital letters.
set smartindent "  make indenting smarter again
set splitbelow "  force all horizontal splits to go below current window
set splitright "  force all vertical splits to go to the right of current window
set tabstop=4		" indent level for tab
set timeoutlen=1000                        "  time to wait for a mapped sequence to complete (in milliseconds)
set undofile 
set updatetime=300                        "  faster completion (4000ms default)
set whichwrap+=<,>,[,],h,l 
set wildmenu
set wrap 
syntax on             " Enable syntax 
