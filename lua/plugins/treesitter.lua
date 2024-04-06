--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Ethan LaBelle
-- TREESITTER

local config = function()
    require("nvim-treesitter.configs").setup({
        build = ":TSUpdate",
        indent = {
            enable = true,
        },
        autotag = {
            enable = true,
        },
        event = {
            "BufReadPre",
            "BufNewFile",
        },
        ensure_installed = {
            "json",
            "javascript",
            "dot",
            "rust",
            "toml",
            "typescript",
            "graphql",
            "tsx",
            "lua",
            "python",
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<C-s>",
                node_incremental = "<C-s>",
                scope_incremental = false,
                node_decremental = "<BS>",
            },
        },
    })
end

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = config,
}
