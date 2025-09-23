vim.lsp.config('*'. {
	root_markers = { '.git', 'node_modules' },
	capabilities = {
		textDocument = {
			completion = {
				completionItem = {
					snippetSupport = true,
				}
			}
		}
	},
})
vim.lsp.enable('*')
