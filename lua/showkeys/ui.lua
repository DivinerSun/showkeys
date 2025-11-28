local state = require("showkeys.state")

return function()
	local list = state.keys
	local list_len = #list
	local virt_txts = {}

	for i, val in ipairs(list) do
		local hl = i == list_len and "skactive" or "skinactive"
		if val.txt then
			table.insert(virt_txts, { " " .. val.txt .. " ", hl })
			table.insert(virt_txts, { " " })
		end
	end

	return virt_txts
end
