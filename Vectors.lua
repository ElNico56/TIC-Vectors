vect={
	add=function(s, o)
		return vect.new(
			s.x+o.x,
			s.y+o.y,
			s.z+o.z
		)
	end,

	sub=function(s, o)
		return vect.new(
			s.x-o.x,
			s.y-o.y,
			s.z-o.z
		)
	end,

	mul=function(s, n)
		return vect.new(
			s.x*n,
			s.y*n,
			s.z*n
		)
	end,

	div=function(s, n)
		return vect.new(
			s.x/n,
			s.y/n,
			s.z/n
		)
	end,

	unm=function(s)
		return vect.new(-s.x,-s.y,-s.z)
	end,

	dot=function(s, o)
		return s.x*o.x+s.y*o.y+s.z*o.z
	end,

	cross=function(s, o)
		return vect.new(
			s.y*o.z-s.z*o.y,
			s.z*o.x-s.x*o.z,
			s.x*o.y-s.y*o.x
		)
	end,

	len=function(s)
		return math.sqrt(s.x^2+s.y^2+s.z^2)
	end,

	norm=function(s)
		return s:mul(1/s:len())
	end,

	round=function(s, t)
		t=t or 1
		return vect.new(
			((s.x+t*0.5)//t)*t,
			((s.y+t*0.5)//t)*t,
			((s.z+t*0.5)//t)*t
		)
	end,

	string=function(s)
		return s.x..", "..s.y..", "..s.z
	end,

	new=function(X, Y, Z)
		return setmetatable({
			x=tonumber(X) or 0,
			y=tonumber(Y) or 0,
			z=tonumber(Z) or 0,
		},{
			__index=vect,
			__add=vect.add,
			__sub=vect.sub,
			__mul=vect.mul,
			__div=vect.div,
			__unm=vect.unm,
			__tostring=vect.string}
		)
	end,
}
return vect
