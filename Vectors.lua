local vectmt = {}
vectmt.__index = vectmt

local function vect(x, y, z)
	return setmetatable({
		x = tonumber(x) or 0,
		y = tonumber(y) or 0,
		z = tonumber(z) or 0
	}, vectmt)
end

function vectmt.__add(self, other)
	return vect(self.x + other.x, self.y + other.y, self.z + other.z)
end

function vectmt.__sub(self, other)
	return vect(self.x - other.x, self.y - other.y, self.z - other.z)
end

function vectmt.__mul(self, num)
	return vect(self.x*num, self.y*num, self.z*num)
end

function vectmt.__div(self, num)
	return vect(self.x/num, self.y/num, self.z/num)
end

function vectmt.__unm(self)
	return vect(-self.x, -self.y, -self.z)
end

function vectmt.__tostring(self)
	return ('(%i, %i, %i)'):format(x, y, z)
end

function vectmt.dot(self, other)
	return self.x*other.x + self.y*other.y + self.z*other.z
end

function vectmt.cross(self, other)
	return vect(
		self.y*other.z - self.z*other.y,
		self.z*other.x - self.x*other.z,
		self.x*other.y - self.y*other.x
	)
end

function vectmt.len(self)
	return math.sqrt(self.x*self.x + self.y*self.y + self.z*self.z)
end

function vectmt.len2(self)
	return self.x*self.x + self.y*self.y + self.z*self.z
end

function vectmt.norm(self)
	return self:__div(self:len())
end

function vectmt.round(self, t)
	t = t or 1
	return vect(
		math.floor((self.x + t * 0.5) / t) * t,
		math.floor((self.y + t * 0.5) / t) * t,
		math.floor((self.z + t * 0.5) / t) * t
	)
end

return vect
