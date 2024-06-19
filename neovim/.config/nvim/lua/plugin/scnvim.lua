return {
	{
		"davidgranstrom/scnvim",
		config = function()
			local scnvim = require("scnvim")
			local map = scnvim.map
			local map_expr = scnvim.map_expr

			vim.g.scnvim_snippet_format = "luasnip"
			vim.g.scnvim_postwin_orientation = "v"
			vim.g.scnvim_postwin_direction = "right"
			vim.g.scnvim_postwin_size = 30
			vim.g.scnvim_snippet_format = "luasnip"
			vim.g.scnvim_snippet_format = "luasnip"

			scnvim.setup({
				keymaps = {
					["<M-e>"] = map("editor.send_line", { "i", "n" }),
					["<C-e>"] = {
						map("editor.send_block", { "i", "n" }),
						map("editor.send_selection", "x"),
					},
					["<CR>"] = map("postwin.toggle"),
					["<M-CR>"] = map("postwin.toggle", "i"),
					["<M-L>"] = map("postwin.clear", { "n", "i" }),
					["<C-k>"] = map("signature.show", { "n", "i" }),
					["<F12>"] = map("sclang.hard_stop", { "n", "x", "i" }),
					["<leader>st"] = map("sclang.start"),
					["<leader>sk"] = map("sclang.recompile"),
					["<F1>"] = map_expr("s.boot"),
					["<F2>"] = map_expr("s.meter"),
				},
				editor = {
					highlight = {
						color = "IncSearch",
					},
				},
				postwin = {
					highlight = true,
					auto_toggle_error = true,
					scrollback = 5000,
					horizontal = false,
					direction = "right",
					size = nil,
					fixed_size = nil,
					keymaps = nil,
					float = {
						enabled = true,
						row = 0,
						col = function()
							return vim.o.columns
						end,
						width = 64,
						height = 14,
						config = {
							border = "single",
						},
						callback = function(id)
							vim.api.nvim_win_set_option(id, "winblend", 10)
						end,
					},
				},
				snippet = {
					engine = {
						name = "luasnip",
						options = {
							descriptions = true,
						},
					},
				},
			})
		end,
	},
}
