local vectmt={}
vectmt.__index = vectmt

local function _vect_(X, Y, Z)
	return setmetatable({
		x=tonumber(X) or 0,
		y=tonumber(Y) or 0,
		z=tonumber(Z) or 0,
	},vectmt)
end

vectmt.__add=function(s, o)
	return _vect_(
		s.x+o.x,
		s.y+o.y,
		s.z+o.z
	)
end

vectmt.__sub=function(s, o)
	return _vect_(
		s.x-o.x,
		s.y-o.y,
		s.z-o.z
	)
end

vectmt.__mul=function(s, n)
	return _vect_(
		s.x*n,
		s.y*n,
		s.z*n
	)
end

vectmt.__div=function(s, n)
	return _vect_(
		s.x/n,
		s.y/n,
		s.z/n
	)
end

vectmt.__unm=function(s)
	return _vect_(-s.x,-s.y,-s.z)
end

vectmt.dot=function(s, o)
	return s.x*o.x+s.y*o.y+s.z*o.z
end

vectmt.cross=function(s, o)
	return _vect_(
		s.y*o.z-s.z*o.y,
		s.z*o.x-s.x*o.z,
		s.x*o.y-s.y*o.x
	)
end

vectmt.len=function(s)
	return math.sqrt(s.x^2+s.y^2+s.z^2)
end

vectmt.norm=function(s)
	return s:__mul(1/s:len())
end

vectmt.round=function(s, t)
	t=t or 1
	return _vect_(
		math.floor((s.x+t*0.5)/t)*t,
		math.floor((s.y+t*0.5)/t)*t,
		math.floor((s.z+t*0.5)/t)*t
	)
end

vectmt.__tostring=function(s)
	return '('..s.x..', '..s.y..', '..s.z..')'
end

return _vect_
