vim.opt.nu = true
vim.opt.relativenumber = true

-- makes indents 4 lines
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- no backups and long running undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

--highlight yanked area
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking",
    group = vim.api.nvim_create_augroup("higlight-yank", {clear = true}),
    callback = function()
        vim.highlight.on_yank()
    end,
})
