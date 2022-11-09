(require-macros :hibiscus.packer)

(packer-setup)

(packer
  (use! :udayvir-singh/tangerine.nvim)
  (use! :udayvir-singh/hibiscus.nvim
        :requires ["udayvir-singh/tangerine.nvim"])

  ;;Colorscheme
  (use! "shaunsingh/oxocarbon.nvim")

  ;;Cmp stuff 
  (use! "echasnovski/mini.completion")

  ;;TS and LSP
  (use! "https://git.sr.ht/~p00f/nvim-ts-rainbow")
  (use! :nvim-treesitter/nvim-treesitter :module "modules/ts")
  (use! :neovim/nvim-lspconfig :module "modules/lsp" :run ":TSUpdate")
  (use! "j-hui/fidget.nvim")

  ;;Must have or smth
  (use! "windwp/nvim-autopairs")


  ;;Tele Who? 
  (use! :nvim-telescope/telescope.nvim :requires ["nvim-lua/plenary.nvim"]
	:module "module/telescope")

  ;;Ne organ
  (use! :nvim-neorg/neorg :run ":Neorg sync-parsers" :module "modules/neorg"))
