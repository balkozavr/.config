return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "NONE" })
	end,
}
