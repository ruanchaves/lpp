local a = 1
local b = 4
local c = 4

delta = function(a,b,c)
		return b * b - 4 * a * c
	end

raizes = function(a,b,c)
		return ( -b + math.sqrt(delta(a,b,c)) ) / (  2 * a ),
			( -b - math.sqrt(delta(a,b,c)) )/ ( 2 * a )
	end

x1, x2 = raizes(a,b,c)
print(x1)
print(x2)
