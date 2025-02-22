-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
},

config = function()
    local builtin = require('telescope.builtin')
    require("telescope").setup{
        extensions = {
            fzf = {}
        }
    }

    require("telescope").load_extension("fzf")

    -- Find files in general
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    -- find files from current git
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    --[[
    -- searches files that contain the imputed string
    vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    ]]--

    -- display help tags
    vim.keymap.set('n', '<leader>fh', builtin.help_tags)

    -- Find files in neovim config
    vim.keymap.set("n", "<leader>nc", function()
        builtin.find_files {
            cwd = vim.fn.stdpath("config")
        }
    end)

    -- find every file that is installed in a plugin
    vim.keymap.set("n", "<leader>ep", function()
        builtin.find_files {
            cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy")
        }
    end)

    require "konffit.plugins.telescope.multigrep".setup()
end
}
