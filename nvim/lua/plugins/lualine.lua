return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			-- theme = {
			-- 	normal = {
			-- 		a = { fg = "#1e1e2e", bg = "#cba6f7", gui = "bold" },
			-- 		b = { fg = "#cba6f7", bg = "#313244" },
			-- 		c = { fg = "#cba6f7", bg = "#1e1e2e" },
			-- 	},
			-- 	insert = {
			-- 		a = { fg = "#1e1e2e", bg = "#f38ba8", gui = "bold" },
			-- 		b = { fg = "#f38ba8", bg = "#313244" },
			-- 		c = { fg = "#f38ba8", bg = "#1e1e2e" },
			-- 	},
			-- 	replace = {
			-- 		a = { fg = "#1e1e2e", bg = "#f38ba8", gui = "bold" },
			-- 		b = { fg = "#f38ba8", bg = "#313244" },
			-- 		c = { fg = "#f38ba8", bg = "#1e1e2e" },
			-- 	},
			-- 	visual = {
			-- 		a = { fg = "#1e1e2e", bg = "#f9e2af", gui = "bold" },
			-- 		b = { fg = "#f9e2af", bg = "#313244" },
			-- 		c = { fg = "#f9e2af", bg = "#1e1e2e" },
			-- 	},
			-- 	command = {
			-- 		a = { fg = "#1e1e2e", bg = "#a6e3a1", gui = "bold" },
			-- 		b = { fg = "#a6e3a1", bg = "#313244" },
			-- 		c = { fg = "#a6e3a1", bg = "#1e1e2e" },
			-- 	},
			-- 	inactive = {
			-- 		a = { fg = "#a3abc4", bg = "#1e1e2e", gui = "bold" },
			-- 		b = { fg = "#a3abc4", bg = "#1e1e2e" },
			-- 		c = { fg = "#a3abc4", bg = "#1e1e2e" },
			-- 	},
			-- },
			theme = {
				normal = {
					a = { fg = "#212733", bg = "#ffcc66", gui = "bold" }, -- yellow
					b = { fg = "#ffcc66", bg = "#212733" },
					c = { fg = "#ffcc66", bg = "#1a1f29" },
				},
				insert = {
					a = { fg = "#212733", bg = "#95e6cb", gui = "bold" }, -- cyan
					b = { fg = "#95e6cb", bg = "#212733" },
					c = { fg = "#95e6cb", bg = "#1a1f29" },
				},
				replace = {
					a = { fg = "#212733", bg = "#f28779", gui = "bold" }, -- red
					b = { fg = "#f28779", bg = "#212733" },
					c = { fg = "#f28779", bg = "#1a1f29" },
				},
				visual = {
					a = { fg = "#212733", bg = "#d4bfff", gui = "bold" }, -- purple
					b = { fg = "#d4bfff", bg = "#212733" },
					c = { fg = "#d4bfff", bg = "#1a1f29" },
				},
				command = {
					a = { fg = "#212733", bg = "#bae67e", gui = "bold" }, -- green
					b = { fg = "#bae67e", bg = "#212733" },
					c = { fg = "#bae67e", bg = "#1a1f29" },
				},
				inactive = {
					a = { fg = "#cccac2", bg = "#1a1f29", gui = "bold" }, -- base bg
					b = { fg = "#cccac2", bg = "#1a1f29" },
					c = { fg = "#cccac2", bg = "#1a1f29" },
				},
			},
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_b = {
				{ "branch" },
				-- {
				-- 	"diff",
				-- 	colored = true,
				-- 	diff_color = {
				-- 		added = { fg = "#a6e3a1", bg = "#313244" },
				-- 		modified = { fg = "#f9e2af", bg = "#313244" },
				-- 		removed = { fg = "#f38ba8", bg = "#313244" },
				-- 	},
				-- },
				{
					"diff",
					colored = true,
					diff_color = {
						added = { fg = "#bae67e", bg = "#212733" }, -- green
						modified = { fg = "#ffad66", bg = "#212733" }, -- orange
						removed = { fg = "#f28779", bg = "#212733" }, -- red
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
