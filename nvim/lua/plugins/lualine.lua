return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = {
				normal = {
					a = { fg = "#1e1e2e", bg = "#cba6f7", gui = "bold" },
					b = { fg = "#cba6f7", bg = "#313244" },
					c = { fg = "#cba6f7", bg = "#1e1e2e" },
				},
				insert = {
					a = { fg = "#1e1e2e", bg = "#f38ba8", gui = "bold" },
					b = { fg = "#f38ba8", bg = "#313244" },
					c = { fg = "#f38ba8", bg = "#1e1e2e" },
				},
				replace = {
					a = { fg = "#1e1e2e", bg = "#f38ba8", gui = "bold" },
					b = { fg = "#f38ba8", bg = "#313244" },
					c = { fg = "#f38ba8", bg = "#1e1e2e" },
				},
				visual = {
					a = { fg = "#1e1e2e", bg = "#f9e2af", gui = "bold" },
					b = { fg = "#f9e2af", bg = "#313244" },
					c = { fg = "#f9e2af", bg = "#1e1e2e" },
				},
				command = {
					a = { fg = "#1e1e2e", bg = "#a6e3a1", gui = "bold" },
					b = { fg = "#a6e3a1", bg = "#313244" },
					c = { fg = "#a6e3a1", bg = "#1e1e2e" },
				},
				inactive = {
					a = { fg = "#a3abc4", bg = "#1e1e2e", gui = "bold" },
					b = { fg = "#a3abc4", bg = "#1e1e2e" },
					c = { fg = "#a3abc4", bg = "#1e1e2e" },
				},
			},
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_b = {
				{ "branch" },
				{
					"diff",
					colored = true,
					diff_color = {
						added = { fg = "#a6e3a1", bg = "#313244" },
						modified = { fg = "#f9e2af", bg = "#313244" },
						removed = { fg = "#f38ba8", bg = "#313244" },
					},
				},
				{
					"diagnostics",
					sources = { "nvim_workspace_diagnostic", "coc" },
				},
			},
			lualine_c = {
				"%=",
				{
					"buffers",
					use_mode_colors = true,
					symbols = {
						modified = " ●", -- Text to show when the buffer is modified
						alternate_file = "", -- Text to show to identify the alternate file
					},
				},
			},
			lualine_x = {},
		},
	},
}
