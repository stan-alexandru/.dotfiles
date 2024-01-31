return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup(
				{
					ensure_installed = {
						"astro",
						"cssls",
						"html",
						"jsonls",
						"sqlls",
						"tailwindcss",
						"tsserver",
					},
					automatic_installation = true,
				}
			)
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require("mason-lspconfig").setup_handlers {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities
					})
				end,

			}
		end
	},
}
