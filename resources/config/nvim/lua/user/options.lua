
local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '150'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behavior
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.modifiable = true
-- opt.guicursor = ""
opt.encoding = "UTF-8"

-- Behavior Testing
opt.virtualedit = "block"
opt.inccommand = "split"

-- for nvim-metals
opt.shortmess:remove("F")


opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.pumheight = 10 -- pop up menu height
opt.pumblend = 10
--opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
opt.showtabline = 1 -- always show tabs
opt.swapfile = false -- creates a swapfile
opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.updatetime = 100 -- faster completion (4000ms default)
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.cursorline = true -- highlight the current line
opt.laststatus = 3
opt.ruler = false
opt.numberwidth = 4 -- set number column width to 2 {default 4}
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.scrolloff = 0
opt.sidescrolloff = 8
opt.title = false

opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
