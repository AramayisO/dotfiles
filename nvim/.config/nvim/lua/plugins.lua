-- Bootstrap packer
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Configure plugins
return require('packer').startup(function(use)
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Color scheme
    --use 'morhetz/gruvbox'
    use {
        'navarasu/onedark.nvim',
        config = require('setup/onedark')
    }

    -- Language server
    use {
        'neovim/nvim-lspconfig',
        config = require('setup/lspconfig')
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = require('setup/lualine')
    }

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = require('setup/nvim-tree') 
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
