using Test
using LinearAlgebra
using Rotations
using StaticArrays
using InteractiveUtils: subtypes
using Quaternions
import Unitful

import Random

# Check that there are no ambiguities beyond those present in StaticArrays
ramb = detect_ambiguities(Rotations, Base, Core)
samb = detect_ambiguities(StaticArrays, Base, Core)
@test isempty(setdiff(ramb, samb))

include("util_tests.jl")
include("2d.jl")
include("rotation_tests.jl")
include("derivative_tests.jl")
include("principal_value_tests.jl")
include("unitquat.jl")
include("rodrigues_params.jl")
include("quatmaps.jl")
include("rotation_error.jl")
include("distribution_tests.jl")
include("eigen.jl")
include("nearest_rotation.jl")
include("rotation_generator.jl")
include("logexp.jl")
include("deprecated.jl")

include(joinpath(@__DIR__, "..", "perf", "runbenchmarks.jl"))
