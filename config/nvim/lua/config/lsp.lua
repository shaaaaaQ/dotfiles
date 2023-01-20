require('mason-lspconfig').setup({
    ensure_installed = {
        'sumneko_lua',
        'pylsp',
        'nimls'
    },
    automatic_installation = true
})

require('mason-lspconfig').setup_handlers({ function(server)
    local opts = {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
    require('lspconfig')[server].setup(opts)
end })
