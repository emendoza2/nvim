return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 999,
	config = function()
		require("gruvbox").setup({
			transparent = true,
			bold = true,
			italic = {
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "hard",
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
