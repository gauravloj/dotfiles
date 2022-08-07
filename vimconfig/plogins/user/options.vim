set nocompatible	" Use VIM instead of vi
set foldenable		" enable folds
set foldcolumn=4	" enable fold column to disply fold cues
set number		" enable line numbers
set diffopt=filler,vertical     " Setting diff split to vertical
syntax on             " Enable syntax 
set incsearch         " Enable on the go search
set hlsearch          " Enable search term highlight
set showmatch         " enable display of parenthesis matching
set ignorecase        " Enable case insensitive search
set autoindent        " turns it on
set smartindent       " does the right thing (mostly) in programs
filetype indent on    " Load an indent file for the detected file type.
set shiftwidth=4      " indenting is 4 spaces
set tabstop=4		" indent level for tab
set expandtab		" covert tab to spaces 
set smartcase		" Override ignorecase search specifically for capital letters.
set backspace=indent,eol,start  " more powerful backspacing
set eadirection=ver     " test


set autoread "  automatically reads a file if changes outside nvim
set backspace=indent,eol,start           "  Include indent, eol and start on backspace
set nobackup                           "  creates a backup file
set completeopt=menuone,noselect "  mostly just for cmp
set conceallevel=0                        "  so that `` is visible in markdown files
set cursorline                        "  highlight the current line
set cursorlineopt=number                 "  highlight current line number 
set expandtab                         "  convert tabs to spaces
set fileencoding=utf-8                  "  the encoding written to a file
set hlsearch                          "  highlight all matches on previous search pattern
set ignorecase                        "  ignore case in search patterns
set incsearch                         "  enable incremental search 
set number "  set numbered lines
set numberwidth=4                         "  set number column width to 2 {default 4}
set pumheight=10                          "  pop up menu height
set scrolloff=8                           "  is one of my fav
set shiftwidth=2                          "  the number of spaces inserted for each indentation
set noshowmode "  we don't need to see things like -- INSERT -- anymore
" set showtabline=2                         "  always show tabs
set sidescrolloff=8
set signcolumn=yes                      "  always show the sign column, otherwise it would shift the text each time
set smartcase "  smart case
set smartindent "  make indenting smarter again
set splitbelow "  force all horizontal splits to go below current window
set splitright "  force all vertical splits to go to the right of current window
set noswapfile "  creates a swapfile
set tabstop=2                             "  insert 2 spaces for a tab
set timeoutlen=1000                        "  time to wait for a mapped sequence to complete (in milliseconds)
set undofile "  enable persistent undo
set updatetime=300                        "  faster completion (4000ms default)
set wrap "  display lines as one long line
set wildmenu
set nowritebackup "  if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited



" autocommand for extra whitespaces at the end of line
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
