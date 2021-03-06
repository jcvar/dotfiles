require 'paq-nvim' {
    'savq/paq-nvim';   -- Let Paq manage itself
    -- Utils
    'mattn/emmet-vim';
    'tpope/vim-commentary';
    'nvim-treesitter/nvim-treesitter';
    -- LSP
    'neovim/nvim-lspconfig';
    -- Langs
    'rust-lang/rust.vim';
    -- Themes
    {'savq/melange', branch='rewrite'};
    'ayu-theme/ayu-vim';
}

require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
    },
    ensure_installed = {
        'c';
        'dart';
        'javascript';
        'typescript';
        'lua';
        'python';
        'rust';
        'toml';
    }
}

local lsp = require('lspconfig')
lsp.rls.setup{}
vim.cmd "au BufWritePre *.rs lua vim.lsp.buf.formatting_sync()" -- rust lsp autoformat

