-- paq
vim.cmd 'packadd paq-nvim'         -- Load package
package.loaded['paq-nvim']=nil
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Color schemes
paq 'savq/melange'
paq 'ayu-theme/ayu-vim'

paq 'mattn/emmet-vim'
paq 'tpope/vim-commentary'

-- TreeSitter
paq 'nvim-treesitter/nvim-treesitter'
require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
    },
}

-- LSP
paq 'neovim/nvim-lspconfig'
paq 'rust-lang/rust.vim'

local lsp = require('lspconfig')
lsp.rls.setup{}
-- lsp.vuels.setup{}
