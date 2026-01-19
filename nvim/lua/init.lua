require 'paq' {
    'savq/paq-nvim';   -- Let Paq manage itself
    'savq/melange-nvim';
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' };
    'mattn/emmet-vim';
    'tpope/vim-commentary';
}

-- tree-sitter config
require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
    },
    ensure_installed = {
        'c';
        'dart';
        'javascript';
        'json';
        'jsonc';
        'markdown';
        'markdown_inline';
        'python';
        'rust';
        'svelte';
        'toml';
        'typescript';
    }
}
