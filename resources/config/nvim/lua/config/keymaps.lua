local keymap = vim.keymap
local defaults_ops = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", defaults_ops)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", defaults_ops)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Telescope
keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fa", ":Telescope <CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- buffers
keymap.set("n", "<S-h>", ":bprevious<CR>", defaults_ops)
keymap.set("n", "<S-l>", ":bnext<CR>", defaults_ops)
keymap.set("n", "<S-q>", ":bdelete<CR>", defaults_ops)

-- Bufferline
keymap.set("n", "<leader>bl", ":BufferLinePick<CR>", defaults_ops)
keymap.set("n", "<leader>&", ":BufferLineGoToBuffer 1<CR>", defaults_ops)
keymap.set("n", "<leader>é", ":BufferLineGoToBuffer 2<CR>", defaults_ops)
keymap.set("n", '<leader>"', ":BufferLineGoToBuffer 3<CR>", defaults_ops)
keymap.set("n", "<leader>'", ":BufferLineGoToBuffer 4<CR>", defaults_ops)
keymap.set("n", "<leader>(", ":BufferLineGoToBuffer 5<CR>", defaults_ops)
keymap.set("n", "<leader>-", ":BufferLineGoToBuffer 6<CR>", defaults_ops)
keymap.set("n", "<leader>è", ":BufferLineGoToBuffer 7<CR>", defaults_ops)
keymap.set("n", "<leader>_", ":BufferLineGoToBuffer 8<CR>", defaults_ops)
keymap.set("n", "<leader>ç", ":BufferLineGoToBuffer 9<CR>", defaults_ops)
keymap.set("n", "<leader>à", ":BufferLineGoToBuffer 10<CR>", defaults_ops)
