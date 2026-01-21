require 'paq' {
    'savq/paq-nvim',   -- Let Paq manage itself
    'savq/melange-nvim',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-mini/mini.completion',
    'mattn/emmet-vim',
    'tpope/vim-commentary',
}

-- tree-sitter config
require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true,
    },
    ensure_installed = {
        'c',
        'dart',
        'javascript',
        'json',
        'jsonc',
        'markdown',
        'markdown_inline',
        'python',
        'rust',
        'svelte',
        'toml',
        'typescript',
    }
}

-- mini.completion config
require('mini.completion').setup()
vim.keymap.set('i', '<Tab>', [[pumvisible() ? "\<C-y>" : "\<Tab>"]], { expr = true })
