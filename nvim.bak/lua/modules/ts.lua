-- :fennel:1667695316
local servers = {"go", "fennel", "lua"}
local ts = require("nvim-treesitter.configs")
return ts.setup({highlight = {enable = true}, indent = {enable = true}, rainbow = {enable = true, extended_mode = true}, ensure_installed = servers})