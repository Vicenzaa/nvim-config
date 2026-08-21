return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,

        opts = {
            style = "moon",

            transparent = false,
            terminal_colors = true,

            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
            },

            sidebars = {
                "qf",
                "help",
                "terminal",
            },

            dim_inactive = true,
            lualine_bold = true,
        },

        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight-moon")
        end,
    },
}
