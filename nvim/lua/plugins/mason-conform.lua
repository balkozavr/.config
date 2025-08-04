return {
	"zapling/mason-conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"stevearc/conform.nvim",
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },

				go = {
					"goimports",
					"golines",
				},
			},
		})

		require("mason-conform").setup({})
	end,
}
