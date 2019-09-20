filter = function(arr, f)
		res = { }
		for i, item in pairs(arr) do
			if f(item) then
				res[i] = item
			end
		end
		return res
	end

local par = function(e)
	return ( e % 2 ) == 0
end

local arr = {1,2,3,4}
local resp = filter(arr,par)
print(resp)
for i, item in pairs(resp) do
	print(i)
	print(item)
end
