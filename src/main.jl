include("main_package.jl")
using .main_package


a = Vec(1.,2.,3.)
b = Vec(2.,4.,6.)

println(a + b)
println(a - b)
println(a / b)
println(a * b)

println(ℕ²(a))
println(ℕ(a))

v1 = Vec(0.,0.,0.)
v2 = Vec(1.,1.,1.)
vline = draw_line(v1,v2,0.4)
println(vline)