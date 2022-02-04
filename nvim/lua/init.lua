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

-- cmp config
-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
lsp['rust_analyzer'].setup {
    capabilities = capabilities
}
lsp['denols'].setup {
    capabilities = capabilities
}

