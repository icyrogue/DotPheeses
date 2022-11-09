-- :fennel:1667699538
do
  if (0 == vim.fn.isdirectory("/Users/icy/.local/share/nvim/site/pack/packer/start/packer.nvim")) then
    print("packer.nvim: installing in data dir...")
    local function _1_(...)
      _G["packer_bootstrap"] = true
      return nil
    end
    do local _ = (vim.fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", "/Users/icy/.local/share/nvim/site/pack/packer/start/packer.nvim"}) and _1_(...)) end
    vim.cmd("redraw")
    vim.cmd("packadd packer.nvim")
    print("packer.nvim: installed")
  else
  end
  do end (require("packer")).init({})
end
local function _3_(use)
  _G.assert((nil ~= use), "Missing argument use on modules.fnl:5")
  use("wbthomason/packer.nvim")
  do
    use({"udayvir-singh/tangerine.nvim"})
    use({requires = {"udayvir-singh/tangerine.nvim"}, "udayvir-singh/hibiscus.nvim"})
    use({"shaunsingh/oxocarbon.nvim"})
    use({"echasnovski/mini.completion"})
    use({"https://git.sr.ht/~p00f/nvim-ts-rainbow"})
    local function _4_()
      return require("modules/ts")
    end
    use({config = _4_, "nvim-treesitter/nvim-treesitter"})
    local function _5_()
      return require("modules/lsp")
    end
    use({config = _5_, run = ":TSUpdate", "neovim/nvim-lspconfig"})
    use({"j-hui/fidget.nvim"})
    use({"windwp/nvim-autopairs"})
    local function _6_()
      return require("module/telescope")
    end
    use({config = _6_, requires = {"nvim-lua/plenary.nvim"}, "nvim-telescope/telescope.nvim"})
    local function _7_()
      return require("modules/neorg")
    end
    use({config = _7_, run = ":Neorg sync-parsers", "nvim-neorg/neorg"})
  end
  if (true == _G.packer_bootstrap) then
    return (require("packer")).sync()
  else
    return nil
  end
end
return (require("packer")).startup(_3_)