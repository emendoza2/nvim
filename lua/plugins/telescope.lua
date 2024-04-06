-- local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = true,
				hidden = true,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = true,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		vim.keymap.set("n", "<leader>pk", "<cmd>Telescope keymaps<CR>", {}),
		vim.keymap.set("n", "<leader>ph", "<cmd>Telescope help_tags<CR>", {}),
		vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<CR>", {}),
		vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", {}),
		vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<CR>", {}),
		vim.keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<CR>", {}),
	},
}
