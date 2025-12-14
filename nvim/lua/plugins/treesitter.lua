local parsers = {
	"lua",
	"javascript",
	"jsdoc",
	"typescript",
	"tsx",
	"html",
	"markdown",
	"markdown_inline",
	"json",
	"css",
	"bash",
	"gitignore",
	"jq",
	"regex",
	"toml",
	"sql",
	"go",
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		local list = require("nvim-treesitter.parsers").get_parser_configs()

		configs.setup({
			ensure_installed = parsers,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
