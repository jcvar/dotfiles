vim.cmd 'packadd paq-nvim'
require 'paq-nvim' {
    {'savq/paq-nvim', opt=true};   -- Let Paq manage itself
    'savq/melange';
    'ayu-theme/ayu-vim';
    'mattn/emmet-vim';
    'tpope/vim-commentary';
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';
    'rust-lang/rust.vim';
}

require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
    },
}

local lsp = require('lspconfig')
lsp.rls.setup{}
vim.cmd "au BufWritePre *.rs lua vim.lsp.buf.formatting_sync()"

