local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
use 'wbthomason/packer.nvim'
use 'glepnir/dashboard-nvim'
use 'nvim-treesitter/nvim-treesitter'
use 'nvim-treesitter/playground'
use 'p00f/nvim-ts-rainbow'
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
dimming = {
    alpha = 0.25, -- amount of dimming
    -- we try to get the foreground from the highlight groups or fallback color
    color = { "Normal", "#ffffff" },
    inactive = false, -- when true, other windows will be fully dimmed (unless they contain the same buffer)
  },
  context = 25, -- amount of lines we will try to show around the current line
  treesitter = true, -- use treesitter when available for the filetype
  -- treesitter is used to automatically expand the visible text,
  -- but you can further control the types of nodes that should always be fully expanded
  expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
  "scope",
    "function_declaration",
    "method_declaration",
  },
  exclude = {}, -- exclude these filetypes

    }
  end
}
------------

--Func signature
use {
  "ray-x/lsp_signature.nvim",
}

--Tree
use 'lambdalisue/fern.vim'
use 'antoinemadec/FixCursorHold.nvim'
use 'lambdalisue/fern-hijack.vim'
use 'lambdalisue/fern-renderer-nerdfont.vim'
use "lambdalisue/nerdfont.vim"

--Which-Key
use {
  "folke/which-key.nvim",
  config = function()
    require("config.which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}


--Snips

use "L3MON4D3/LuaSnip"
use "rafamadriz/friendly-snippets"

--LSP-Manageruse
use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
--Trouble
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
------------
--Telescope 
use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {'nvim-telescope/telescope-fzf-native.nvim',
run = 'make'}
use 'romgrk/barbar.nvim'
use 'jvgrootveld/telescope-zoxide'
--LSP-autocomp and what not
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/nvim-cmp'
--GO
use 'fatih/vim-go'
--Game
use 'ThePrimeagen/vim-be-good'
--DOOM theme
use({
    'NTBBloodbath/doom-one.nvim',
    config = function()
        require('doom-one').setup({
            cursor_coloring = false,
            terminal_colors = false,
            italic_comments = false,
            enable_treesitter = true,
            transparent_background = false,
            pumblend = {
                enable = true,
                transparency_amount = 20,
            },
            plugins_integrations = {
                neorg = true,
                barbar = true,
                bufferline = false,
                gitgutter = false,
                gitsigns = true,
                telescope = false,
                neogit = true,
                nvim_tree = true,
                dashboard = true,
                startify = true,
                whichkey = true,
                indent_blankline = true,
                vim_illuminate = true,
                lspsaga = false,
            },
        })
    end,
}) -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
