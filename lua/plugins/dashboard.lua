return {
    {
        "goolord/alpha-nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            -- ╭──────────────────────────────────────────────╮
            -- │ Logo                                         │
            -- ╰──────────────────────────────────────────────╯

            dashboard.section.header.val = {
                "",
                "",
                "              ██╗   ██╗██╗ ██████╗███████╗███╗   ██╗███████╗ █████╗ ",
                "              ██║   ██║██║██╔════╝██╔════╝████╗  ██║╚══███╔╝██╔══██╗",
                "              ██║   ██║██║██║     █████╗  ██╔██╗ ██║  ███╔╝ ███████║",
                "              ╚██╗ ██╔╝██║██║     ██╔══╝  ██║╚██╗██║ ███╔╝  ██╔══██║",
                "               ╚████╔╝ ██║╚██████╗███████╗██║ ╚████║███████╗██║  ██║",
                "                ╚═══╝  ╚═╝ ╚═════╝╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝",
                "",
                "                    ── ADVANCE YOUR BOUNDARIES ──",
                "",
            }

            -- ╭──────────────────────────────────────────────╮
            -- │ Buttons                                      │
            -- ╰──────────────────────────────────────────────╯

            local button = dashboard.button

            dashboard.section.buttons.val = {
                button(
                    "f",
                    "󰈞  Find File",
                    "<cmd>Telescope find_files<CR>"
                ),

                button(
                    "r",
                    "󰋚  Recent Files",
                    "<cmd>Telescope oldfiles<CR>"
                ),

                button(
                    "g",
                    "󰊢  Live Grep",
                    "<cmd>Telescope live_grep<CR>"
                ),

                button(
                    "e",
                    "󰉋  Explorer",
                    "<cmd>Neotree toggle<CR>"
                ),

                button(
                    "t",
                    "󰆍  Terminal",
                    "<cmd>ToggleTerm<CR>"
                ),

                button(
                    "l",
                    "󰒲  Lazy",
                    "<cmd>Lazy<CR>"
                ),

                button(
                    "q",
                    "󰅖  Quit",
                    "<cmd>qa<CR>"
                ),
            }

            -- ╭──────────────────────────────────────────────╮
            -- │ Footer                                       │
            -- ╰──────────────────────────────────────────────╯

            local function footer()
                local datetime = os.date("%A • %d %B %Y • %H:%M")

                return {
                    "",
                    "",
                    "              " .. datetime,
                    "",
                    "              ✦  built with Neovim + Lua  ✦",
                    "",
                }
            end

            dashboard.section.footer.val = footer()

            -- ╭──────────────────────────────────────────────╮
            -- │ Layout                                       │
            -- ╰──────────────────────────────────────────────╯

            dashboard.config.layout = {
                { type = "padding", val = 2 },
                dashboard.section.header,
                { type = "padding", val = 2 },
                dashboard.section.buttons,
                { type = "padding", val = 2 },
                dashboard.section.footer,
            }

            alpha.setup(dashboard.config)
        end,
    },
}
