local options = {
smartindent = true,
copyindent = true,
preserveindent = true,
clipboard = "unnamedplus",
cursorline = true,
mouse = "a",
wrap = false,
number = true,
relativenumber = true,
scrolloff = 4,
termguicolors = true,
swapfile = false,
guifont = "Iosevka Term",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
