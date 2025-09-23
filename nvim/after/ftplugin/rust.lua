-- Run rustfmt for the current file
-- [f]ormat [f]ile
-- This doesn't work because rustfmt doesn't check the rust version from the cargo.toml file
-- vim.keymap.set("n", "<leader>ff", "<cmd>silent! !rustfmt $(echo %)<CR>")
--
-- [f]ormat [p]roject
vim.keymap.set("n", "<leader>fp", "<cmd>silent! !cargo fmt<CR>")
