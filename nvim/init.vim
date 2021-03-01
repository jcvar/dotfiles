lua << EOF

vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself
paq 'ayu-theme/ayu-vim'
paq 'neovim/nvim-lspconfig'
paq 'mattn/emmet-vim'
paq 'rust-lang/rust.vim'

require'lspconfig'.rls.setup{}


EOF

""" Color theme
set termguicolors
let ayucolor='dark'
colorscheme ayu

""" General settings
set mouse=a
set number
set smartindent
set fileencoding=utf-8

""" Cursor position
set cursorline
set cursorcolumn
set colorcolumn=81

""" Whitespace characters
set list lcs=space:·,trail:•,tab:›·,nbsp:+,eol:¶,extends:»,precedes:«

""" TAB config
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:netrw_dirhistmax = 0 " no netrw history

