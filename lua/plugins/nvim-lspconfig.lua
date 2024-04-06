local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local lspconfig = require("lspconfig")

	local capabilities = cmp_nvim_lsp.default_capabilities()

	-- lspconfig setups for installed LSP servers via Mason
	require("mason-lspconfig").setup_handlers({
		function(server_name)
			lspconfig[server_name].setup({
				capabilities = capabilities,
			})
		end,
		["lua_ls"] = function()
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim", "opt", "g", "kmap", "cmd" },
						},
					},
				},
			})
		end,
		["pyright"] = function()
			lspconfig.pyright.setup({
				settings = {
					pyright = {
						disableOrganizeImports = false,
						analysis = {
							useLibraryCodeForTypes = true,
							autoSearchPaths = true,
							diagnosticMode = "workspace",
							autoImportCompletions = true,
						},
					},
				},
			})
		end,
	})
end
return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}
