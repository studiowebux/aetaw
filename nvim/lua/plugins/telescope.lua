return {
	'nvim-telescope/telescope.nvim',
	tag = 'v0.2.0',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{
			"<leader>f",
			function()
				require("telescope.builtin").find_files({
					prompt_title = "Find Tracked Files",
					find_command = {
						"rg",
						"--files",
					},
				})
			end,
			desc = "Open file picker in root dir",
		},
		{
			"<leader><leader>f",
			function()
				require("telescope.builtin").find_files({
					prompt_title = "Find All Files",
					find_command = {
						"rg",
						"--files",
						"--hidden",
						"--no-ignore",
						"--glob",
						"!**/.git",
						"--glob",
						"!**/node_modules",
					},
				})
			end,
			desc = "Open file picker in root dir",
		},
		{
			"<leader>.",
			function()
				require("telescope.builtin").find_files({
					prompt_title = "Find Dotfiles",
					find_command = {
						"rg",
						"--files",
						"-g",
						"**/.*",
					},
				})
			end,
			desc = "Search env files",
		},
		{
			"<leader>/",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Global search in root dir",
		},
		{
			"<leader><leader>/",
			function()
				require("telescope.builtin").live_grep({
					additional_args = {
						"--hidden",
						"--no-ignore",
						"--glob",
						"!**/.git",
						"--glob",
						"!**/node_modules",
					},
				})
			end,
			desc = "Global search in root dir",
		},
	},
}
