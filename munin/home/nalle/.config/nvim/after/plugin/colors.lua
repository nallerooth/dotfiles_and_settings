function ColorMyPencils(color)
	-- color = color or "base16-tender"
	color = color or "tender"
	-- color = color or "nordic"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- Remove BG in floating windows
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
