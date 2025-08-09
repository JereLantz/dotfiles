-- paste and keep whatever was in the paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
-- same but with delete
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- add new line without leaving normal mode
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")


-- quick fix navigation
-- hypi quicklist
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
-- hypi erroreja tässä tiedostossa
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- source current file
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- diagnostic maps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })


-- Diagnostic keymaps. Moves the cursor to next/previous error (?)
--[[ NOTE: vanhat deprecated
vim.keymap.set("n","<leader><S-j>", vim.diagnostic.goto_next)
vim.keymap.set("n","<leader><S-k>", vim.diagnostic.goto_prev)
]]--
-- goto next
vim.keymap.set("n","<leader><S-j>", function() vim.diagnostic.jump({count=1, float=true}) end)
-- goto prev
vim.keymap.set("n","<leader><S-k>", function() vim.diagnostic.jump({count=-1, float=true}) end)

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
