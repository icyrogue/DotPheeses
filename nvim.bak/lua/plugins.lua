local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
  local use = use
  -- add you plugins here like:
  -- use 'neovim/nvim-lspconfig'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use {'glepnir/dashboard-nvim'}

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
})
  end
)
