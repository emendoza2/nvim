return {
	event = "BufEnter",
	"WhoIsSethDaniel/mason-tool-installer",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"bash-language-server",
				"lua-language-server",
				"stylua",
				"shellcheck",
				"editorconfig-checker",
				"json-to-struct",
				"luacheck",
				"shellcheck",
				"tflint",
				"ktlint",
				"eslint_d",
				"prettier",
				"prettierd",
				"flake8",
				"taplo",
				"yamlfix",
				"buf",
				"beautysh",
				"rustfmt",
			},
			auto_update = true,
		})
	end,
}
