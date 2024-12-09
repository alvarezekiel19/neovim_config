vim.opt.clipboard = 'unnamedplus'

vim.opt.guicursor = ''
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.nuw = 5

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.linebreak = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showtabline = 2
vim.opt.breakindent = true

vim.opt.backspace = 'indent,eol,start'
vim.opt.whichwrap = 'bs<>[]hl'
vim.opt.mouse = 'a'

vim.opt.pumheight = 10
vim.opt.conceallevel = 0
vim.opt.cmdheight = 1

vim.wo.signcolumn = 'yes'
vim.opt.fileencoding = 'utf-8'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.shortmess:append 'c'
vim.opt.iskeyword:append '-'
vim.opt.formatoptions:remove { 'c', 'r', 'o' }
