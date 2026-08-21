return {
    -- ╭──────────────────────────────────────────╮
    -- │ Statusline                               │
    -- ╰──────────────────────────────────────────╯

    {
        "nvim-lualine/lualine.nvim",

        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            options = {
                theme = "tokyonight",
                globalstatus = true,

                component_separators = {
                    left = "│",
                    right = "│",
                },

                section_separators = {
                    left = "",
                    right = "",
                },

                disabled_filetypes = {
                    "NvimTree",
                    "neo-tree",
                },
            },

            sections = {
                -- Mode
                lualine_a = {
                    {
                        "mode",
                        fmt = function(str)
                            return " 󰘧 " .. str .. " "
                        end,
                    },
                },

                -- Git
                lualine_b = {
                    {
                        "branch",
                        icon = "󰘬",
                    },

                    {
                        "diff",
                        symbols = {
                            added = "󰐕 ",
                            modified = "󰏫 ",
                            removed = "󰍵 ",
                        },
                    },
                },

                -- Current file
                lualine_c = {
                    {
                        "filename",
                        path = 1,

                        symbols = {
                            modified = " ●",
                            readonly = " 󰌾",
                            unnamed = "[No Name]",
                        },
                    },
                },

                -- Diagnostics / LSP
                lualine_x = {
                    {
                        "diagnostics",

                        symbols = {
                            error = "󰅚 ",
                            warn = "󰀪 ",
                            info = "󰋽 ",
                            hint = "󰌶 ",
                        },
                    },

                    {
                        function()
                            local clients = vim.lsp.get_clients({
                                bufnr = 0,
                            })

                            if #clients == 0 then
                                return ""
                            end

                            return "󰒋 " .. clients[1].name
                        end,
                    },

                    {
                        "filetype",
                        icon_only = false,
                    },
                },

                -- Progress
                lualine_y = {
                    {
                        "progress",
                        icon = "󰦗",
                    },
                },

                -- Location
                lualine_z = {
                    {
                        "location",
                        icon = "󰍎",
                    },
                },
            },

            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    {
                        "filename",
                        path = 1,
                    },
                },
                lualine_x = {
                    "location",
                },
                lualine_y = {},
                lualine_z = {},
            },
        },
    },

    -- ╭──────────────────────────────────────────╮
    -- │ Icons                                    │
    -- ╰──────────────────────────────────────────╯

    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },

    -- ╭──────────────────────────────────────────╮
    -- │ Notifications                            │
    -- ╰──────────────────────────────────────────╯

    {
        "rcarriga/nvim-notify",

        opts = {
            timeout = 2000,
            stages = "fade",
            render = "compact",
        },
    },

    -- ╭──────────────────────────────────────────╮
    -- │ Command line UI                          │
    -- ╰──────────────────────────────────────────╯

    {
        "folke/noice.nvim",

        event = "VeryLazy",

        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },

        opts = {},
    },

    -- ╭──────────────────────────────────────────╮
    -- │ Which-key                                │
    -- ╰──────────────────────────────────────────╯

    {
        "folke/which-key.nvim",

        event = "VeryLazy",

        opts = {
            preset = "modern",
            delay = 300,
        },
    },

    -- ╭──────────────────────────────────────────╮
    -- │ Neo-tree                                 │
    -- ╰──────────────────────────────────────────╯

    {
        "nvim-neo-tree/neo-tree.nvim",

        branch = "v3.x",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },

        opts = {
            close_if_last_window = true,

            popup_border_style = "rounded",

            enable_git_status = true,
            enable_diagnostics = true,

            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },

            window = {
                width = 32,
            },
        },
    },
}
