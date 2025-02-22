-- run the line under the cursor
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
-- runs the selected lines
vim.keymap.set("v", "<leader>x", ":lua<CR>")
