return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			auto_install = false,
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"ruby",
				"terraform",
				"typescript",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
		build = ":TSUpdate",
	},
}
