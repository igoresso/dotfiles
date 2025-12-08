return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "cssls",
        "dockerls",
        "emmet_ls",
        "eslint",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "ruff",
        "ruby_lsp",
        "svelte",
        "tailwindcss",
        "terraformls",
        "vtsls",
        "yamlls",
      },
    },
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {},
      },
      "neovim/nvim-lspconfig",
    },
  },
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"hadolint",
				"prettier",
				"rubocop",
				"stylua",
				"tflint",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
