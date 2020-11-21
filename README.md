# TIC-Vectors
Vector math for TIC-80

create a new vector: A = vect.new(X,Y,Z)

add: A:add(B) or A+B

substract: A:sub(B) or A-B

multiply: A:mul(n) or A*n

substract: A:div(B) or A/n

negate: A:unm() or -A

dot product: A:dot(B)

cross product: A:cross(B)

magnitude: A:len()

normalize: A:norm()

round: A:round(tolerance)  
this will round vector A to the nearest TOLERANCE
ie.
for a vector A=vect.new(10,14,11.25)

A:round(1) => {10,14,11}

A:round(5) => {10,15,10}

A:round(10) => {10,10,10}

A:round(0.1) => {10,14,11.3}
