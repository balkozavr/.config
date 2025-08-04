return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "NONE", fg = "#45475a" })
		vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#26263b" })
		vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "TreesitterContextLineNumberBottom", { bg = "NONE" })
	end,
}
