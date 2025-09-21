-- Run rustfmt for the current file
-- [f]ormat [f]ile
vim.keymap.set("n", "<leader>ff", "<cmd>silent! !rustfmt $(echo %)<CR>")
