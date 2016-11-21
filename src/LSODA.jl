module LSODA

using Compat

const depsfile = joinpath(dirname(dirname(@__FILE__)),"deps","deps.jl")
if isfile(depsfile)
    include(depsfile)
else
    error("LSODA is not properly installed. Please run Pkg.build(\"LSODA\")")
end

export lsoda, lsoda_0, lsoda_opt_t, lsoda_context_t, lsoda_prepare, lsoda_opt_t, lsoda_free

include("types_and_consts.jl")
include("solver.jl")

end # module
