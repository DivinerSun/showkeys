local M = {
	keys = {},
	w = 1,
	extmark_id = nil,

	config = {
		-- :h nvim_open_win params
		winopts = {
			-- focusable = false,
			relative = "editor",
			style = "minimal",
			border = "single",
			height = 1,
			row = 1,
			col = 0,
			zindex = 100,
		},

		winhl = "FloatBorder:Comment,Normal:Normal",

		timeout = 3, -- in secs
		maxkeys = 3,
		show_count = false,
		excluded_modes = {}, -- example: {"i"}

		-- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
		position = "bottom-right",

		keyformat = {
			["<BS>"] = "󰁮 ",
			["<CR>"] = "󰘌",
			["<Space>"] = "󱁐",
			["<Up>"] = "󰁝",
			["<Down>"] = "󰁅",
			["<Left>"] = "󰁍",
			["<Right>"] = "󰁔",
			["<PageUp>"] = "Page 󰁝",
			["<PageDown>"] = "Page 󰁅",
			["<M>"] = "Alt",
			["<C>"] = "Ctrl",
			-- 修正 Ctrl+j 在 ASCII 和终端中的内部表示就是 换行符（NL，Newline），这是历史遗留问题：
			-- Ctrl+j = 0x0A = Line Feed (LF)
			-- vim.fn.keytrans() 将其转换为 <NL>
			["<NL>"] = "Ctrl + j",
		},
	},
}

return M
