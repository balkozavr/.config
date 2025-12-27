return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_b = {
				{ "branch" },
				{
					"diff",
					colored = true,
				},
				{
					"diagnostics",
					sources = { "nvim_workspace_diagnostic", "coc" },
				},
			},
			lualine_x = {},
		},
	},
}
