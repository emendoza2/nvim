local mapkey = require("util.keymapper").mapkey

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts) -- go to definition
	mapkey("<leader>gd", "Lspsaga peek_definition", opts) -- peak definition
	mapkey("<leader>gD", "Lspsaga goto_definition", opts) -- go to definition
	mapkey("<leader>ca", "Lspsaga code_action", opts) -- see available code actions
	mapkey("<leader>rn", "Lspsaga rename", opts) -- smart rename
	mapkey("<leader>D", "Lspsaga show_line_diagnostics", opts) -- show  diagnostics for line
	mapkey("<leader>d", "Lspsaga show_cursor_diagnostics", "n", opts) -- show diagnostics for cursor
	mapkey("<leader>pd", "Lspsaga diagnostic_jump_prev", "n", opts) -- jump to prev diagnostic in buffer
	mapkey("<leader>nd", "Lspsaga diagnostic_jump_next", "n", opts) -- jump to next diagnostic in buffer
	mapkey("K", "Lspsaga hover_doc", "n", opts) -- show documentation for what is under cursor

	if client.name == "pyright" then
		mapkey("<Leader>oi", "PyrightOrganizeImports", "n", opts)
	end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = "󱧤", Info = "" }

return M
