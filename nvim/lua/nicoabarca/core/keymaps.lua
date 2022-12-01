vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove word highlighting

keymap.set("n", "<leader>w", ":w<CR>") -- save current file
keymap.set("n", "<leader>wq", ":wq") -- save & quit current file
keymap.set("n", "<leader>q", ":q<CR>") -- quit current file
keymap.set("n", "x", '"_x') -- dont add deleted word to buffer

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugins keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize of current window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files in project
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find text throughout project
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find current string the cursor is on throughout project
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- show active buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- show help tags

-- bufferline
keymap.set("n", "<leader>b", ":BufferLinePick<CR>")
keymap.set("n", "<leader>bc", ":BufferLinePickClose<CR>")

keymap.set("n", "<leader>bn", ":BufferLineCycleNext<cr>")
keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<cr>")

keymap.set("n", "<a-1>", "<cmd>BufferLineGoToBuffer 1<cr>")
keymap.set("n", "<a-2>", "<cmd>BufferLineGoToBuffer 2<cr>")
keymap.set("n", "<a-3>", "<cmd>BufferLineGoToBuffer 3<cr>")
keymap.set("n", "<a-4>", "<cmd>BufferLineGoToBuffer 4<cr>")
keymap.set("n", "<a-5>", "<cmd>BufferLineGoToBuffer 5<cr>")
keymap.set("n", "<a-6>", "<cmd>BufferLineGoToBuffer 6<cr>")
keymap.set("n", "<a-7>", "<cmd>BufferLineGoToBuffer 7<cr>")
keymap.set("n", "<a-8>", "<cmd>BufferLineGoToBuffer 8<cr>")
keymap.set("n", "<a-9>", "<cmd>BufferLineGoToBuffer 9<cr>")
keymap.set("n", "<a-$>", "<cmd>BufferLineGoToBuffer -1<cr>")
