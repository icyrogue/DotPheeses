
local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

--Remap Leader
keymap("", "<Space>", "<Nop>", default_opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)
keymap("i", "qq", "<ESC>", default_opts)


--Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", default_opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", default_opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", default_opts)
keymap("n", "<leader>fr", ":lua require'telescope.builtin'.oldfiles{}<cr>", default_opts)

--Tabs
keymap("n", "<leader>bs", ":BufferOrderByDirectory<cr>", default_opts)
keymap("n", "<leader>b[", ":BufferMovePrevious<cr>", default_opts)
keymap("n", "<leader>b]", ":BufferMoveNext<cr>", default_opts)

keymap("n", '\\[', ":BufferPrevious<cr>", default_opts)
keymap("n", "\\]", ":BufferNext<cr>", default_opts)

--Trew
keymap("n", "<leader>T", ":Fern . -drawer -toggle<cr>", default_opts)

--Code things
keymap("n", "<leader>tt", ":Twilight<cr>", default_opts)
keymap("n", "<leader>te", ":Trouble<cr>", default_opts)
keymap("n", "<leader>tr", ":TSBufToggle rainbow<cr>", default_opts)
