return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			auto_install = false,
			ensure_installed = {
				"bash",
				"html",
				"css",
				"javascript",
				"typescript",
				"json",
				"lua",
				"python",
				"ruby",
				"json",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
		build = ":TSUpdate",
	},
}
