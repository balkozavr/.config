return {
	"stevearc/conform.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"zapling/mason-conform.nvim",
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },

				python = { "isort", "ruff" },

				go = {
					"goimports",
					"gofumpt",
				},

				javascript = { "eslint_d", "prettierd" },
				javascriptreact = { "eslint_d", "prettierd" },
				typescript = { "eslint_d", "prettierd" },
				typescriptreact = { "eslint_d", "prettierd" },
				json = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
			},
		})

		require("mason-conform").setup({})
	end,
}
