return {
	"folke/trouble.nvim",
	opts = {
		mode = "diagnostics",
		preview = {
			border = "none",
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>x",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics",
		},
	},
}
