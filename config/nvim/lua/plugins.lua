-- https://github.com/wbthomason/packer.nvim#bootstrapping
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'lewis6991/impatient.nvim'

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('config.indent-blankline') end
    }

    -- Colorscheme
    use {
        'navarasu/onedark.nvim',
        config = function() require('onedark').load() end
    }

    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function() require('config.lualine') end
    }

    -- Tabline
    use {
        'romgrk/barbar.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    -- LSP
    use {
        'williamboman/mason.nvim',
        config = function() require('mason').setup() end
    }

    use {
        'williamboman/mason-lspconfig.nvim',
        config = function() require('config.lsp') end
    }
    use 'neovim/nvim-lspconfig'

    use {
        'jayp0521/mason-null-ls.nvim',
        config = function () require('config.null-ls') end
    }
    use 'jose-elias-alvarez/null-ls.nvim'

    -- 補完
    use {
        'hrsh7th/nvim-cmp',
        config = function() require('config.cmp') end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'onsails/lspkind.nvim'

    -- fzf
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function() require('config.telescope') end
    }
    use 'nvim-telescope/telescope-file-browser.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update() end,
        config = function() require('config.treesitter') end
    }

    use 'p00f/nvim-ts-rainbow'

    use 'windwp/nvim-ts-autotag'

    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup() end
    }


    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }

    -- Nim
    use 'zah/nim.vim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
