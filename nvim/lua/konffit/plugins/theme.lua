function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

    return{
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            ColorMyPencils()
        end
    }
