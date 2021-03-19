###############################################################################
###          TISTING JULIA
###############################################################################
var_a=2+2
println(var_a)

a=Ref{Cfloat}(3)
b=Ref{Cfloat}(0)
c=Ref{Cfloat}(0)

ccall(("testf","./example"),Cvoid,(Ref{Cfloat},Ptr{Cfloat},Ptr{Cfloat}),a,b,c)
#b=ccall(("testf","./example"),Cfloat,(Ref{Cfloat},),a)
b=getindex(b)
e=getindex(c)
println(b)
#println(d)
println(c)
println(e)
