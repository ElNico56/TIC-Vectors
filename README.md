# TIC-Vectors
Vector math for TIC-80

all functions return vectors, they do not change the vector that calls them

---

To import: vect = require'vectors'

Create new vector: A = vect(X,Y,Z)

- Add: C = A + B
- Substract: C = A - B
- Multiply: C = A * n
- Divide: C = A / n
- Negate: C = -A

- Dot product: N = A:dot(B)
- Cross product: C = A:cross(B)
- Magnitude: M = A:len()
- Normalize: N = A:norm()

- Round: R = A:round(tolerance)  

this will round vector A to the nearest TOLERANCE

ie.

for a vector A=vect( 10, 14, 11.25 )

- A:round(1) => { 10, 14, 11 }
- A:round(5) => { 10, 15, 10 }
- A:round(10) => { 10, 10, 10 }
- A:round(0.1) => { 10, 14, 11.3 }
