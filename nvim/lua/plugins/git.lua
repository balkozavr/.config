return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({

				signs = {
					add = { text = "▎" },
					change = { text = "▎" },
					delete = { text = "" },
					topdelete = { text = "" },
					changedelete = { text = "▎" },
					untracked = { text = "▎" },
				},
				signs_staged = {
					add = { text = "▎" },
					change = { text = "▎" },
					delete = { text = "" },
					topdelete = { text = "" },
					changedelete = { text = "▎" },
				},
				current_line_blame_opts = {
					delay = 200,
				},
			})

			vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", {})
			vim.keymap.set("n", "]h", "<cmd>Gitsigns next_hunk<CR>", {})
			vim.keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", {})
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git Status" })
			vim.keymap.set("n", "<leader>gl", "<cmd>Git log<CR>", { desc = "Git Log" })
			vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "Git Blame" })
			vim.keymap.set("n", "<leader>gd", "<cmd>Git difftool<CR>", { desc = "Git Diff" })
			vim.keymap.set("n", "<leader>gm", "<cmd>Git mergetool<CR>", { desc = "Git Merge" })
			vim.keymap.set("n", "<leader>gv", "<cmd>Gvdiffsplit<CR>", { desc = "Git VDiff" })
			vim.keymap.set("n", "gh", "<cmd>diffget //2<CR>", { desc = "Diffget left" })
			vim.keymap.set("n", "gl", "<cmd>diffget //3<CR>", { desc = "Diffget right" })
		end,
	},
}
