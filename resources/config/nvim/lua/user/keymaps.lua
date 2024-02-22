local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader Management
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
keymap("n", "<C-tab>", "<c-6>", opts)
-- Resize window using <ctrl> arrow keys
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", {unpack(opts), desc = "Increase window height" })
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", {unpack(opts), desc = "Decrease window height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", {unpack(opts), desc = "Decrease window width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", {unpack(opts), desc = "Increase window width" })
-- Window Management
keymap("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
keymap("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Search Management
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- keymap("n", "<", "<gv", opts)
-- keymap("n", ">", ">gv", opts)

keymap("x", "p", [["_dP]])

-- redefine Mouse menu
vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

keymap("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
keymap("n", "<Tab>", "<cmd>:popup mousemenu<CR>")

-- Line navigation : better ?
keymap({ "n", "o", "x" }, "<s-h>", "^", opts)
keymap({ "n", "o", "x" }, "<s-l>", "g_", opts)

-- tailwind bearable to work with
keymap({ "n", "x" }, "j", "gj", opts)
keymap({ "n", "x" }, "k", "gk", opts)
keymap("n", "<leader>w", ":lua vim.wo.wrap = not vim.wo.wrap<CR>", opts)


vim.api.nvim_set_keymap('t', '<C-;>', '<C-\\><C-n>', opts)


-- noice
keymap("n", "<leader>nl", function()
  require("noice").cmd("last")
end, {unpack(opts), desc = "Noice Last Message" })

keymap("n", "<leader>nh", function()
  require("noice").cmd("history")
end, {unpack(opts), desc = "Noice History Message"})



