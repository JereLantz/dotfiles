-- Run rustfmt on the current file on save
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.rs",
    callback = function()
        vim.cmd("silent! !rustfmt $(echo %)")
    end,
})
