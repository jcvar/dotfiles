lua require 'init'

""" Fancy remaps
noremap Y "+y
noremap H ^
noremap L $


""" Color scheme
colorscheme melange

""" General settings
set mouse=a
set nowrap
set number
set smartindent
set fileencoding=utf-8
set ignorecase
set relativenumber

""" Movement settings
set whichwrap=<,>,[,]
set iskeyword+=-

""" Cursor position
set cursorline
set cursorcolumn
set colorcolumn=81

""" Whitespace characters
set list lcs=space:·,trail:•,tab:›·,nbsp:+,eol:~,extends:»,precedes:«

""" TAB config
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:netrw_dirhistmax = 0 " no netrw history

