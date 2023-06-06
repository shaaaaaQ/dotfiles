require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls'
    },
    automatic_installation = true
})

require('mason-lspconfig').setup_handlers({ function(server)
    local opts = {
        capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
    require('lspconfig')[server].setup(opts)
end })
