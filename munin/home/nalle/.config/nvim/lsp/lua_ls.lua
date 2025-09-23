return {
	settings = {
		Lua = {
			diagnostics = {
				-- This is the crucial line:
				-- It tells lua_ls to not complain about the 'vim' global.
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}
