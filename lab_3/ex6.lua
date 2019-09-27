local function create()
	local value = 0
	local function inc()
		value = value + 1
		return value
	end
	local function dec()
		value = value - 1
		return value
	end
	return inc, dec
end

local i, d = create()
print( i() )
print( d() )

