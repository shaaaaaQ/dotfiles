-- Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("config.indent-blankline")
        end,
    },

    {
        "navarasu/onedark.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true
        },
        config = function(_, opts)
            require("onedark").setup(opts)
            require("onedark").load()
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.lualine")
        end,
    },

    -- {
    --     "williamboman/mason.nvim",
    -- },
    -- {
    --     "williamboman/mason-lspconfig.nvim",
    --     dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    --     config = function()
    --         require("config.lsp")
    --     end,
    -- },
    -- "neovim/nvim-lspconfig",
    -- {
    --     "jayp0521/mason-null-ls.nvim",
    --     dependencies = { "williamboman/mason.nvim", "jose-elias-alvarez/null-ls.nvim" },
    --     config = function()
    --         require("config.null-ls")
    --     end,
    -- },
    -- "jose-elias-alvarez/null-ls.nvim",

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        },
        config = function()
            require("config.cmp")
        end,
    },

    -- {
    --     "nvim-telescope/telescope.nvim",
    --     dependencies = { "nvim-lua/plenary.nvim" },
    --     config = function()
    --         require("config.telescope")
    --     end,
    -- },
    -- "nvim-telescope/telescope-file-browser.nvim",

    -- {
    --     "nvim-treesitter/nvim-treesitter",
    --     build = function()
    --         vim.fn.system({ "nvim", "--headless", "-c", "TSUpdateSync", "-c", "qa" })
    --     end,
    --     config = function()
    --         require("config.treesitter")
    --     end,
    -- },
    -- "p00f/nvim-ts-rainbow",
    -- "windwp/nvim-ts-autotag",
    -- {
    --     "windwp/nvim-autopairs",
    --     config = function()
    --         require("nvim-autopairs").setup()
    --     end,
    -- },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
})
