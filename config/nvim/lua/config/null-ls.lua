local null_ls = require('null-ls')

require('mason-null-ls').setup({
    ensure_installed = {
        'shellcheck'
    },
    automatic_installation = true,
})

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.formatting.nimpretty
    }
})
