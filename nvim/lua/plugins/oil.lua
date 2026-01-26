return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		skip_confirm_for_simple_edits = true,
		win_options = {
			signcolumn = "yes",
		},
		view_options = {
			show_hidden = true,
			is_always_hidden = function(name)
				return name == ".DS_Store" or name == ".git" or name == ".."
			end,
		},
	},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
}
