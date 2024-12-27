return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        opts = {
            compile = true,
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            vim.cmd("colorscheme kanagawa")
        end,
    }
}
