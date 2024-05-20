-- "Native" TSServer client.
return {
	{
		"pmizio/typescript-tools.nvim",
		enabled = true,
		event = { "BufReadPre *.ts,*.tsx,*.js,*.jsx,*.mjs", "BufNewFile *.ts,*.tsx,*.js,*.jsx,*.mjs" },
		dependencies = { "nvim-lua/plenary.nvim", "nvim-lspconfig" },
		opts = function()
			return {
				settings = {
					separate_diagnostic_server = true,
					tsserver_file_preferences = {
						includeInlayParameterNameHints = "literals",
						includeInlayParameterNameHintsWhenArgumentMatchesName = false,
						includeInlayFunctionParameterTypeHints = true,
						includeInlayVariableTypeHints = false,
						includeInlayVariableTypeHintsWhenTypeMatchesName = true,
						includeInlayPropertyDeclarationTypeHints = true,
						includeInlayFunctionLikeReturnTypeHints = true,
						includeInlayEnumMemberValueHints = true,
					},
				},
			}
		end,
	},
}
