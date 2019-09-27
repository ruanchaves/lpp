util = {}

util.max = function(x,y) if x > y then return x else return y end end
util.min = function(x,y) if x < y then return x else return y end end

print(util.min(2,4))
print(util.max(2,4))
