local M = {}

function M.concat_multiple(...)
	local result = {}
	local tables = { ... }

	for _, t in ipairs(tables) do
		for _, v in ipairs(t) do
			table.insert(result, v)
		end
	end

	return result
end

return M
