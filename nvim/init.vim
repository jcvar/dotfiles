lua << EOF

vim.cmd 'packadd paq-nvim'
-- vim.api.nvim_command('packadd paq-nvim')
local paq = require'paq-nvim'.paq

paq 'ayu-theme/ayu-vim'

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
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:netrw_dirhistmax = 0 " no netrw history

