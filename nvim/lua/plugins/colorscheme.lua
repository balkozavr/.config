return {
	"folke/tokyonight.nvim",
	lazy = false,
	name = "tokyonight",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
			},
			lualine_bold = true,
		})

		vim.cmd.colorscheme("tokyonight-night")
	end,
}
