return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			no_italic = true,
			term_colors = true,
		})

		vim.cmd.colorscheme("catppuccin")
	end,
	-- "Shatur/neovim-ayu",
	-- lazy = false,
	-- name = "ayu",
	-- priority = 1000,
	-- config = function()
	-- 	local colors = require("ayu.colors")
	-- 	colors.generate(true)
	--
	-- 	require("ayu").setup({
	-- 		mirage = true,
	-- 		terminal = true,
	-- 		overrides = {
	-- 			IncSearch = { fg = colors.bg, bg = "#E99F62" },
	-- 			Visual = { bg = "#2f374a" },
	-- 			-- BlinkCmpGhostText = { fg = colors.accent },
	-- 			-- LspInlayHint = { fg = colors.comment, bg = colors.bg, italic = true },
	-- 			Pmenu = { fg = "#707A8C", bg = colors.bg },
	-- 			PmenuSel = { bg = "#FFFFFF", fg = "#1C212B" },
	-- 		},
	-- 	})
	--
	-- 	vim.cmd.colorscheme("ayu")
	-- 	vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFCC66" })
	-- 	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#707A8C" })
	-- 	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#707A8C" })
	-- end,
}
