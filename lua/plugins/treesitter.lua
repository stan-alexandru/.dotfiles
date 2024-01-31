return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = { "astro", "css", "html", "javascript", "json", "lua", "sql", "typescript" },
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
