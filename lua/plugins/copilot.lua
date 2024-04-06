return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	dependencies = "zbirenbaum/copilot-cmp",
	config = function()
		require("copilot").setup(require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = false,
				},
			},
		}))
		require("copilot_cmp").setup({
			formatters = {
				insert_text = require("copilot_cmp.format").remove_existing,
			},
		})
	end,
}
