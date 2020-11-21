vect={
 add=function(slf, o)
  return vect.new(
  slf.x+o.x,
  slf.y+o.y,
  slf.z+o.z
  )
 end,
 sub=function(slf, o)
  return vect.new(
  slf.x-o.x,
  slf.y-o.y,
  slf.z-o.z
  )
 end,
 mul=function(slf, m)
  return vect.new(
  slf.x*m,
  slf.y*m,
  slf.z*m
  )
 end,
 div=function(slf, m)
  return vect.new(
  slf.x/m,
  slf.y/m,
  slf.z/m
  )
 end,
 unm=function(slf)
  return vect.new(
  -slf.x,
  -slf.y,
  -slf.z
  )
 end,
 dot=function(slf, o)
  return slf.x*o.x+slf.y*o.y+slf.z*o.z
 end,
 cross=function(slf, o)
  return vect.new(
  slf.y*o.z-slf.z*o.y,
  slf.z*o.x-slf.x*o.z,
  slf.x*o.y-slf.y*o.x
  )
 end,
 len=function(slf)
  return math.sqrt(slf.x*slf.x+slf.y*slf.y+slf.z*slf.z)
 end,
 norm=function(slf)
  return slf:mul(1/slf:len())
 end,
 round=function(slf, toler)
  toler=toler or 1.0
  return vect.new(
  math.floor((slf.x+toler*0.5)/toler)*toler,
  math.floor((slf.y+toler*0.5)/toler)*toler,
  math.floor((slf.z+toler*0.5)/toler)*toler
  )
 end,
	new=function(x, y, z)
  return setmetatable({
  x=tonumber(x) or 0,
  y=tonumber(y) or 0,
  z=tonumber(z) or 0,
  },{
  __index=vect,
  __add=vect.add,
  __sub=vect.sub,
  __mul=vect.mul,
  __div=vect.div,
  __unm=vect.unm}
  )
 end,
}
