# http://www.neos-server.org/neos/NEOS-API.html
module NEOS

warn("All models submitted to NEOS become part of the public domain. For more see http://www.neos-server.org")

using LightXML
using Requests
using Codecs
using Libz

importall MathProgBase.SolverInterface

include("NEOSServer.jl")
include("NEOSSolverInterface.jl")
include("writer.jl")

include("solvers/CPLEX.jl")
include("solvers/MOSEK.jl")
include("solvers/SYMPHONY.jl")
include("solvers/XpressMP.jl")

export NEOSServer,
	NEOSCPLEXSolver, NEOSMOSEKSolver, NEOSSYMPHONYSolver, NEOSXpressMPSolver,

	addparameter!, addemail!,

 	# NEOS API functions
	neosHelp, emailHelp, welcome, version, ping, printQueue,
	listAllSolvers, listCategories,
	getSolverTemplate,
	listSolversInCategory,
	submitJob,
	getJobStatus, killJob, getFinalResults, getFinalResultsNonBlocking,
	getJobInfo,
	getIntermediateResults, getIntermediateResultsNonBlocking
end
