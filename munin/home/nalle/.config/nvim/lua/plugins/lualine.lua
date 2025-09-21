return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = false,
	priority = 1500,
	config = function()
		require("lualine").setup({
			options = {
				theme = "nordic",
			}
		})
	end
}
