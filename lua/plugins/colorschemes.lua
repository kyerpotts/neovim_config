return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				styles = {
					commends = { "italic" },
					conditionals = { "italic" },
				},
				integrations = {
					cmp = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
				},
        -- vim.cmd.colorscheme('catppuccin')
			})
		end,
	},
	-- {
	-- 	{
	-- 		"maxmx03/fluoromachine.nvim",
	-- 		config = function()
	-- 			local fm = require("fluoromachine")
	--
	-- 			fm.setup({
	-- 				glow = false,
	-- 				theme = "fluoromachine",
	-- 				transparent = "true",
	-- 				brightness = 0.05,
	-- 			})
	-- 		end,
	-- 	},
	-- },
	{
		"decaycs/decay.nvim",
		name = "decay",
		priority = 1000,
		config = function()
			local style = "decayce"
			local colors = require("decay.core").get_colors(style)
			require("decay").setup({
				style = style,
				italics = {
					code = false,
					comments = true,
				},
				cmp = {
					block_kind = false,
				},
				nvim_tree = {
					contrast = true,
				},
				override = {
					["@punctuation.bracket"] = { fg = colors.red },
					Whitespace = { fg = colors.black },
					MatchParen = { fg = colors.background, bg = colors.brightgreen },
					Substitute = { fg = colors.yellow, bg = colors.background },
					LspReferenceRead = { bg = colors.brightblack },
					LspReferenceWrite = { bg = colors.brightblack },
					LspReferenceText = { bg = colors.brightblack },
				},
			})
		end,
	},
}
