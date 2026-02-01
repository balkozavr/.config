return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		sections = {
			lualine_b = {
				{ "branch" },
				{
					"diagnostics",
					sources = { "nvim_workspace_diagnostic", "coc" },
				},
			},
			lualine_c = {
				{
					"filename",
					path = 1,
				},
			},
			lualine_x = {
				{
					"diff",
					colored = true,
				},
			},
			lualine_y = {},
		},
	},
}
