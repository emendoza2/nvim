return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
        vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
        require("nvim-tree").setup({
            -- filters = {
            --     dotfiles = true,
            --     custom = { ".git", "node_modules", ".cache" },
            -- },
        })
    end,
}
