return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "NONE" })
		require("treesitter-context").setup({
			max_lines = 3,
		})
	end,
}
