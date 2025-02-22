return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        signs = false,
        vim.keymap.set("n", "<leader>nd", function ()
                require("todo-comments").jump_next()
            end, {desc = "Next todo comment" }),
        vim.keymap.set("n", "<leader>pd", function ()
                require("todo-comments").jump_prev()
            end, {desc = "Next todo comment" }),
    }
}
