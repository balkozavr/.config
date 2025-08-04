return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = { "go", "lua" },
		highlight = { enable = true },
		auto_install = true,
	},
}
