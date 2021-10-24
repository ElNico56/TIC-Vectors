# TIC-Vectors
Vector math for TIC-80
all functions return vectors, they do not change the vector that calls them

Create new vector: A = vect.new(X,Y,Z)

Add: A:add(B) or A+B

Substract: A:sub(B) or A-B

Multiply: A:mul(n) or A*n

Divide: A:div(B) or A/n

Negate: A:unm() or -A

Dot product: A:dot(B)

Cross product: A:cross(B)

Magnitude: A:len()

Normalize: A:norm()

Round: A:round(tolerance)  
this will round vector A to the nearest TOLERANCE
ie.
for a vector A=vect.new( 10, 14, 11.25 )

A:round(1) => { 10, 14, 11 }

A:round(5) => { 10, 15, 10 }

A:round(10) => { 10, 10, 10 }

A:round(0.1) => { 10, 14, 11.3 }
