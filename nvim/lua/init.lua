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
    'savq/melange';
    'ayu-theme/ayu-vim';
    -- nvim-cmp
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-cmdline';
    'hrsh7th/cmp-nvim-lua';
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-path';
    'hrsh7th/nvim-cmp';
    -- snippets
    'L3MON4D3/LuaSnip';
    'saadparwaiz1/cmp_luasnip';
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
        'typescript';
        'lua';
        'python';
        'rust';
        'toml';
    }
}

vim.g.markdown_fenced_languages = {
  "ts=typescript"
}

-- lsp config
local lsp = require('lspconfig')
lsp.rust_analyzer.setup{}
lsp.denols.setup{}
vim.cmd "autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync()" -- rust lsp autoformat

