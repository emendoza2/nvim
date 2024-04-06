--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Ethan LaBelle
-- MASON LSP

return {
	"williamboman/mason-lspconfig.nvim",
	event = "BufReadPre",
	opts = {
		auto_install = true,
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"bashls",
				"cssls",
				"dockerls",
				"gopls",
				"html",
				"lua_ls",
				"jsonls",
				"pyright",
				"tsserver",
				"rust_analyzer",
				"yamlls",
				"dotls",
				"clangd",
				"sqlls",
			},
			automatic_installation = true,
		})
	end,
	dependencies = "williamboman/mason.nvim",
}






