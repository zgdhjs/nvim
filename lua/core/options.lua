local opt  = vim.opt

-- line numbers 
opt.nu = true
opt.relativenumber = true

-- indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smarttab = true
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- back and undo
opt.backup = false
opt.swapfile = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. '/undodir'

-- search options
opt.ignorecase = true
opt.smartcase = true
opt.infercase = true
opt.incsearch = true

-- UI
opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.signcolumn = 'yes'
opt.colorcolumn = '120'
opt.list = true
opt.listchars = 'tab:» ,nbsp:+,trail:·,extends:→,precedes:←,'
opt.ruler = false
opt.showmode = false

-- folding
opt.foldenable = true
opt.foldmethod = "manual"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldcolumn = "0"

-- window splits
opt.splitright = true
opt.splitbelow = true

-- interact
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.virtualedit = 'block'

-- Time in milliseconds to wait for a mapped sequence to complete,
opt.timeout = true
opt.timeoutlen = 500
opt.ttimeout = true
opt.ttimeoutlen = 10

-- misc
opt.updatetime = 100
opt.shortmess = 'aoOTIcF'
opt.hidden = true
opt.wildignorecase = true
