return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { bg = "NONE" })
	end,
}
