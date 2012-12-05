load("DataFrames")
using DataFrames

# fn = "/Users/johnmyleswhite/julia/extras/bitarray.jl"
# include(fn)

# DataVec([1, 2, 3], bitpack([false, false, false]))

dv = DataVec([1, 2, 3], [false, false, false])

failNA(dv)
removeNA(dv)
replaceNA(dv, 3)
for v in each_failNA(dv)
	println(v)
end
for v in each_removeNA(dv)
	println(v)
end
for v in each_replaceNA(dv, 3)
	println(v)
end

dv[1] = NA

failNA(dv)
removeNA(dv)
replaceNA(dv, 3)
for v in each_failNA(dv)
	println(v)
end
for v in each_removeNA(dv)
	println(v)
end
for v in each_replaceNA(dv, 3)
	println(v)
end

DataVec(ComplexPair, 5)
type MyType
	a::Int64
	b::Int64
end
DataVec(MyType, 5)
