module GalacticOptim

using Reexport
@reexport using DiffEqBase
@reexport using SciMLBase
using Requires
using DiffResults, ForwardDiff, Zygote, ReverseDiff, Tracker, FiniteDiff
@reexport using Optim, Flux
using Logging, ProgressLogging, Printf, ConsoleProgressMonitor, TerminalLoggers, LoggingExtras
using ArrayInterface, Base.Iterators

using ForwardDiff: DEFAULT_CHUNK_THRESHOLD
import DiffEqBase: OptimizationProblem, OptimizationFunction, AbstractADType
import SciMLBase: AbstractNoTimeSolution, build_solution, AbstractNonlinearProblem

import ModelingToolkit
import ModelingToolkit: AutoModelingToolkit
export AutoModelingToolkit

include("solve.jl")
include("function.jl")

export solve, EnsembleOptimizationProblem

export BBO, CMAEvolutionStrategyOpt

end # module
