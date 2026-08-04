return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").install({
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
				"terraform",
				"tsx",
				"typescript",
				"yaml",
			})

			vim.api.nvim_create_autocmd("FileType", {
				desc = "Start treesitter highlighting and indentation",
				group = vim.api.nvim_create_augroup("treesitter-start", { clear = true }),
				callback = function(args)
					local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
					if not lang or not pcall(vim.treesitter.language.add, lang) then
						return
					end
					pcall(vim.treesitter.start, args.buf, lang)
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
}
