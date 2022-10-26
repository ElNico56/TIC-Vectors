local vectmt = {}
vectmt.__index = vectmt

local function vect(x, y, z)
	return setmetatable({
		x = tonumber(x) or 0,
		y = tonumber(y) or 0,
		z = tonumber(z) or 0
	}, vectmt)
end

vectmt.__add = function(s, o) return vect(s.x+o.x, s.y+o.y, s.z+o.z) end

vectmt.__sub = function(s, o) return vect(s.x-o.x, s.y-o.y, s.z-o.z) end

vectmt.__mul = function(s, n) return vect(s.x*n, s.y*n, s.z*n) end

vectmt.__div = function(s, n) return vect(s.x/n, s.y/n, s.z/n) end

vectmt.__unm = function(s) return vect(-s.x, -s.y, -s.z) end

vectmt.__tostring = function(s) return '('..s.x..', '..s.y..', '..s.z..')' end

vectmt.dot = function(s, o) return s.x*o.x + s.y*o.y + s.z*o.z end

vectmt.cross = function(s, o)
	return vect(s.y*o.z - s.z*o.y, s.z*o.x - s.x*o.z, s.x*o.y - s.y*o.x)
end

vectmt.len = function(s) return math.sqrt(s.x * s.x + s.y * s.y + s.z * s.z) end

vectmt.norm = function(s) return s:__div(s:len()) end

vectmt.round = function(s, t)
	t = t or 1
	return vect(
		math.floor((s.x + t * 0.5) / t) * t,
		math.floor((s.y + t * 0.5) / t) * t,
		math.floor((s.z + t * 0.5) / t) * t
	)
end

return vect
