; ModuleID = 'samples/945.bc'
source_filename = "/local-ssd/sundials-icjqhhsaxwda2stbau4awbrdkjeonqjc-build/aidengro/spack-stage-sundials-6.6.1-icjqhhsaxwda2stbau4awbrdkjeonqjc/spack-src/src/arkode/arkode_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._generic_SUNLinearSolver = type { ptr, ptr, ptr }
%struct._generic_SUNLinearSolver_Ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARKodeMemRec = type { ptr, double, ptr, i32, i32, double, double, ptr, i32, double, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, double, double, double, double, double, double, double, double, double, double, i32, ptr, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i32, ptr, i32, i32, i64, i64, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct._generic_N_Vector = type { ptr, ptr, ptr }
%struct._generic_N_Vector_Ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARKLsMemRec = type { i32, i32, i32, ptr, ptr, i32, i32, double, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct._generic_SUNMatrix = type { ptr, ptr, ptr }
%struct._generic_SUNMatrix_Ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ARKLsMassMemRec = type { i32, i32, ptr, ptr, ptr, ptr, double, double, i32, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [6 x i8] c"ARKLS\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"arkLSSetLinearSolver\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Integrator memory is NULL.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"LS must be non-NULL\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"LS object is missing a required operation\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"A required vector operation is not implemented.\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"Incompatible inputs: matrix-embedded LS requires NULL matrix\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Incompatible inputs: iterative LS must support ATimes routine\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Incompatible inputs: matrix-iterative LS requires non-NULL matrix\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Incompatible inputs: direct LS requires non-NULL matrix\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Missing time step module or associated routines\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Time step module is missing implicit RHS fcn\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Error in calling SUNLinSolSetATimes\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"Error in calling SUNLinSolSetPreconditioner\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Failed to attach to time stepper module\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"arkLSSetMassLinearSolver\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"arkLSSetJacFn\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Jacobian routine cannot be supplied for NULL SUNMatrix\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"arkLSSetMassFn\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Mass-matrix routine must be non-NULL\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"Mass-matrix routine cannot be supplied for NULL SUNMatrix\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"arkLSSetEpsLin\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"arkLSSetNormFactor\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"arkLSSetJacEvalFrequency\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"arkLSSetLinearSolutionScaling\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"arkLSSetPreconditioner\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"SUNLinearSolver object does not support user-supplied preconditioning\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"arkLSSetJacTimes\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"SUNLinearSolver object does not support user-supplied ATimes routine\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"arkLSSetJacTimesRhsFn\00", align 1
@.str.31 = private unnamed_addr constant [64 x i8] c"Internal finite-difference Jacobian-vector product is disabled.\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"arkLSSetLinSysFn\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"Linear system setup routine cannot be supplied for NULL SUNMatrix\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"arkLSSetUserData\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"arkLSGetJac\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"arkLSGetJacTime\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"arkLSGetJacNumSteps\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"arkLSGetWorkSpace\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"arkLSGetNumJacEvals\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"arkLSGetNumRhsEvals\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"arkLSGetNumPrecEvals\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"arkLSGetNumPrecSolves\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"arkLSGetNumLinIters\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"arkLSGetNumConvFails\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"arkLSGetNumJTSetupEvals\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"arkLSGetNumJtimesEvals\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"arkLSGetNumMassMatvecSetups\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"arkLSGetLastFlag\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"ARKLS_SUCCESS\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"ARKLS_MEM_NULL\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"ARKLS_LMEM_NULL\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"ARKLS_ILL_INPUT\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"ARKLS_MEM_FAIL\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"ARKLS_MASSMEM_NULL\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"ARKLS_JACFUNC_UNRECVR\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"ARKLS_JACFUNC_RECVR\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"ARKLS_MASSFUNC_UNRECVR\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"ARKLS_MASSFUNC_RECVR\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"ARKLS_SUNMAT_FAIL\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"ARKLS_SUNLS_FAIL\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"arkLSSetMassEpsLin\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"arkLSSetMassNormFactor\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"arkLSSetMassPreconditioner\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"arkLSSetMassTimes\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"non-NULL mtimes function must be supplied\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"arkLSSetMassUserData\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"arkLSGetMassWorkSpace\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"arkLSGetNumMassSetups\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"arkLSGetNumMassMult\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"arkLSGetNumMassSolves\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"arkLSGetNumMassPrecEvals\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"arkLSGetNumMassPrecSolves\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"arkLSGetNumMassIters\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"arkLSGetNumMassConvFails\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"arkLSGetCurrentMassMatrix\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"arkLSGetNumMTSetups\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"arkLSGetLastMassFlag\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"arkLsATimes\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"An error occurred in ark_step_getgammas\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"arkLsPSetup\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"arkLsPSolve\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"arkLsMTimes\00", align 1
@.str.84 = private unnamed_addr constant [49 x i8] c"Error in user mass matrix-vector product routine\00", align 1
@.str.85 = private unnamed_addr constant [54 x i8] c"Error in SUNMatrix mass matrix-vector product routine\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"Missing mass matrix-vector product routine\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"arkLsMPSetup\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"arkLsMPSolve\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"arkLsDQJac\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"SUNMatrix is NULL\00", align 1
@.str.91 = private unnamed_addr constant [52 x i8] c"arkLsDQJac not implemented for this SUNMatrix type!\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"arkLsDQJtimes\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"arkLsInitialize\00", align 1
@.str.94 = private unnamed_addr constant [53 x i8] c"No Jacobian constructor available for SUNMatrix type\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"Cannot combine NULL and non-NULL System and mass matrices\00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"System and mass matrices have incompatible types\00", align 1
@.str.97 = private unnamed_addr constant [65 x i8] c"mismatched matrix-embedded LS types (system and mass must match)\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"arkLsSetup\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Error setting up mass-matrix linear solver\00", align 1
@.str.100 = private unnamed_addr constant [56 x i8] c"The Jacobian routine failed in an unrecoverable manner.\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"arkLsSolve\00", align 1
@.str.102 = private unnamed_addr constant [44 x i8] c"Error in call to SUNLinSolSetScalingVectors\00", align 1
@.str.103 = private unnamed_addr constant [71 x i8] c"The Jacobian x vector setup routine failed in an unrecoverable manner.\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"ARKLS  kry  %.16g  %.16g  %i  %i\0A\00", align 1
@.str.105 = private unnamed_addr constant [38 x i8] c"Failure in SUNLinSol external package\00", align 1
@.str.106 = private unnamed_addr constant [65 x i8] c"The Jacobian x vector routine failed in an unrecoverable manner.\00", align 1
@.str.107 = private unnamed_addr constant [68 x i8] c"The preconditioner solve routine failed in an unrecoverable manner.\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"arkLsMassInitialize\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"Missing user-provided mass-matrix routine\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"No available mass matrix-vector product routine\00", align 1
@.str.111 = private unnamed_addr constant [57 x i8] c"Missing user-provided mass matrix-vector product routine\00", align 1
@.str.112 = private unnamed_addr constant [31 x i8] c"Missing SUNLinearSolver object\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"arkLsMassSetup\00", align 1
@.str.114 = private unnamed_addr constant [74 x i8] c"The mass matrix x vector setup routine failed in an unrecoverable manner.\00", align 1
@.str.115 = private unnamed_addr constant [55 x i8] c"A SUNMatrix routine failed in an unrecoverable manner.\00", align 1
@.str.116 = private unnamed_addr constant [59 x i8] c"The mass matrix routine failed in an unrecoverable manner.\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"arkLsMassSolve\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"ARKLS  mass  %.16g  %i  %i\0A\00", align 1
@.str.119 = private unnamed_addr constant [68 x i8] c"The mass matrix x vector routine failed in an unrecoverable manner.\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"Linear solver memory is NULL.\00", align 1
@.str.121 = private unnamed_addr constant [35 x i8] c"Mass matrix solver memory is NULL.\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"arkLsLinSys\00", align 1

; Function Attrs: nounwind uwtable
define i32 @arkLSSetLinearSolver(ptr noundef %arkode_mem, ptr noundef %LS, ptr noundef %A) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %LS.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %LSType = alloca i32, align 4
  %iterative = alloca i32, align 4
  %matrixbased = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %LS, ptr %LS.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %LSType) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %iterative) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %matrixbased) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %1, ptr %ark_mem, align 8, !tbaa !4
  %2 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %3, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.3)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ops, align 8, !tbaa !8
  %gettype = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %gettype, align 8, !tbaa !10
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %7 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops6 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ops6, align 8, !tbaa !8
  %solve = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %solve, align 8, !tbaa !12
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end4
  %10 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %10, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.4)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %call = call i32 @SUNLinSolGetType(ptr noundef %11)
  store i32 %call, ptr %LSType, align 4, !tbaa !13
  %12 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp10 = icmp ne i32 %12, 0
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, ptr %iterative, align 4, !tbaa !14
  %13 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp11 = icmp ne i32 %13, 1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end9
  %14 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp13 = icmp ne i32 %14, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end9
  %15 = phi i1 [ false, %if.end9 ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, ptr %matrixbased, align 4, !tbaa !14
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %16, i32 0, i32 38
  %17 = load ptr, ptr %tempv1, align 8, !tbaa !16
  %ops15 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %ops15, align 8, !tbaa !20
  %nvconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %nvconst, align 8, !tbaa !22
  %cmp16 = icmp eq ptr %19, null
  br i1 %cmp16, label %if.then23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.end
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv119 = getelementptr inbounds %struct.ARKodeMemRec, ptr %20, i32 0, i32 38
  %21 = load ptr, ptr %tempv119, align 8, !tbaa !16
  %ops20 = getelementptr inbounds %struct._generic_N_Vector, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ops20, align 8, !tbaa !20
  %nvwrmsnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %22, i32 0, i32 21
  %23 = load ptr, ptr %nvwrmsnorm, align 8, !tbaa !24
  %cmp21 = icmp eq ptr %23, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false18, %land.end
  %24 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %24, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.5)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false18
  %25 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp25 = icmp eq i32 %25, 3
  br i1 %cmp25, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  %26 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %27, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.6)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true, %if.end24
  %28 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end30
  %29 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv132 = getelementptr inbounds %struct.ARKodeMemRec, ptr %29, i32 0, i32 38
  %30 = load ptr, ptr %tempv132, align 8, !tbaa !16
  %ops33 = getelementptr inbounds %struct._generic_N_Vector, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %ops33, align 8, !tbaa !20
  %nvgetlength = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %nvgetlength, align 8, !tbaa !25
  %cmp34 = icmp eq ptr %32, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then31
  %33 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %33, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.5)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then31
  %34 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.end47, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end37
  %35 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp40 = icmp ne i32 %35, 3
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %36 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops43 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %ops43, align 8, !tbaa !8
  %setatimes = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %setatimes, align 8, !tbaa !26
  %cmp44 = icmp eq ptr %38, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true42
  %39 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %39, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.7)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true42, %land.lhs.true39, %if.end37
  %40 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %tobool48 = icmp ne i32 %40, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end53

land.lhs.true49:                                  ; preds = %if.end47
  %41 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp50 = icmp eq ptr %41, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true49
  %42 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %42, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.8)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true49, %if.end47
  br label %if.end58

if.else:                                          ; preds = %if.end30
  %43 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp54 = icmp eq ptr %43, null
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else
  %44 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %44, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.9)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.else
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end53
  %45 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_attachlinsol = getelementptr inbounds %struct.ARKodeMemRec, ptr %45, i32 0, i32 19
  %46 = load ptr, ptr %step_attachlinsol, align 8, !tbaa !27
  %cmp59 = icmp eq ptr %46, null
  br i1 %cmp59, label %if.then70, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end58
  %47 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getlinmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %47, i32 0, i32 23
  %48 = load ptr, ptr %step_getlinmem, align 8, !tbaa !28
  %cmp62 = icmp eq ptr %48, null
  br i1 %cmp62, label %if.then70, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false61
  %49 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getimplicitrhs = getelementptr inbounds %struct.ARKodeMemRec, ptr %49, i32 0, i32 25
  %50 = load ptr, ptr %step_getimplicitrhs, align 8, !tbaa !29
  %cmp65 = icmp eq ptr %50, null
  br i1 %cmp65, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %51 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %51, i32 0, i32 27
  %52 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %cmp68 = icmp eq ptr %52, null
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %lor.lhs.false67, %lor.lhs.false64, %lor.lhs.false61, %if.end58
  %53 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %53, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.10)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false67
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  %call72 = call noalias ptr @malloc(i64 noundef 312) #8
  store ptr %call72, ptr %arkls_mem, align 8, !tbaa !4
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %cmp73 = icmp eq ptr %54, null
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end71
  %55 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %55, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.11)
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end76:                                         ; preds = %if.end71
  %56 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %56, i8 0, i64 312, i1 false)
  %57 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS77 = getelementptr inbounds %struct.ARKLsMemRec, ptr %58, i32 0, i32 9
  store ptr %57, ptr %LS77, align 8, !tbaa !31
  %59 = load i32, ptr %iterative, align 4, !tbaa !14
  %60 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative78 = getelementptr inbounds %struct.ARKLsMemRec, ptr %60, i32 0, i32 0
  store i32 %59, ptr %iterative78, align 8, !tbaa !33
  %61 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %62 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %matrixbased79 = getelementptr inbounds %struct.ARKLsMemRec, ptr %62, i32 0, i32 1
  store i32 %61, ptr %matrixbased79, align 4, !tbaa !34
  %63 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp80 = icmp ne ptr %63, null
  br i1 %cmp80, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.end76
  %64 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %64, i32 0, i32 2
  store i32 1, ptr %jacDQ, align 8, !tbaa !35
  %65 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac = getelementptr inbounds %struct.ARKLsMemRec, ptr %65, i32 0, i32 3
  store ptr @arkLsDQJac, ptr %jac, align 8, !tbaa !36
  %66 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %67 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %67, i32 0, i32 4
  store ptr %66, ptr %J_data, align 8, !tbaa !37
  br label %if.end87

if.else83:                                        ; preds = %if.end76
  %68 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ84 = getelementptr inbounds %struct.ARKLsMemRec, ptr %68, i32 0, i32 2
  store i32 0, ptr %jacDQ84, align 8, !tbaa !35
  %69 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac85 = getelementptr inbounds %struct.ARKLsMemRec, ptr %69, i32 0, i32 3
  store ptr null, ptr %jac85, align 8, !tbaa !36
  %70 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data86 = getelementptr inbounds %struct.ARKLsMemRec, ptr %70, i32 0, i32 4
  store ptr null, ptr %J_data86, align 8, !tbaa !37
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.then82
  %71 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %71, i32 0, i32 32
  store i32 1, ptr %jtimesDQ, align 8, !tbaa !38
  %72 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %72, i32 0, i32 33
  store ptr null, ptr %jtsetup, align 8, !tbaa !39
  %73 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %73, i32 0, i32 34
  store ptr @arkLsDQJtimes, ptr %jtimes, align 8, !tbaa !40
  %74 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %75 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %75, i32 0, i32 36
  store ptr %74, ptr %Jt_data, align 8, !tbaa !41
  %76 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getimplicitrhs88 = getelementptr inbounds %struct.ARKodeMemRec, ptr %76, i32 0, i32 25
  %77 = load ptr, ptr %step_getimplicitrhs88, align 8, !tbaa !29
  %78 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call89 = call ptr %77(ptr noundef %78)
  %79 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f = getelementptr inbounds %struct.ARKLsMemRec, ptr %79, i32 0, i32 35
  store ptr %call89, ptr %Jt_f, align 8, !tbaa !42
  %80 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f90 = getelementptr inbounds %struct.ARKLsMemRec, ptr %80, i32 0, i32 35
  %81 = load ptr, ptr %Jt_f90, align 8, !tbaa !42
  %cmp91 = icmp eq ptr %81, null
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end87
  %82 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %82, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.12)
  %83 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %83) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end87
  %84 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %84, i32 0, i32 37
  store i32 0, ptr %user_linsys, align 8, !tbaa !43
  %85 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %85, i32 0, i32 38
  store ptr @arkLsLinSys, ptr %linsys, align 8, !tbaa !44
  %86 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %87 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %87, i32 0, i32 39
  store ptr %86, ptr %A_data, align 8, !tbaa !45
  %88 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMemRec, ptr %88, i32 0, i32 28
  store ptr null, ptr %pset, align 8, !tbaa !46
  %89 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve = getelementptr inbounds %struct.ARKLsMemRec, ptr %89, i32 0, i32 29
  store ptr null, ptr %psolve, align 8, !tbaa !47
  %90 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.ARKLsMemRec, ptr %90, i32 0, i32 30
  store ptr null, ptr %pfree, align 8, !tbaa !48
  %91 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %91, i32 0, i32 2
  %92 = load ptr, ptr %user_data, align 8, !tbaa !49
  %93 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %93, i32 0, i32 31
  store ptr %92, ptr %P_data, align 8, !tbaa !50
  %94 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call95 = call i32 @arkLsInitializeCounters(ptr noundef %94)
  %95 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msbj = getelementptr inbounds %struct.ARKLsMemRec, ptr %95, i32 0, i32 16
  store i64 51, ptr %msbj, align 8, !tbaa !51
  %96 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad = getelementptr inbounds %struct.ARKLsMemRec, ptr %96, i32 0, i32 5
  store i32 1, ptr %jbad, align 8, !tbaa !52
  %97 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac = getelementptr inbounds %struct.ARKLsMemRec, ptr %97, i32 0, i32 7
  store double 5.000000e-02, ptr %eplifac, align 8, !tbaa !53
  %98 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %98, i32 0, i32 40
  store i32 0, ptr %last_flag, align 8, !tbaa !54
  %99 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops96 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %ops96, align 8, !tbaa !8
  %setatimes97 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %setatimes97, align 8, !tbaa !26
  %tobool98 = icmp ne ptr %101, null
  br i1 %tobool98, label %if.then99, label %if.end105

if.then99:                                        ; preds = %if.end94
  %102 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call100 = call i32 @SUNLinSolSetATimes(ptr noundef %102, ptr noundef %103, ptr noundef @arkLsATimes)
  store i32 %call100, ptr %retval1, align 4, !tbaa !14
  %104 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp101 = icmp ne i32 %104, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.then99
  %105 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %105, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.13)
  %106 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %106) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.then99
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end94
  %107 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops106 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %107, i32 0, i32 1
  %108 = load ptr, ptr %ops106, align 8, !tbaa !8
  %setpreconditioner = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %108, i32 0, i32 3
  %109 = load ptr, ptr %setpreconditioner, align 8, !tbaa !55
  %tobool107 = icmp ne ptr %109, null
  br i1 %tobool107, label %if.then108, label %if.end114

if.then108:                                       ; preds = %if.end105
  %110 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %111 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call109 = call i32 @SUNLinSolSetPreconditioner(ptr noundef %110, ptr noundef %111, ptr noundef null, ptr noundef null)
  store i32 %call109, ptr %retval1, align 4, !tbaa !14
  %112 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp110 = icmp ne i32 %112, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then108
  %113 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %113, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.14)
  %114 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %114) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.then108
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end105
  %115 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %cmp115 = icmp ne ptr %115, null
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %if.end114
  %116 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %117 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A118 = getelementptr inbounds %struct.ARKLsMemRec, ptr %117, i32 0, i32 10
  store ptr %116, ptr %A118, align 8, !tbaa !56
  %118 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %118, i32 0, i32 11
  store ptr null, ptr %savedJ, align 8, !tbaa !57
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %if.end114
  %119 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %120 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1120 = getelementptr inbounds %struct.ARKodeMemRec, ptr %120, i32 0, i32 38
  %121 = load ptr, ptr %tempv1120, align 8, !tbaa !16
  %122 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp = getelementptr inbounds %struct.ARKLsMemRec, ptr %122, i32 0, i32 12
  %call121 = call i32 @arkAllocVec(ptr noundef %119, ptr noundef %121, ptr noundef %ytemp)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %if.end119
  %123 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %123, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.11)
  %124 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %124) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end124:                                        ; preds = %if.end119
  %125 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %126 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1125 = getelementptr inbounds %struct.ARKodeMemRec, ptr %126, i32 0, i32 38
  %127 = load ptr, ptr %tempv1125, align 8, !tbaa !16
  %128 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMemRec, ptr %128, i32 0, i32 13
  %call126 = call i32 @arkAllocVec(ptr noundef %125, ptr noundef %127, ptr noundef %x)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end130, label %if.then128

if.then128:                                       ; preds = %if.end124
  %129 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %129, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.11)
  %130 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %131 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp129 = getelementptr inbounds %struct.ARKLsMemRec, ptr %131, i32 0, i32 12
  call void @arkFreeVec(ptr noundef %130, ptr noundef %ytemp129)
  %132 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %132) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %if.end124
  %133 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool131 = icmp ne i32 %133, 0
  br i1 %tobool131, label %if.then132, label %if.end142

if.then132:                                       ; preds = %if.end130
  %134 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp133 = getelementptr inbounds %struct.ARKLsMemRec, ptr %134, i32 0, i32 12
  %135 = load ptr, ptr %ytemp133, align 8, !tbaa !58
  %call134 = call i32 @N_VGetLength(ptr noundef %135)
  %conv135 = sitofp i32 %call134 to double
  %cmp136 = fcmp ole double %conv135, 0.000000e+00
  br i1 %cmp136, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then132
  br label %cond.end

cond.false:                                       ; preds = %if.then132
  %136 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp138 = getelementptr inbounds %struct.ARKLsMemRec, ptr %136, i32 0, i32 12
  %137 = load ptr, ptr %ytemp138, align 8, !tbaa !58
  %call139 = call i32 @N_VGetLength(ptr noundef %137)
  %conv140 = sitofp i32 %call139 to double
  %call141 = call double @sqrt(double noundef %conv140) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call141, %cond.false ]
  %138 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac = getelementptr inbounds %struct.ARKLsMemRec, ptr %138, i32 0, i32 8
  store double %cond, ptr %nrmfac, align 8, !tbaa !59
  br label %if.end142

if.end142:                                        ; preds = %cond.end, %if.end130
  %139 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %tobool143 = icmp ne i32 %139, 0
  br i1 %tobool143, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.end142
  %140 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %scalesol = getelementptr inbounds %struct.ARKLsMemRec, ptr %140, i32 0, i32 6
  store i32 1, ptr %scalesol, align 4, !tbaa !60
  br label %if.end147

if.else145:                                       ; preds = %if.end142
  %141 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %scalesol146 = getelementptr inbounds %struct.ARKLsMemRec, ptr %141, i32 0, i32 6
  store i32 0, ptr %scalesol146, align 4, !tbaa !60
  br label %if.end147

if.end147:                                        ; preds = %if.else145, %if.then144
  %142 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_attachlinsol148 = getelementptr inbounds %struct.ARKodeMemRec, ptr %142, i32 0, i32 19
  %143 = load ptr, ptr %step_attachlinsol148, align 8, !tbaa !27
  %144 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %145 = load i32, ptr %LSType, align 4, !tbaa !13
  %146 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call149 = call i32 %143(ptr noundef %144, ptr noundef @arkLsInitialize, ptr noundef @arkLsSetup, ptr noundef @arkLsSolve, ptr noundef @arkLsFree, i32 noundef %145, ptr noundef %146)
  store i32 %call149, ptr %retval1, align 4, !tbaa !14
  %147 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp150 = icmp ne i32 %147, 0
  br i1 %cmp150, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end147
  %148 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %149 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %148, i32 noundef %149, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.15)
  %150 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x153 = getelementptr inbounds %struct.ARKLsMemRec, ptr %150, i32 0, i32 13
  %151 = load ptr, ptr %x153, align 8, !tbaa !61
  call void @N_VDestroy(ptr noundef %151)
  %152 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp154 = getelementptr inbounds %struct.ARKLsMemRec, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %ytemp154, align 8, !tbaa !58
  call void @N_VDestroy(ptr noundef %153)
  %154 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %154) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  %155 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %155, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end155:                                        ; preds = %if.end147
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.then152, %if.then128, %if.then123, %if.then112, %if.then103, %if.then93, %if.then75, %if.then70, %if.then56, %if.then52, %if.then46, %if.then36, %if.then29, %if.then23, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %matrixbased) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %iterative) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %LSType) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %156 = load i32, ptr %retval, align 4
  ret i32 %156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @arkProcessError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @SUNLinSolGetType(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @arkLsDQJac(double noundef %t, ptr noundef %y, ptr noundef %fy, ptr noundef %Jac, ptr noundef %arkode_mem, ptr noundef %tmp1, ptr noundef %tmp2, ptr noundef %tmp3) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %fy.addr = alloca ptr, align 8
  %Jac.addr = alloca ptr, align 8
  %arkode_mem.addr = alloca ptr, align 8
  %tmp1.addr = alloca ptr, align 8
  %tmp2.addr = alloca ptr, align 8
  %tmp3.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %fi = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %fy, ptr %fy.addr, align 8, !tbaa !4
  store ptr %Jac, ptr %Jac.addr, align 8, !tbaa !4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %tmp1, ptr %tmp1.addr, align 8, !tbaa !4
  store ptr %tmp2, ptr %tmp2.addr, align 8, !tbaa !4
  store ptr %tmp3, ptr %tmp3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fi) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.89, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %4, i32 noundef -2, ptr noundef @.str, ptr noundef @.str.89, ptr noundef @.str.90)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getimplicitrhs = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 25
  %6 = load ptr, ptr %step_getimplicitrhs, align 8, !tbaa !29
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call5 = call ptr %6(ptr noundef %7)
  store ptr %call5, ptr %fi, align 8, !tbaa !4
  %8 = load ptr, ptr %fi, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %8, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %9, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.89, ptr noundef @.str.12)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %10, i32 0, i32 38
  %11 = load ptr, ptr %tempv1, align 8, !tbaa !16
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %ops, align 8, !tbaa !20
  %nvcloneempty = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %nvcloneempty, align 8, !tbaa !63
  %cmp9 = icmp eq ptr %13, null
  br i1 %cmp9, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %14 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv110 = getelementptr inbounds %struct.ARKodeMemRec, ptr %14, i32 0, i32 38
  %15 = load ptr, ptr %tempv110, align 8, !tbaa !16
  %ops11 = getelementptr inbounds %struct._generic_N_Vector, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ops11, align 8, !tbaa !20
  %nvwrmsnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %16, i32 0, i32 21
  %17 = load ptr, ptr %nvwrmsnorm, align 8, !tbaa !24
  %cmp12 = icmp eq ptr %17, null
  br i1 %cmp12, label %if.then33, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv114 = getelementptr inbounds %struct.ARKodeMemRec, ptr %18, i32 0, i32 38
  %19 = load ptr, ptr %tempv114, align 8, !tbaa !16
  %ops15 = getelementptr inbounds %struct._generic_N_Vector, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ops15, align 8, !tbaa !20
  %nvlinearsum = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %nvlinearsum, align 8, !tbaa !64
  %cmp16 = icmp eq ptr %21, null
  br i1 %cmp16, label %if.then33, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %22 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv118 = getelementptr inbounds %struct.ARKodeMemRec, ptr %22, i32 0, i32 38
  %23 = load ptr, ptr %tempv118, align 8, !tbaa !16
  %ops19 = getelementptr inbounds %struct._generic_N_Vector, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %ops19, align 8, !tbaa !20
  %nvdestroy = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %nvdestroy, align 8, !tbaa !65
  %cmp20 = icmp eq ptr %25, null
  br i1 %cmp20, label %if.then33, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %26 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv122 = getelementptr inbounds %struct.ARKodeMemRec, ptr %26, i32 0, i32 38
  %27 = load ptr, ptr %tempv122, align 8, !tbaa !16
  %ops23 = getelementptr inbounds %struct._generic_N_Vector, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %ops23, align 8, !tbaa !20
  %nvscale = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %28, i32 0, i32 15
  %29 = load ptr, ptr %nvscale, align 8, !tbaa !66
  %cmp24 = icmp eq ptr %29, null
  br i1 %cmp24, label %if.then33, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %30 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv126 = getelementptr inbounds %struct.ARKodeMemRec, ptr %30, i32 0, i32 38
  %31 = load ptr, ptr %tempv126, align 8, !tbaa !16
  %ops27 = getelementptr inbounds %struct._generic_N_Vector, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %ops27, align 8, !tbaa !20
  %nvgetarraypointer = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %nvgetarraypointer, align 8, !tbaa !67
  %cmp28 = icmp eq ptr %33, null
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %34 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv130 = getelementptr inbounds %struct.ARKodeMemRec, ptr %34, i32 0, i32 38
  %35 = load ptr, ptr %tempv130, align 8, !tbaa !16
  %ops31 = getelementptr inbounds %struct._generic_N_Vector, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %ops31, align 8, !tbaa !20
  %nvsetarraypointer = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %36, i32 0, i32 7
  %37 = load ptr, ptr %nvsetarraypointer, align 8, !tbaa !68
  %cmp32 = icmp eq ptr %37, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false, %if.end8
  %38 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %38, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.89, ptr noundef @.str.5)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false29
  %39 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call35 = call i32 @SUNMatGetID(ptr noundef %39)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end34
  %40 = load double, ptr %t.addr, align 8, !tbaa !62
  %41 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %45 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %46 = load ptr, ptr %fi, align 8, !tbaa !4
  %47 = load ptr, ptr %tmp1.addr, align 8, !tbaa !4
  %call38 = call i32 @arkLsDenseDQJac(double noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47)
  store i32 %call38, ptr %retval1, align 4, !tbaa !14
  br label %if.end45

if.else:                                          ; preds = %if.end34
  %48 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call39 = call i32 @SUNMatGetID(ptr noundef %48)
  %cmp40 = icmp eq i32 %call39, 3
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else
  %49 = load double, ptr %t.addr, align 8, !tbaa !62
  %50 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %55 = load ptr, ptr %fi, align 8, !tbaa !4
  %56 = load ptr, ptr %tmp1.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %tmp2.addr, align 8, !tbaa !4
  %call42 = call i32 @arkLsBandDQJac(double noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, ptr noundef %57)
  store i32 %call42, ptr %retval1, align 4, !tbaa !14
  br label %if.end44

if.else43:                                        ; preds = %if.else
  %58 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %58, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.89, ptr noundef @.str.91)
  store i32 -3, ptr %retval1, align 4, !tbaa !14
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then41
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then37
  %59 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %59, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then33, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @arkLsDQJtimes(ptr noundef %v, ptr noundef %Jv, double noundef %t, ptr noundef %y, ptr noundef %fy, ptr noundef %arkode_mem, ptr noundef %work) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %Jv.addr = alloca ptr, align 8
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %fy.addr = alloca ptr, align 8
  %arkode_mem.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %sig = alloca double, align 8
  %siginv = alloca double, align 8
  %iter = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %Jv, ptr %Jv.addr, align 8, !tbaa !4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %fy, ptr %fy.addr, align 8, !tbaa !4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %sig) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %siginv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.92, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %ewt = getelementptr inbounds %struct.ARKodeMemRec, ptr %4, i32 0, i32 32
  %5 = load ptr, ptr %ewt, align 8, !tbaa !69
  %call2 = call double @N_VWrmsNorm(ptr noundef %3, ptr noundef %5)
  %div = fdiv double 1.000000e+00, %call2
  store double %div, ptr %sig, align 8, !tbaa !62
  store i32 0, ptr %iter, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %iter, align 4, !tbaa !14
  %cmp3 = icmp slt i32 %6, 3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double, ptr %sig, align 8, !tbaa !62
  %8 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %work.addr, align 8, !tbaa !4
  call void @N_VLinearSum(double noundef %7, ptr noundef %8, double noundef 1.000000e+00, ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 35
  %12 = load ptr, ptr %Jt_f, align 8, !tbaa !42
  %13 = load double, ptr %t.addr, align 8, !tbaa !62
  %14 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %Jv.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %user_data, align 8, !tbaa !49
  %call4 = call i32 %12(double noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %17)
  store i32 %call4, ptr %retval1, align 4, !tbaa !14
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nfeDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 19
  %19 = load i64, ptr %nfeDQ, align 8, !tbaa !70
  %inc = add nsw i64 %19, 1
  store i64 %inc, ptr %nfeDQ, align 8, !tbaa !70
  %20 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %20, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  %21 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp8 = icmp slt i32 %21, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %22 = load double, ptr %sig, align 8, !tbaa !62
  %mul = fmul double %22, 2.500000e-01
  store double %mul, ptr %sig, align 8, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %23 = load i32, ptr %iter, align 4, !tbaa !14
  %inc11 = add nsw i32 %23, 1
  store i32 %inc11, ptr %iter, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %24 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp12 = icmp sgt i32 %24, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %25 = load double, ptr %sig, align 8, !tbaa !62
  %div15 = fdiv double 1.000000e+00, %25
  store double %div15, ptr %siginv, align 8, !tbaa !62
  %26 = load double, ptr %siginv, align 8, !tbaa !62
  %27 = load ptr, ptr %Jv.addr, align 8, !tbaa !4
  %28 = load double, ptr %siginv, align 8, !tbaa !62
  %fneg = fneg double %28
  %29 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %Jv.addr, align 8, !tbaa !4
  call void @N_VLinearSum(double noundef %26, ptr noundef %27, double noundef %fneg, ptr noundef %29, ptr noundef %30)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %siginv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sig) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @arkLsLinSys(double noundef %t, ptr noundef %y, ptr noundef %fy, ptr noundef %A, ptr noundef %M, i32 noundef %jok, ptr noundef %jcur, double noundef %gamma, ptr noundef %arkode_mem, ptr noundef %vtemp1, ptr noundef %vtemp2, ptr noundef %vtemp3) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %fy.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %M.addr = alloca ptr, align 8
  %jok.addr = alloca i32, align 4
  %jcur.addr = alloca ptr, align 8
  %gamma.addr = alloca double, align 8
  %arkode_mem.addr = alloca ptr, align 8
  %vtemp1.addr = alloca ptr, align 8
  %vtemp2.addr = alloca ptr, align 8
  %vtemp3.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %fy, ptr %fy.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %M, ptr %M.addr, align 8, !tbaa !4
  store i32 %jok, ptr %jok.addr, align 4, !tbaa !14
  store ptr %jcur, ptr %jcur.addr, align 8, !tbaa !4
  store double %gamma, ptr %gamma.addr, align 8, !tbaa !62
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %vtemp1, ptr %vtemp1.addr, align 8, !tbaa !4
  store ptr %vtemp2, ptr %vtemp2.addr, align 8, !tbaa !4
  store ptr %vtemp3, ptr %vtemp3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.122, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %jok.addr, align 4, !tbaa !14
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %jcur.addr, align 8, !tbaa !4
  store i32 0, ptr %4, align 4, !tbaa !14
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %savedJ, align 8, !tbaa !57
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call3 = call i32 @SUNMatCopy(ptr noundef %6, ptr noundef %7)
  store i32 %call3, ptr %retval1, align 4, !tbaa !14
  %8 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %9, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.115)
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 40
  store i32 -11, ptr %last_flag, align 8, !tbaa !54
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag6 = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 40
  %12 = load i32, ptr %last_flag6, align 8, !tbaa !54
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  br label %if.end33

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %jcur.addr, align 8, !tbaa !4
  store i32 1, ptr %13, align 4, !tbaa !14
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %iterative, align 8, !tbaa !33
  %tobool8 = icmp ne i32 %15, 0
  br i1 %tobool8, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call10 = call i32 @SUNMatZero(ptr noundef %16)
  store i32 %call10, ptr %retval1, align 4, !tbaa !14
  %17 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then9
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %18, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.115)
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag13 = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 40
  store i32 -11, ptr %last_flag13, align 8, !tbaa !54
  %20 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag14 = getelementptr inbounds %struct.ARKLsMemRec, ptr %20, i32 0, i32 40
  %21 = load i32, ptr %last_flag14, align 8, !tbaa !54
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.else
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac = getelementptr inbounds %struct.ARKLsMemRec, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %jac, align 8, !tbaa !36
  %24 = load double, ptr %t.addr, align 8, !tbaa !62
  %25 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %J_data, align 8, !tbaa !37
  %30 = load ptr, ptr %vtemp1.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %vtemp2.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %vtemp3.addr, align 8, !tbaa !4
  %call17 = call i32 %23(double noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store i32 %call17, ptr %retval1, align 4, !tbaa !14
  %33 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp18 = icmp slt i32 %33, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %34 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %34, i32 noundef -7, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.100)
  %35 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag20 = getelementptr inbounds %struct.ARKLsMemRec, ptr %35, i32 0, i32 40
  store i32 -7, ptr %last_flag20, align 8, !tbaa !54
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %36 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp22 = icmp sgt i32 %36, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %37 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag24 = getelementptr inbounds %struct.ARKLsMemRec, ptr %37, i32 0, i32 40
  store i32 -8, ptr %last_flag24, align 8, !tbaa !54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %38 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ26 = getelementptr inbounds %struct.ARKLsMemRec, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %savedJ26, align 8, !tbaa !57
  %call27 = call i32 @SUNMatCopy(ptr noundef %38, ptr noundef %40)
  store i32 %call27, ptr %retval1, align 4, !tbaa !14
  %41 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool28 = icmp ne i32 %41, 0
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  %42 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %42, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.115)
  %43 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag30 = getelementptr inbounds %struct.ARKLsMemRec, ptr %43, i32 0, i32 40
  store i32 -11, ptr %last_flag30, align 8, !tbaa !54
  %44 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag31 = getelementptr inbounds %struct.ARKLsMemRec, ptr %44, i32 0, i32 40
  %45 = load i32, ptr %last_flag31, align 8, !tbaa !54
  store i32 %45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end7
  %46 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %cmp34 = icmp eq ptr %46, null
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.end33
  %47 = load double, ptr %gamma.addr, align 8, !tbaa !62
  %fneg = fneg double %47
  %48 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call36 = call i32 @SUNMatScaleAddI(double noundef %fneg, ptr noundef %48)
  store i32 %call36, ptr %retval1, align 4, !tbaa !14
  br label %if.end40

if.else37:                                        ; preds = %if.end33
  %49 = load double, ptr %gamma.addr, align 8, !tbaa !62
  %fneg38 = fneg double %49
  %50 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %call39 = call i32 @SUNMatScaleAdd(double noundef %fneg38, ptr noundef %50, ptr noundef %51)
  store i32 %call39, ptr %retval1, align 4, !tbaa !14
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35
  %52 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool41 = icmp ne i32 %52, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end40
  %53 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %53, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.115)
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag43 = getelementptr inbounds %struct.ARKLsMemRec, ptr %54, i32 0, i32 40
  store i32 -11, ptr %last_flag43, align 8, !tbaa !54
  %55 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag44 = getelementptr inbounds %struct.ARKLsMemRec, ptr %55, i32 0, i32 40
  %56 = load i32, ptr %last_flag44, align 8, !tbaa !54
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then42, %if.then29, %if.then23, %if.then19, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define i32 @arkLsInitializeCounters(ptr noundef %arkls_mem) #0 {
entry:
  %arkls_mem.addr = alloca ptr, align 8
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nje = getelementptr inbounds %struct.ARKLsMemRec, ptr %0, i32 0, i32 18
  store i64 0, ptr %nje, align 8, !tbaa !71
  %1 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nfeDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %1, i32 0, i32 19
  store i64 0, ptr %nfeDQ, align 8, !tbaa !70
  %2 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nstlj = getelementptr inbounds %struct.ARKLsMemRec, ptr %2, i32 0, i32 20
  store i64 0, ptr %nstlj, align 8, !tbaa !72
  %3 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 21
  store i64 0, ptr %npe, align 8, !tbaa !73
  %4 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMemRec, ptr %4, i32 0, i32 22
  store i64 0, ptr %nli, align 8, !tbaa !74
  %5 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 23
  store i64 0, ptr %nps, align 8, !tbaa !75
  %6 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMemRec, ptr %6, i32 0, i32 24
  store i64 0, ptr %ncfl, align 8, !tbaa !76
  %7 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %njtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %7, i32 0, i32 25
  store i64 0, ptr %njtsetup, align 8, !tbaa !77
  %8 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %njtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %8, i32 0, i32 26
  store i64 0, ptr %njtimes, align 8, !tbaa !78
  ret i32 0
}

declare i32 @SUNLinSolSetATimes(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @arkLsATimes(ptr noundef %arkode_mem, ptr noundef %v, ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %ark_step_massmem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %gamma = alloca double, align 8
  %gamrat = alloca double, align 8
  %dgamma_fail = alloca i32, align 4
  %jcur = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_massmem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcur) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.79, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %ark_step_massmem, align 8, !tbaa !4
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %3, i32 0, i32 24
  %4 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem4 = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 24
  %6 = load ptr, ptr %step_getmassmem4, align 8, !tbaa !79
  %7 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call5 = call ptr %6(ptr noundef %7)
  store ptr %call5, ptr %ark_step_massmem, align 8, !tbaa !4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %8, i32 0, i32 27
  %9 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %10 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call7 = call i32 %9(ptr noundef %10, ptr noundef %gamma, ptr noundef %gamrat, ptr noundef %jcur, ptr noundef %dgamma_fail)
  store i32 %call7, ptr %retval1, align 4, !tbaa !14
  %11 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp8 = icmp ne i32 %11, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %13 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %12, i32 noundef %13, ptr noundef @.str, ptr noundef @.str.79, ptr noundef @.str.80)
  %14 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %15, i32 0, i32 34
  %16 = load ptr, ptr %jtimes, align 8, !tbaa !40
  %17 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 17
  %20 = load double, ptr %tcur, align 8, !tbaa !80
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %ycur, align 8, !tbaa !81
  %23 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %23, i32 0, i32 15
  %24 = load ptr, ptr %fcur, align 8, !tbaa !82
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %25, i32 0, i32 36
  %26 = load ptr, ptr %Jt_data, align 8, !tbaa !41
  %27 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp = getelementptr inbounds %struct.ARKLsMemRec, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %ytemp, align 8, !tbaa !58
  %call11 = call i32 %16(ptr noundef %17, ptr noundef %18, double noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %28)
  store i32 %call11, ptr %retval1, align 4, !tbaa !14
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %njtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %29, i32 0, i32 26
  %30 = load i64, ptr %njtimes, align 8, !tbaa !78
  %inc = add nsw i64 %30, 1
  store i64 %inc, ptr %njtimes, align 8, !tbaa !78
  %31 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp12 = icmp ne i32 %31, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  %32 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %32, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %33 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %33, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %34 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp17 = getelementptr inbounds %struct.ARKLsMemRec, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %ytemp17, align 8, !tbaa !58
  %call18 = call i32 @arkLsMTimes(ptr noundef %34, ptr noundef %35, ptr noundef %37)
  store i32 %call18, ptr %retval1, align 4, !tbaa !14
  %38 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp19 = icmp ne i32 %38, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  %39 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %39, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  %40 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp22 = getelementptr inbounds %struct.ARKLsMemRec, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %ytemp22, align 8, !tbaa !58
  %42 = load double, ptr %gamma, align 8, !tbaa !62
  %fneg = fneg double %42
  %43 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %z.addr, align 8, !tbaa !4
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %41, double noundef %fneg, ptr noundef %43, ptr noundef %44)
  br label %if.end24

if.else:                                          ; preds = %if.end14
  %45 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %46 = load double, ptr %gamma, align 8, !tbaa !62
  %fneg23 = fneg double %46
  %47 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %z.addr, align 8, !tbaa !4
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %45, double noundef %fneg23, ptr noundef %47, ptr noundef %48)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end21
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20, %if.then13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_massmem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

declare i32 @SUNLinSolSetPreconditioner(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @arkAllocVec(ptr noundef, ptr noundef, ptr noundef) #2

declare void @arkFreeVec(ptr noundef, ptr noundef) #2

declare i32 @N_VGetLength(ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #5

; Function Attrs: nounwind uwtable
define i32 @arkLsInitialize(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %arkls_massmem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_massmem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.93, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr null, ptr %arkls_massmem, align 8, !tbaa !4
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %3, i32 0, i32 24
  %4 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem4 = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 24
  %6 = load ptr, ptr %step_getmassmem4, align 8, !tbaa !79
  %7 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call5 = call ptr %6(ptr noundef %7)
  %cmp6 = icmp ne ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.then3
  %8 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call8 = call i32 @arkLs_AccessMassMem(ptr noundef %8, ptr noundef @.str.93, ptr noundef %ark_mem, ptr noundef %arkls_massmem)
  store i32 %call8, ptr %retval1, align 4, !tbaa !14
  %9 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %10 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %A, align 8, !tbaa !56
  %cmp14 = icmp ne ptr %12, null
  br i1 %cmp14, label %if.then15, label %if.else49

if.then15:                                        ; preds = %if.end13
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 37
  %14 = load i32, ptr %user_linsys, align 8, !tbaa !43
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end48, label %if.then16

if.then16:                                        ; preds = %if.then15
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %15, i32 0, i32 38
  store ptr @arkLsLinSys, ptr %linsys, align 8, !tbaa !44
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 39
  store ptr %16, ptr %A_data, align 8, !tbaa !45
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %jacDQ, align 8, !tbaa !35
  %tobool17 = icmp ne i32 %19, 0
  br i1 %tobool17, label %if.then18, label %if.end36

if.then18:                                        ; preds = %if.then16
  store i32 0, ptr %retval1, align 4, !tbaa !14
  %20 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A19 = getelementptr inbounds %struct.ARKLsMemRec, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %A19, align 8, !tbaa !56
  %ops = getelementptr inbounds %struct._generic_SUNMatrix, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ops, align 8, !tbaa !83
  %getid = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %getid, align 8, !tbaa !85
  %tobool20 = icmp ne ptr %23, null
  br i1 %tobool20, label %if.then21, label %if.else30

if.then21:                                        ; preds = %if.then18
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A22 = getelementptr inbounds %struct.ARKLsMemRec, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %A22, align 8, !tbaa !56
  %call23 = call i32 @SUNMatGetID(ptr noundef %25)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %26 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A25 = getelementptr inbounds %struct.ARKLsMemRec, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %A25, align 8, !tbaa !56
  %call26 = call i32 @SUNMatGetID(ptr noundef %27)
  %cmp27 = icmp eq i32 %call26, 3
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %lor.lhs.false, %if.then21
  %28 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac = getelementptr inbounds %struct.ARKLsMemRec, ptr %28, i32 0, i32 3
  store ptr @arkLsDQJac, ptr %jac, align 8, !tbaa !36
  %29 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %30 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %30, i32 0, i32 4
  store ptr %29, ptr %J_data, align 8, !tbaa !37
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false
  %31 = load i32, ptr %retval1, align 4, !tbaa !14
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %retval1, align 4, !tbaa !14
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then28
  br label %if.end32

if.else30:                                        ; preds = %if.then18
  %32 = load i32, ptr %retval1, align 4, !tbaa !14
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, ptr %retval1, align 4, !tbaa !14
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.end29
  %33 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool33 = icmp ne i32 %33, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  %34 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %34, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.94)
  %35 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %35, i32 0, i32 40
  store i32 -3, ptr %last_flag, align 8, !tbaa !54
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then16
  %36 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %36, i32 0, i32 11
  %37 = load ptr, ptr %savedJ, align 8, !tbaa !57
  %cmp37 = icmp eq ptr %37, null
  br i1 %cmp37, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end36
  %38 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A39 = getelementptr inbounds %struct.ARKLsMemRec, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %A39, align 8, !tbaa !56
  %call40 = call ptr @SUNMatClone(ptr noundef %39)
  %40 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ41 = getelementptr inbounds %struct.ARKLsMemRec, ptr %40, i32 0, i32 11
  store ptr %call40, ptr %savedJ41, align 8, !tbaa !57
  %41 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ42 = getelementptr inbounds %struct.ARKLsMemRec, ptr %41, i32 0, i32 11
  %42 = load ptr, ptr %savedJ42, align 8, !tbaa !57
  %cmp43 = icmp eq ptr %42, null
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then38
  %43 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %43, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.11)
  %44 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag45 = getelementptr inbounds %struct.ARKLsMemRec, ptr %44, i32 0, i32 40
  store i32 -4, ptr %last_flag45, align 8, !tbaa !54
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.then38
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end36
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then15
  br label %if.end56

if.else49:                                        ; preds = %if.end13
  %45 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ50 = getelementptr inbounds %struct.ARKLsMemRec, ptr %45, i32 0, i32 2
  store i32 0, ptr %jacDQ50, align 8, !tbaa !35
  %46 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac51 = getelementptr inbounds %struct.ARKLsMemRec, ptr %46, i32 0, i32 3
  store ptr null, ptr %jac51, align 8, !tbaa !36
  %47 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data52 = getelementptr inbounds %struct.ARKLsMemRec, ptr %47, i32 0, i32 4
  store ptr null, ptr %J_data52, align 8, !tbaa !37
  %48 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys53 = getelementptr inbounds %struct.ARKLsMemRec, ptr %48, i32 0, i32 37
  store i32 0, ptr %user_linsys53, align 8, !tbaa !43
  %49 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys54 = getelementptr inbounds %struct.ARKLsMemRec, ptr %49, i32 0, i32 38
  store ptr null, ptr %linsys54, align 8, !tbaa !44
  %50 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data55 = getelementptr inbounds %struct.ARKLsMemRec, ptr %50, i32 0, i32 39
  store ptr null, ptr %A_data55, align 8, !tbaa !45
  br label %if.end56

if.end56:                                         ; preds = %if.else49, %if.end48
  %51 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %tobool57 = icmp ne ptr %51, null
  br i1 %tobool57, label %if.then58, label %if.end127

if.then58:                                        ; preds = %if.end56
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A59 = getelementptr inbounds %struct.ARKLsMemRec, ptr %52, i32 0, i32 10
  %53 = load ptr, ptr %A59, align 8, !tbaa !56
  %cmp60 = icmp eq ptr %53, null
  %conv = zext i1 %cmp60 to i32
  %54 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %M, align 8, !tbaa !87
  %cmp61 = icmp eq ptr %55, null
  %conv62 = zext i1 %cmp61 to i32
  %xor = xor i32 %conv, %conv62
  %tobool63 = icmp ne i32 %xor, 0
  br i1 %tobool63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.then58
  %56 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %56, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.95)
  %57 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag65 = getelementptr inbounds %struct.ARKLsMemRec, ptr %57, i32 0, i32 40
  store i32 -3, ptr %last_flag65, align 8, !tbaa !54
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.then58
  %58 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A67 = getelementptr inbounds %struct.ARKLsMemRec, ptr %58, i32 0, i32 10
  %59 = load ptr, ptr %A67, align 8, !tbaa !56
  %tobool68 = icmp ne ptr %59, null
  br i1 %tobool68, label %if.then69, label %if.end104

if.then69:                                        ; preds = %if.end66
  store i32 0, ptr %retval1, align 4, !tbaa !14
  %60 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A70 = getelementptr inbounds %struct.ARKLsMemRec, ptr %60, i32 0, i32 10
  %61 = load ptr, ptr %A70, align 8, !tbaa !56
  %ops71 = getelementptr inbounds %struct._generic_SUNMatrix, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %ops71, align 8, !tbaa !83
  %getid72 = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %getid72, align 8, !tbaa !85
  %cmp73 = icmp eq ptr %63, null
  %conv74 = zext i1 %cmp73 to i32
  %64 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %M75 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %M75, align 8, !tbaa !87
  %ops76 = getelementptr inbounds %struct._generic_SUNMatrix, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %ops76, align 8, !tbaa !83
  %getid77 = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %getid77, align 8, !tbaa !85
  %cmp78 = icmp eq ptr %67, null
  %conv79 = zext i1 %cmp78 to i32
  %xor80 = xor i32 %conv74, %conv79
  %tobool81 = icmp ne i32 %xor80, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.then69
  %68 = load i32, ptr %retval1, align 4, !tbaa !14
  %inc83 = add nsw i32 %68, 1
  store i32 %inc83, ptr %retval1, align 4, !tbaa !14
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.then69
  %69 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A85 = getelementptr inbounds %struct.ARKLsMemRec, ptr %69, i32 0, i32 10
  %70 = load ptr, ptr %A85, align 8, !tbaa !56
  %ops86 = getelementptr inbounds %struct._generic_SUNMatrix, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %ops86, align 8, !tbaa !83
  %getid87 = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %getid87, align 8, !tbaa !85
  %tobool88 = icmp ne ptr %72, null
  br i1 %tobool88, label %if.then89, label %if.end99

if.then89:                                        ; preds = %if.end84
  %73 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A90 = getelementptr inbounds %struct.ARKLsMemRec, ptr %73, i32 0, i32 10
  %74 = load ptr, ptr %A90, align 8, !tbaa !56
  %call91 = call i32 @SUNMatGetID(ptr noundef %74)
  %75 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %M92 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %75, i32 0, i32 3
  %76 = load ptr, ptr %M92, align 8, !tbaa !87
  %call93 = call i32 @SUNMatGetID(ptr noundef %76)
  %cmp94 = icmp ne i32 %call91, %call93
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.then89
  %77 = load i32, ptr %retval1, align 4, !tbaa !14
  %inc97 = add nsw i32 %77, 1
  store i32 %inc97, ptr %retval1, align 4, !tbaa !14
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.then89
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end84
  %78 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool100 = icmp ne i32 %78, 0
  br i1 %tobool100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end99
  %79 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %79, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.96)
  %80 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag102 = getelementptr inbounds %struct.ARKLsMemRec, ptr %80, i32 0, i32 40
  store i32 -3, ptr %last_flag102, align 8, !tbaa !54
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %if.end99
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.end66
  %81 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %81, i32 0, i32 9
  %82 = load ptr, ptr %LS, align 8, !tbaa !31
  %call105 = call i32 @SUNLinSolGetType(ptr noundef %82)
  %cmp106 = icmp eq i32 %call105, 3
  br i1 %cmp106, label %land.lhs.true, label %if.end114

land.lhs.true:                                    ; preds = %if.end104
  %83 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %LS108 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %83, i32 0, i32 19
  %84 = load ptr, ptr %LS108, align 8, !tbaa !89
  %call109 = call i32 @SUNLinSolGetType(ptr noundef %84)
  %cmp110 = icmp ne i32 %call109, 3
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %land.lhs.true
  %85 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %85, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.97)
  %86 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag113 = getelementptr inbounds %struct.ARKLsMemRec, ptr %86, i32 0, i32 40
  store i32 -3, ptr %last_flag113, align 8, !tbaa !54
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end114:                                        ; preds = %land.lhs.true, %if.end104
  %87 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS115 = getelementptr inbounds %struct.ARKLsMemRec, ptr %87, i32 0, i32 9
  %88 = load ptr, ptr %LS115, align 8, !tbaa !31
  %call116 = call i32 @SUNLinSolGetType(ptr noundef %88)
  %cmp117 = icmp ne i32 %call116, 3
  br i1 %cmp117, label %land.lhs.true119, label %if.end126

land.lhs.true119:                                 ; preds = %if.end114
  %89 = load ptr, ptr %arkls_massmem, align 8, !tbaa !4
  %LS120 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %89, i32 0, i32 19
  %90 = load ptr, ptr %LS120, align 8, !tbaa !89
  %call121 = call i32 @SUNLinSolGetType(ptr noundef %90)
  %cmp122 = icmp eq i32 %call121, 3
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %land.lhs.true119
  %91 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %91, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.93, ptr noundef @.str.97)
  %92 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag125 = getelementptr inbounds %struct.ARKLsMemRec, ptr %92, i32 0, i32 40
  store i32 -3, ptr %last_flag125, align 8, !tbaa !54
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end126:                                        ; preds = %land.lhs.true119, %if.end114
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end56
  %93 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call128 = call i32 @arkLsInitializeCounters(ptr noundef %93)
  %94 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %94, i32 0, i32 32
  %95 = load i32, ptr %jtimesDQ, align 8, !tbaa !38
  %tobool129 = icmp ne i32 %95, 0
  br i1 %tobool129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end127
  %96 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %96, i32 0, i32 33
  store ptr null, ptr %jtsetup, align 8, !tbaa !39
  %97 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %97, i32 0, i32 34
  store ptr @arkLsDQJtimes, ptr %jtimes, align 8, !tbaa !40
  %98 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %99 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %99, i32 0, i32 36
  store ptr %98, ptr %Jt_data, align 8, !tbaa !41
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end127
  %100 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A132 = getelementptr inbounds %struct.ARKLsMemRec, ptr %100, i32 0, i32 10
  %101 = load ptr, ptr %A132, align 8, !tbaa !56
  %cmp133 = icmp eq ptr %101, null
  br i1 %cmp133, label %land.lhs.true135, label %if.end143

land.lhs.true135:                                 ; preds = %if.end131
  %102 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMemRec, ptr %102, i32 0, i32 28
  %103 = load ptr, ptr %pset, align 8, !tbaa !46
  %cmp136 = icmp eq ptr %103, null
  br i1 %cmp136, label %land.lhs.true138, label %if.end143

land.lhs.true138:                                 ; preds = %land.lhs.true135
  %104 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablelsetup = getelementptr inbounds %struct.ARKodeMemRec, ptr %104, i32 0, i32 21
  %105 = load ptr, ptr %step_disablelsetup, align 8, !tbaa !90
  %cmp139 = icmp ne ptr %105, null
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %land.lhs.true138
  %106 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablelsetup142 = getelementptr inbounds %struct.ARKodeMemRec, ptr %106, i32 0, i32 21
  %107 = load ptr, ptr %step_disablelsetup142, align 8, !tbaa !90
  %108 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void %107(ptr noundef %108)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %land.lhs.true138, %land.lhs.true135, %if.end131
  %109 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS144 = getelementptr inbounds %struct.ARKLsMemRec, ptr %109, i32 0, i32 9
  %110 = load ptr, ptr %LS144, align 8, !tbaa !31
  %call145 = call i32 @SUNLinSolGetType(ptr noundef %110)
  %cmp146 = icmp eq i32 %call145, 3
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end143
  %111 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablelsetup149 = getelementptr inbounds %struct.ARKodeMemRec, ptr %111, i32 0, i32 21
  %112 = load ptr, ptr %step_disablelsetup149, align 8, !tbaa !90
  %113 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void %112(ptr noundef %113)
  %114 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %scalesol = getelementptr inbounds %struct.ARKLsMemRec, ptr %114, i32 0, i32 6
  store i32 0, ptr %scalesol, align 4, !tbaa !60
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end143
  %115 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS151 = getelementptr inbounds %struct.ARKLsMemRec, ptr %115, i32 0, i32 9
  %116 = load ptr, ptr %LS151, align 8, !tbaa !31
  %call152 = call i32 @SUNLinSolInitialize(ptr noundef %116)
  %117 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag153 = getelementptr inbounds %struct.ARKLsMemRec, ptr %117, i32 0, i32 40
  store i32 %call152, ptr %last_flag153, align 8, !tbaa !54
  %118 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag154 = getelementptr inbounds %struct.ARKLsMemRec, ptr %118, i32 0, i32 40
  %119 = load i32, ptr %last_flag154, align 8, !tbaa !54
  store i32 %119, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %if.then124, %if.then112, %if.then101, %if.then64, %if.then44, %if.then34, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_massmem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %120 = load i32, ptr %retval, align 4
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define i32 @arkLsSetup(ptr noundef %arkode_mem, i32 noundef %convfail, double noundef %tpred, ptr noundef %ypred, ptr noundef %fpred, ptr noundef %jcurPtr, ptr noundef %vtemp1, ptr noundef %vtemp2, ptr noundef %vtemp3) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %convfail.addr = alloca i32, align 4
  %tpred.addr = alloca double, align 8
  %ypred.addr = alloca ptr, align 8
  %fpred.addr = alloca ptr, align 8
  %jcurPtr.addr = alloca ptr, align 8
  %vtemp1.addr = alloca ptr, align 8
  %vtemp2.addr = alloca ptr, align 8
  %vtemp3.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %ark_step_massmem = alloca ptr, align 8
  %M = alloca ptr, align 8
  %gamma = alloca double, align 8
  %gamrat = alloca double, align 8
  %dgamma_fail = alloca i32, align 4
  %jcur = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store i32 %convfail, ptr %convfail.addr, align 4, !tbaa !14
  store double %tpred, ptr %tpred.addr, align 8, !tbaa !62
  store ptr %ypred, ptr %ypred.addr, align 8, !tbaa !4
  store ptr %fpred, ptr %fpred.addr, align 8, !tbaa !4
  store ptr %jcurPtr, ptr %jcurPtr.addr, align 8, !tbaa !4
  store ptr %vtemp1, ptr %vtemp1.addr, align 8, !tbaa !4
  store ptr %vtemp2, ptr %vtemp2.addr, align 8, !tbaa !4
  store ptr %vtemp3, ptr %vtemp3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  store ptr null, ptr %ark_mem, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_massmem) #7
  store ptr null, ptr %ark_step_massmem, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %M) #7
  store ptr null, ptr %M, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.98, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %LS, align 8, !tbaa !31
  %call2 = call i32 @SUNLinSolGetType(ptr noundef %4)
  %cmp3 = icmp eq i32 %call2, 3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 40
  store i32 0, ptr %last_flag, align 8, !tbaa !54
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag5 = getelementptr inbounds %struct.ARKLsMemRec, ptr %6, i32 0, i32 40
  %7 = load i32, ptr %last_flag5, align 8, !tbaa !54
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = load double, ptr %tpred.addr, align 8, !tbaa !62
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 17
  store double %8, ptr %tcur, align 8, !tbaa !80
  %10 = load ptr, ptr %ypred.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 14
  store ptr %10, ptr %ycur, align 8, !tbaa !81
  %12 = load ptr, ptr %fpred.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 15
  store ptr %12, ptr %fcur, align 8, !tbaa !82
  %14 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %14, i32 0, i32 27
  %15 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %16 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call7 = call i32 %15(ptr noundef %16, ptr noundef %gamma, ptr noundef %gamrat, ptr noundef %jcur, ptr noundef %dgamma_fail)
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag8 = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 40
  store i32 %call7, ptr %last_flag8, align 8, !tbaa !54
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 40
  %19 = load i32, ptr %last_flag9, align 8, !tbaa !54
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag11 = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 40
  %22 = load i32, ptr %last_flag11, align 8, !tbaa !54
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %20, i32 noundef %22, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.80)
  %23 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag12 = getelementptr inbounds %struct.ARKLsMemRec, ptr %23, i32 0, i32 40
  %24 = load i32, ptr %last_flag12, align 8, !tbaa !54
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %25 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %initsetup = getelementptr inbounds %struct.ARKodeMemRec, ptr %25, i32 0, i32 83
  %26 = load i32, ptr %initsetup, align 4, !tbaa !91
  %tobool14 = icmp ne i32 %26, 0
  br i1 %tobool14, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %27 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %nst = getelementptr inbounds %struct.ARKodeMemRec, ptr %27, i32 0, i32 64
  %28 = load i64, ptr %nst, align 8, !tbaa !92
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nstlj = getelementptr inbounds %struct.ARKLsMemRec, ptr %29, i32 0, i32 20
  %30 = load i64, ptr %nstlj, align 8, !tbaa !72
  %31 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msbj = getelementptr inbounds %struct.ARKLsMemRec, ptr %31, i32 0, i32 16
  %32 = load i64, ptr %msbj, align 8, !tbaa !51
  %add = add nsw i64 %30, %32
  %cmp15 = icmp sge i64 %28, %add
  br i1 %cmp15, label %lor.end, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %33 = load i32, ptr %convfail.addr, align 4, !tbaa !14
  %cmp17 = icmp eq i32 %33, 1
  br i1 %cmp17, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %34 = load i32, ptr %dgamma_fail, align 4, !tbaa !14
  %tobool18 = icmp ne i32 %34, 0
  br i1 %tobool18, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false16
  %35 = load i32, ptr %convfail.addr, align 4, !tbaa !14
  %cmp19 = icmp eq i32 %35, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true, %lor.lhs.false, %if.end13
  %36 = phi i1 [ true, %land.lhs.true ], [ true, %lor.lhs.false ], [ true, %if.end13 ], [ %cmp19, %lor.rhs ]
  %lor.ext = zext i1 %36 to i32
  %37 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad = getelementptr inbounds %struct.ARKLsMemRec, ptr %37, i32 0, i32 5
  store i32 %lor.ext, ptr %jbad, align 8, !tbaa !52
  %38 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %38, i32 0, i32 24
  %39 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %tobool20 = icmp ne ptr %39, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %lor.end
  %40 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem22 = getelementptr inbounds %struct.ARKodeMemRec, ptr %40, i32 0, i32 24
  %41 = load ptr, ptr %step_getmassmem22, align 8, !tbaa !79
  %42 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call23 = call ptr %41(ptr noundef %42)
  store ptr %call23, ptr %ark_step_massmem, align 8, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %lor.end
  %43 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %tobool25 = icmp ne ptr %43, null
  br i1 %tobool25, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end24
  %44 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %M27 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %M27, align 8, !tbaa !87
  store ptr %45, ptr %M, align 8, !tbaa !4
  %46 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %47 = load double, ptr %tpred.addr, align 8, !tbaa !62
  %48 = load ptr, ptr %vtemp1.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %vtemp2.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %vtemp3.addr, align 8, !tbaa !4
  %call28 = call i32 @arkLsMassSetup(ptr noundef %46, double noundef %47, ptr noundef %48, ptr noundef %49, ptr noundef %50)
  %51 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag29 = getelementptr inbounds %struct.ARKLsMemRec, ptr %51, i32 0, i32 40
  store i32 %call28, ptr %last_flag29, align 8, !tbaa !54
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag30 = getelementptr inbounds %struct.ARKLsMemRec, ptr %52, i32 0, i32 40
  %53 = load i32, ptr %last_flag30, align 8, !tbaa !54
  %tobool31 = icmp ne i32 %53, 0
  br i1 %tobool31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then26
  %54 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %54, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.99)
  %55 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag33 = getelementptr inbounds %struct.ARKLsMemRec, ptr %55, i32 0, i32 40
  %56 = load i32, ptr %last_flag33, align 8, !tbaa !54
  store i32 %56, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end24
  %57 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %57, i32 0, i32 10
  %58 = load ptr, ptr %A, align 8, !tbaa !56
  %cmp36 = icmp ne ptr %58, null
  br i1 %cmp36, label %if.then37, label %if.else57

if.then37:                                        ; preds = %if.end35
  %59 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %59, i32 0, i32 38
  %60 = load ptr, ptr %linsys, align 8, !tbaa !44
  %61 = load double, ptr %tpred.addr, align 8, !tbaa !62
  %62 = load ptr, ptr %ypred.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %fpred.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A38 = getelementptr inbounds %struct.ARKLsMemRec, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %A38, align 8, !tbaa !56
  %66 = load ptr, ptr %M, align 8, !tbaa !4
  %67 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad39 = getelementptr inbounds %struct.ARKLsMemRec, ptr %67, i32 0, i32 5
  %68 = load i32, ptr %jbad39, align 8, !tbaa !52
  %tobool40 = icmp ne i32 %68, 0
  %lnot = xor i1 %tobool40, true
  %lnot.ext = zext i1 %lnot to i32
  %69 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !4
  %70 = load double, ptr %gamma, align 8, !tbaa !62
  %71 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %71, i32 0, i32 39
  %72 = load ptr, ptr %A_data, align 8, !tbaa !45
  %73 = load ptr, ptr %vtemp1.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %vtemp2.addr, align 8, !tbaa !4
  %75 = load ptr, ptr %vtemp3.addr, align 8, !tbaa !4
  %call41 = call i32 %60(double noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %65, ptr noundef %66, i32 noundef %lnot.ext, ptr noundef %69, double noundef %70, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef %75)
  store i32 %call41, ptr %retval1, align 4, !tbaa !14
  %76 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !14
  %tobool42 = icmp ne i32 %77, 0
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.then37
  %78 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nje = getelementptr inbounds %struct.ARKLsMemRec, ptr %78, i32 0, i32 18
  %79 = load i64, ptr %nje, align 8, !tbaa !71
  %inc = add nsw i64 %79, 1
  store i64 %inc, ptr %nje, align 8, !tbaa !71
  %80 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %nst44 = getelementptr inbounds %struct.ARKodeMemRec, ptr %80, i32 0, i32 64
  %81 = load i64, ptr %nst44, align 8, !tbaa !92
  %82 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nstlj45 = getelementptr inbounds %struct.ARKLsMemRec, ptr %82, i32 0, i32 20
  store i64 %81, ptr %nstlj45, align 8, !tbaa !72
  %83 = load double, ptr %tpred.addr, align 8, !tbaa !62
  %84 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tnlj = getelementptr inbounds %struct.ARKLsMemRec, ptr %84, i32 0, i32 27
  store double %83, ptr %tnlj, align 8, !tbaa !93
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.then37
  %85 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp47 = icmp ne i32 %85, 0
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.end46
  %86 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %86, i32 0, i32 37
  %87 = load i32, ptr %user_linsys, align 8, !tbaa !43
  %tobool49 = icmp ne i32 %87, 0
  br i1 %tobool49, label %if.then50, label %if.else55

if.then50:                                        ; preds = %if.then48
  %88 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp51 = icmp slt i32 %88, 0
  br i1 %cmp51, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then50
  %89 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %89, i32 noundef -7, ptr noundef @.str, ptr noundef @.str.98, ptr noundef @.str.100)
  %90 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag53 = getelementptr inbounds %struct.ARKLsMemRec, ptr %90, i32 0, i32 40
  store i32 -7, ptr %last_flag53, align 8, !tbaa !54
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then50
  %91 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag54 = getelementptr inbounds %struct.ARKLsMemRec, ptr %91, i32 0, i32 40
  store i32 -8, ptr %last_flag54, align 8, !tbaa !54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else55:                                        ; preds = %if.then48
  %92 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %92, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  br label %if.end59

if.else57:                                        ; preds = %if.end35
  %93 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad58 = getelementptr inbounds %struct.ARKLsMemRec, ptr %93, i32 0, i32 5
  %94 = load i32, ptr %jbad58, align 8, !tbaa !52
  %95 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !4
  store i32 %94, ptr %95, align 4, !tbaa !14
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.end56
  %96 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS60 = getelementptr inbounds %struct.ARKLsMemRec, ptr %96, i32 0, i32 9
  %97 = load ptr, ptr %LS60, align 8, !tbaa !31
  %98 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A61 = getelementptr inbounds %struct.ARKLsMemRec, ptr %98, i32 0, i32 10
  %99 = load ptr, ptr %A61, align 8, !tbaa !56
  %call62 = call i32 @SUNLinSolSetup(ptr noundef %97, ptr noundef %99)
  %100 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag63 = getelementptr inbounds %struct.ARKLsMemRec, ptr %100, i32 0, i32 40
  store i32 %call62, ptr %last_flag63, align 8, !tbaa !54
  %101 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A64 = getelementptr inbounds %struct.ARKLsMemRec, ptr %101, i32 0, i32 10
  %102 = load ptr, ptr %A64, align 8, !tbaa !56
  %cmp65 = icmp eq ptr %102, null
  br i1 %cmp65, label %if.then66, label %if.end78

if.then66:                                        ; preds = %if.end59
  %103 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !4
  %104 = load i32, ptr %103, align 4, !tbaa !14
  %tobool67 = icmp ne i32 %104, 0
  br i1 %tobool67, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.then66
  %105 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMemRec, ptr %105, i32 0, i32 21
  %106 = load i64, ptr %npe, align 8, !tbaa !73
  %inc69 = add nsw i64 %106, 1
  store i64 %inc69, ptr %npe, align 8, !tbaa !73
  %107 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %nst70 = getelementptr inbounds %struct.ARKodeMemRec, ptr %107, i32 0, i32 64
  %108 = load i64, ptr %nst70, align 8, !tbaa !92
  %109 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nstlj71 = getelementptr inbounds %struct.ARKLsMemRec, ptr %109, i32 0, i32 20
  store i64 %108, ptr %nstlj71, align 8, !tbaa !72
  %110 = load double, ptr %tpred.addr, align 8, !tbaa !62
  %111 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tnlj72 = getelementptr inbounds %struct.ARKLsMemRec, ptr %111, i32 0, i32 27
  store double %110, ptr %tnlj72, align 8, !tbaa !93
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.then66
  %112 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad74 = getelementptr inbounds %struct.ARKLsMemRec, ptr %112, i32 0, i32 5
  %113 = load i32, ptr %jbad74, align 8, !tbaa !52
  %tobool75 = icmp ne i32 %113, 0
  br i1 %tobool75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  %114 = load ptr, ptr %jcurPtr.addr, align 8, !tbaa !4
  store i32 1, ptr %114, align 4, !tbaa !14
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end59
  %115 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag79 = getelementptr inbounds %struct.ARKLsMemRec, ptr %115, i32 0, i32 40
  %116 = load i32, ptr %last_flag79, align 8, !tbaa !54
  store i32 %116, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.else55, %if.else, %if.then52, %if.then32, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %M) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_massmem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %117 = load i32, ptr %retval, align 4
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define i32 @arkLsSolve(ptr noundef %arkode_mem, ptr noundef %b, double noundef %tnow, ptr noundef %ynow, ptr noundef %fnow, double noundef %eRNrm, i32 noundef %mnewt) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %tnow.addr = alloca double, align 8
  %ynow.addr = alloca ptr, align 8
  %fnow.addr = alloca ptr, align 8
  %eRNrm.addr = alloca double, align 8
  %mnewt.addr = alloca i32, align 4
  %bnorm = alloca double, align 8
  %resnorm = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %gamma = alloca double, align 8
  %gamrat = alloca double, align 8
  %delta = alloca double, align 8
  %deltar = alloca double, align 8
  %rwt_mean = alloca double, align 8
  %dgamma_fail = alloca i32, align 4
  %jcur = alloca ptr, align 8
  %nps_inc = alloca i64, align 8
  %nli_inc = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store double %tnow, ptr %tnow.addr, align 8, !tbaa !62
  store ptr %ynow, ptr %ynow.addr, align 8, !tbaa !4
  store ptr %fnow, ptr %fnow.addr, align 8, !tbaa !4
  store double %eRNrm, ptr %eRNrm.addr, align 8, !tbaa !62
  store i32 %mnewt, ptr %mnewt.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %bnorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %resnorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %deltar) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rwt_mean) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nps_inc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nli_inc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.101, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %tnow.addr, align 8, !tbaa !62
  %4 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %4, i32 0, i32 17
  store double %3, ptr %tcur, align 8, !tbaa !80
  %5 = load ptr, ptr %ynow.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %6, i32 0, i32 14
  store ptr %5, ptr %ycur, align 8, !tbaa !81
  %7 = load ptr, ptr %fnow.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %8, i32 0, i32 15
  store ptr %7, ptr %fcur, align 8, !tbaa !82
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %iterative, align 8, !tbaa !33
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 7
  %12 = load double, ptr %eplifac, align 8, !tbaa !53
  %13 = load double, ptr %eRNrm.addr, align 8, !tbaa !62
  %mul = fmul double %12, %13
  store double %mul, ptr %deltar, align 8, !tbaa !62
  %14 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %rwt = getelementptr inbounds %struct.ARKodeMemRec, ptr %15, i32 0, i32 33
  %16 = load ptr, ptr %rwt, align 8, !tbaa !94
  %call3 = call double @N_VWrmsNorm(ptr noundef %14, ptr noundef %16)
  store double %call3, ptr %bnorm, align 8, !tbaa !62
  %17 = load double, ptr %bnorm, align 8, !tbaa !62
  %18 = load double, ptr %deltar, align 8, !tbaa !62
  %cmp4 = fcmp ole double %17, %18
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then2
  %19 = load i32, ptr %mnewt.addr, align 4, !tbaa !14
  %cmp6 = icmp sgt i32 %19, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %20)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 40
  store i32 0, ptr %last_flag, align 8, !tbaa !54
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %22, i32 0, i32 40
  %23 = load i32, ptr %last_flag9, align 8, !tbaa !54
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then2
  %24 = load double, ptr %deltar, align 8, !tbaa !62
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac = getelementptr inbounds %struct.ARKLsMemRec, ptr %25, i32 0, i32 8
  %26 = load double, ptr %nrmfac, align 8, !tbaa !59
  %mul11 = fmul double %24, %26
  store double %mul11, ptr %delta, align 8, !tbaa !62
  br label %if.end12

if.else:                                          ; preds = %if.end
  store double 0.000000e+00, ptr %bnorm, align 8, !tbaa !62
  store double 0.000000e+00, ptr %delta, align 8, !tbaa !62
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end10
  %27 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %LS, align 8, !tbaa !31
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %ops, align 8, !tbaa !8
  %setscalingvectors = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %setscalingvectors, align 8, !tbaa !95
  %tobool13 = icmp ne ptr %30, null
  br i1 %tobool13, label %if.then14, label %if.else23

if.then14:                                        ; preds = %if.end12
  %31 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS15 = getelementptr inbounds %struct.ARKLsMemRec, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %LS15, align 8, !tbaa !31
  %33 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %rwt16 = getelementptr inbounds %struct.ARKodeMemRec, ptr %33, i32 0, i32 33
  %34 = load ptr, ptr %rwt16, align 8, !tbaa !94
  %35 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %ewt = getelementptr inbounds %struct.ARKodeMemRec, ptr %35, i32 0, i32 32
  %36 = load ptr, ptr %ewt, align 8, !tbaa !69
  %call17 = call i32 @SUNLinSolSetScalingVectors(ptr noundef %32, ptr noundef %34, ptr noundef %36)
  store i32 %call17, ptr %retval1, align 4, !tbaa !14
  %37 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp18 = icmp ne i32 %37, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then14
  %38 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %38, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.102)
  %39 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag20 = getelementptr inbounds %struct.ARKLsMemRec, ptr %39, i32 0, i32 40
  store i32 -12, ptr %last_flag20, align 8, !tbaa !54
  %40 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag21 = getelementptr inbounds %struct.ARKLsMemRec, ptr %40, i32 0, i32 40
  %41 = load i32, ptr %last_flag21, align 8, !tbaa !54
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  br label %if.end31

if.else23:                                        ; preds = %if.end12
  %42 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative24 = getelementptr inbounds %struct.ARKLsMemRec, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %iterative24, align 8, !tbaa !33
  %tobool25 = icmp ne i32 %43, 0
  br i1 %tobool25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.else23
  %44 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMemRec, ptr %44, i32 0, i32 13
  %45 = load ptr, ptr %x, align 8, !tbaa !61
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %45)
  %46 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %rwt27 = getelementptr inbounds %struct.ARKodeMemRec, ptr %46, i32 0, i32 33
  %47 = load ptr, ptr %rwt27, align 8, !tbaa !94
  %48 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x28 = getelementptr inbounds %struct.ARKLsMemRec, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %x28, align 8, !tbaa !61
  %call29 = call double @N_VWrmsNorm(ptr noundef %47, ptr noundef %49)
  store double %call29, ptr %rwt_mean, align 8, !tbaa !62
  %50 = load double, ptr %rwt_mean, align 8, !tbaa !62
  %51 = load double, ptr %delta, align 8, !tbaa !62
  %div = fdiv double %51, %50
  store double %div, ptr %delta, align 8, !tbaa !62
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.else23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end22
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x32 = getelementptr inbounds %struct.ARKLsMemRec, ptr %52, i32 0, i32 13
  %53 = load ptr, ptr %x32, align 8, !tbaa !61
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %53)
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS33 = getelementptr inbounds %struct.ARKLsMemRec, ptr %54, i32 0, i32 9
  %55 = load ptr, ptr %LS33, align 8, !tbaa !31
  %call34 = call i32 @SUNLinSolSetZeroGuess(ptr noundef %55, i32 noundef 1)
  store i32 %call34, ptr %retval1, align 4, !tbaa !14
  %56 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp35 = icmp ne i32 %56, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %57 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMemRec, ptr %57, i32 0, i32 23
  %58 = load i64, ptr %nps, align 8, !tbaa !75
  store i64 %58, ptr %nps_inc, align 8, !tbaa !96
  %59 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %59, i32 0, i32 33
  %60 = load ptr, ptr %jtsetup, align 8, !tbaa !39
  %tobool38 = icmp ne ptr %60, null
  br i1 %tobool38, label %if.then39, label %if.end49

if.then39:                                        ; preds = %if.end37
  %61 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup40 = getelementptr inbounds %struct.ARKLsMemRec, ptr %61, i32 0, i32 33
  %62 = load ptr, ptr %jtsetup40, align 8, !tbaa !39
  %63 = load double, ptr %tnow.addr, align 8, !tbaa !62
  %64 = load ptr, ptr %ynow.addr, align 8, !tbaa !4
  %65 = load ptr, ptr %fnow.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %66, i32 0, i32 36
  %67 = load ptr, ptr %Jt_data, align 8, !tbaa !41
  %call41 = call i32 %62(double noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %67)
  %68 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag42 = getelementptr inbounds %struct.ARKLsMemRec, ptr %68, i32 0, i32 40
  store i32 %call41, ptr %last_flag42, align 8, !tbaa !54
  %69 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %njtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %69, i32 0, i32 25
  %70 = load i64, ptr %njtsetup, align 8, !tbaa !77
  %inc = add nsw i64 %70, 1
  store i64 %inc, ptr %njtsetup, align 8, !tbaa !77
  %71 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag43 = getelementptr inbounds %struct.ARKLsMemRec, ptr %71, i32 0, i32 40
  %72 = load i32, ptr %last_flag43, align 8, !tbaa !54
  %tobool44 = icmp ne i32 %72, 0
  br i1 %tobool44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.then39
  %73 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %74 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag46 = getelementptr inbounds %struct.ARKLsMemRec, ptr %74, i32 0, i32 40
  %75 = load i32, ptr %last_flag46, align 8, !tbaa !54
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %73, i32 noundef %75, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.103)
  %76 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag47 = getelementptr inbounds %struct.ARKLsMemRec, ptr %76, i32 0, i32 40
  %77 = load i32, ptr %last_flag47, align 8, !tbaa !54
  store i32 %77, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.then39
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end37
  %78 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS50 = getelementptr inbounds %struct.ARKLsMemRec, ptr %78, i32 0, i32 9
  %79 = load ptr, ptr %LS50, align 8, !tbaa !31
  %80 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %80, i32 0, i32 10
  %81 = load ptr, ptr %A, align 8, !tbaa !56
  %82 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x51 = getelementptr inbounds %struct.ARKLsMemRec, ptr %82, i32 0, i32 13
  %83 = load ptr, ptr %x51, align 8, !tbaa !61
  %84 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %85 = load double, ptr %delta, align 8, !tbaa !62
  %call52 = call i32 @SUNLinSolSolve(ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %84, double noundef %85)
  store i32 %call52, ptr %retval1, align 4, !tbaa !14
  %86 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x53 = getelementptr inbounds %struct.ARKLsMemRec, ptr %86, i32 0, i32 13
  %87 = load ptr, ptr %x53, align 8, !tbaa !61
  %88 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %87, ptr noundef %88)
  %89 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %scalesol = getelementptr inbounds %struct.ARKLsMemRec, ptr %89, i32 0, i32 6
  %90 = load i32, ptr %scalesol, align 4, !tbaa !60
  %tobool54 = icmp ne i32 %90, 0
  br i1 %tobool54, label %if.then55, label %if.end68

if.then55:                                        ; preds = %if.end49
  %91 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %91, i32 0, i32 27
  %92 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %93 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call56 = call i32 %92(ptr noundef %93, ptr noundef %gamma, ptr noundef %gamrat, ptr noundef %jcur, ptr noundef %dgamma_fail)
  %94 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag57 = getelementptr inbounds %struct.ARKLsMemRec, ptr %94, i32 0, i32 40
  store i32 %call56, ptr %last_flag57, align 8, !tbaa !54
  %95 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag58 = getelementptr inbounds %struct.ARKLsMemRec, ptr %95, i32 0, i32 40
  %96 = load i32, ptr %last_flag58, align 8, !tbaa !54
  %cmp59 = icmp ne i32 %96, 0
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.then55
  %97 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %98 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag61 = getelementptr inbounds %struct.ARKLsMemRec, ptr %98, i32 0, i32 40
  %99 = load i32, ptr %last_flag61, align 8, !tbaa !54
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %97, i32 noundef %99, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.80)
  %100 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag62 = getelementptr inbounds %struct.ARKLsMemRec, ptr %100, i32 0, i32 40
  %101 = load i32, ptr %last_flag62, align 8, !tbaa !54
  store i32 %101, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.then55
  %102 = load double, ptr %gamrat, align 8, !tbaa !62
  %cmp64 = fcmp une double %102, 1.000000e+00
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  %103 = load double, ptr %gamrat, align 8, !tbaa !62
  %add = fadd double 1.000000e+00, %103
  %div66 = fdiv double 2.000000e+00, %add
  %104 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %105 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @N_VScale(double noundef %div66, ptr noundef %104, ptr noundef %105)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end49
  store double 0.000000e+00, ptr %resnorm, align 8, !tbaa !62
  store i32 0, ptr %nli_inc, align 4, !tbaa !14
  %106 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative69 = getelementptr inbounds %struct.ARKLsMemRec, ptr %106, i32 0, i32 0
  %107 = load i32, ptr %iterative69, align 8, !tbaa !33
  %tobool70 = icmp ne i32 %107, 0
  br i1 %tobool70, label %if.then71, label %if.end87

if.then71:                                        ; preds = %if.end68
  %108 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS72 = getelementptr inbounds %struct.ARKLsMemRec, ptr %108, i32 0, i32 9
  %109 = load ptr, ptr %LS72, align 8, !tbaa !31
  %ops73 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %ops73, align 8, !tbaa !8
  %resnorm74 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %110, i32 0, i32 10
  %111 = load ptr, ptr %resnorm74, align 8, !tbaa !97
  %tobool75 = icmp ne ptr %111, null
  br i1 %tobool75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %if.then71
  %112 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS77 = getelementptr inbounds %struct.ARKLsMemRec, ptr %112, i32 0, i32 9
  %113 = load ptr, ptr %LS77, align 8, !tbaa !31
  %call78 = call double @SUNLinSolResNorm(ptr noundef %113)
  store double %call78, ptr %resnorm, align 8, !tbaa !62
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then71
  %114 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS80 = getelementptr inbounds %struct.ARKLsMemRec, ptr %114, i32 0, i32 9
  %115 = load ptr, ptr %LS80, align 8, !tbaa !31
  %ops81 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %ops81, align 8, !tbaa !8
  %numiters = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %116, i32 0, i32 9
  %117 = load ptr, ptr %numiters, align 8, !tbaa !98
  %tobool82 = icmp ne ptr %117, null
  br i1 %tobool82, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end79
  %118 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS84 = getelementptr inbounds %struct.ARKLsMemRec, ptr %118, i32 0, i32 9
  %119 = load ptr, ptr %LS84, align 8, !tbaa !31
  %call85 = call i32 @SUNLinSolNumIters(ptr noundef %119)
  store i32 %call85, ptr %nli_inc, align 4, !tbaa !14
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end79
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end68
  %120 = load i32, ptr %nli_inc, align 4, !tbaa !14
  %conv = sext i32 %120 to i64
  %121 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMemRec, ptr %121, i32 0, i32 22
  %122 = load i64, ptr %nli, align 8, !tbaa !74
  %add88 = add nsw i64 %122, %conv
  store i64 %add88, ptr %nli, align 8, !tbaa !74
  %123 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp89 = icmp ne i32 %123, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end87
  %124 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMemRec, ptr %124, i32 0, i32 24
  %125 = load i64, ptr %ncfl, align 8, !tbaa !76
  %inc92 = add nsw i64 %125, 1
  store i64 %inc92, ptr %ncfl, align 8, !tbaa !76
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.end87
  %126 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %report = getelementptr inbounds %struct.ARKodeMemRec, ptr %126, i32 0, i32 69
  %127 = load i32, ptr %report, align 8, !tbaa !99
  %tobool94 = icmp ne i32 %127, 0
  br i1 %tobool94, label %if.then95, label %if.end99

if.then95:                                        ; preds = %if.end93
  %128 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %diagfp = getelementptr inbounds %struct.ARKodeMemRec, ptr %128, i32 0, i32 70
  %129 = load ptr, ptr %diagfp, align 8, !tbaa !100
  %130 = load double, ptr %bnorm, align 8, !tbaa !62
  %131 = load double, ptr %resnorm, align 8, !tbaa !62
  %132 = load i32, ptr %nli_inc, align 4, !tbaa !14
  %133 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps96 = getelementptr inbounds %struct.ARKLsMemRec, ptr %133, i32 0, i32 23
  %134 = load i64, ptr %nps96, align 8, !tbaa !75
  %135 = load i64, ptr %nps_inc, align 8, !tbaa !96
  %sub = sub nsw i64 %134, %135
  %conv97 = trunc i64 %sub to i32
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.104, double noundef %130, double noundef %131, i32 noundef %132, i32 noundef %conv97)
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end93
  %136 = load i32, ptr %retval1, align 4, !tbaa !14
  %137 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag100 = getelementptr inbounds %struct.ARKLsMemRec, ptr %137, i32 0, i32 40
  store i32 %136, ptr %last_flag100, align 8, !tbaa !54
  %138 = load i32, ptr %retval1, align 4, !tbaa !14
  switch i32 %138, label %sw.epilog [
    i32 0, label %sw.bb
    i32 801, label %sw.bb101
    i32 802, label %sw.bb106
    i32 803, label %sw.bb106
    i32 805, label %sw.bb106
    i32 806, label %sw.bb106
    i32 807, label %sw.bb106
    i32 808, label %sw.bb106
    i32 -801, label %sw.bb107
    i32 -802, label %sw.bb107
    i32 -803, label %sw.bb107
    i32 -810, label %sw.bb107
    i32 -811, label %sw.bb107
    i32 -809, label %sw.bb108
    i32 -805, label %sw.bb109
    i32 -808, label %sw.bb110
  ]

sw.bb:                                            ; preds = %if.end99
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb101:                                         ; preds = %if.end99
  %139 = load i32, ptr %mnewt.addr, align 4, !tbaa !14
  %cmp102 = icmp eq i32 %139, 0
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %sw.bb101
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else105:                                       ; preds = %sw.bb101
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %if.end99, %if.end99, %if.end99, %if.end99, %if.end99, %if.end99
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb107:                                         ; preds = %if.end99, %if.end99, %if.end99, %if.end99, %if.end99
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb108:                                         ; preds = %if.end99
  %140 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %140, i32 noundef -809, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.105)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb109:                                         ; preds = %if.end99
  %141 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %141, i32 noundef -805, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.106)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb110:                                         ; preds = %if.end99
  %142 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %142, i32 noundef -808, ptr noundef @.str, ptr noundef @.str.101, ptr noundef @.str.107)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end99
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %if.else105, %if.then104, %sw.bb, %if.then60, %if.then45, %if.then36, %if.then19, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nli_inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nps_inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %rwt_mean) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %deltar) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %resnorm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bnorm) #7
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define i32 @arkLsFree(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %ark_step_lmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_lmem) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %1, ptr %ark_mem, align 8, !tbaa !4
  %2 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getlinmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %2, i32 0, i32 23
  %3 = load ptr, ptr %step_getlinmem, align 8, !tbaa !28
  %4 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call ptr %3(ptr noundef %4)
  store ptr %call, ptr %ark_step_lmem, align 8, !tbaa !4
  %5 = load ptr, ptr %ark_step_lmem, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %ark_step_lmem, align 8, !tbaa !4
  store ptr %6, ptr %arkls_mem, align 8, !tbaa !4
  %7 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp = getelementptr inbounds %struct.ARKLsMemRec, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %ytemp, align 8, !tbaa !58
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end3
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp5 = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %ytemp5, align 8, !tbaa !58
  call void @N_VDestroy(ptr noundef %10)
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ytemp6 = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 12
  store ptr null, ptr %ytemp6, align 8, !tbaa !58
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end3
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMemRec, ptr %12, i32 0, i32 13
  %13 = load ptr, ptr %x, align 8, !tbaa !61
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x10 = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %x10, align 8, !tbaa !61
  call void @N_VDestroy(ptr noundef %15)
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x11 = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 13
  store ptr null, ptr %x11, align 8, !tbaa !61
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %savedJ, align 8, !tbaa !57
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ15 = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 11
  %20 = load ptr, ptr %savedJ15, align 8, !tbaa !57
  call void @SUNMatDestroy(ptr noundef %20)
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ16 = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 11
  store ptr null, ptr %savedJ16, align 8, !tbaa !57
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %22, i32 0, i32 14
  store ptr null, ptr %ycur, align 8, !tbaa !81
  %23 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %23, i32 0, i32 15
  store ptr null, ptr %fcur, align 8, !tbaa !82
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %24, i32 0, i32 10
  store ptr null, ptr %A, align 8, !tbaa !56
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.ARKLsMemRec, ptr %25, i32 0, i32 30
  %26 = load ptr, ptr %pfree, align 8, !tbaa !48
  %tobool18 = icmp ne ptr %26, null
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %27 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree20 = getelementptr inbounds %struct.ARKLsMemRec, ptr %27, i32 0, i32 30
  %28 = load ptr, ptr %pfree20, align 8, !tbaa !48
  %29 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call21 = call i32 %28(ptr noundef %29)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %30 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %30) #7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_lmem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

declare void @N_VDestroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassLinearSolver(ptr noundef %arkode_mem, ptr noundef %LS, ptr noundef %M, i32 noundef %time_dep) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %LS.addr = alloca ptr, align 8
  %M.addr = alloca ptr, align 8
  %time_dep.addr = alloca i32, align 4
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %LSType = alloca i32, align 4
  %iterative = alloca i32, align 4
  %matrixbased = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %LS, ptr %LS.addr, align 8, !tbaa !4
  store ptr %M, ptr %M.addr, align 8, !tbaa !4
  store i32 %time_dep, ptr %time_dep.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %LSType) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %iterative) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %matrixbased) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %1, ptr %ark_mem, align 8, !tbaa !4
  %2 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %3, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.3)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ops, align 8, !tbaa !8
  %gettype = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %gettype, align 8, !tbaa !10
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %7 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops6 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %ops6, align 8, !tbaa !8
  %solve = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %solve, align 8, !tbaa !12
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.end4
  %10 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %10, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.4)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %call = call i32 @SUNLinSolGetType(ptr noundef %11)
  store i32 %call, ptr %LSType, align 4, !tbaa !13
  %12 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp10 = icmp ne i32 %12, 0
  %conv = zext i1 %cmp10 to i32
  store i32 %conv, ptr %iterative, align 4, !tbaa !14
  %13 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp11 = icmp ne i32 %13, 1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end9
  %14 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp13 = icmp ne i32 %14, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end9
  %15 = phi i1 [ false, %if.end9 ], [ %cmp13, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  store i32 %land.ext, ptr %matrixbased, align 4, !tbaa !14
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %16, i32 0, i32 38
  %17 = load ptr, ptr %tempv1, align 8, !tbaa !16
  %ops15 = getelementptr inbounds %struct._generic_N_Vector, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %ops15, align 8, !tbaa !20
  %nvconst = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %nvconst, align 8, !tbaa !22
  %cmp16 = icmp eq ptr %19, null
  br i1 %cmp16, label %if.then23, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.end
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv119 = getelementptr inbounds %struct.ARKodeMemRec, ptr %20, i32 0, i32 38
  %21 = load ptr, ptr %tempv119, align 8, !tbaa !16
  %ops20 = getelementptr inbounds %struct._generic_N_Vector, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %ops20, align 8, !tbaa !20
  %nvwrmsnorm = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %22, i32 0, i32 21
  %23 = load ptr, ptr %nvwrmsnorm, align 8, !tbaa !24
  %cmp21 = icmp eq ptr %23, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false18, %land.end
  %24 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %24, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.5)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false18
  %25 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp25 = icmp eq i32 %25, 3
  br i1 %cmp25, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end24
  %26 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %cmp27 = icmp ne ptr %26, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %27, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.6)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true, %if.end24
  %28 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end30
  %29 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv132 = getelementptr inbounds %struct.ARKodeMemRec, ptr %29, i32 0, i32 38
  %30 = load ptr, ptr %tempv132, align 8, !tbaa !16
  %ops33 = getelementptr inbounds %struct._generic_N_Vector, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %ops33, align 8, !tbaa !20
  %nvgetlength = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %nvgetlength, align 8, !tbaa !25
  %cmp34 = icmp eq ptr %32, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then31
  %33 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %33, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.5)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.then31
  %34 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.end47, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end37
  %35 = load i32, ptr %LSType, align 4, !tbaa !13
  %cmp40 = icmp ne i32 %35, 3
  br i1 %cmp40, label %land.lhs.true42, label %if.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %36 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops43 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %ops43, align 8, !tbaa !8
  %setatimes = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %setatimes, align 8, !tbaa !26
  %cmp44 = icmp eq ptr %38, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true42
  %39 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %39, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.7)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true42, %land.lhs.true39, %if.end37
  %40 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %tobool48 = icmp ne i32 %40, 0
  br i1 %tobool48, label %land.lhs.true49, label %if.end53

land.lhs.true49:                                  ; preds = %if.end47
  %41 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %cmp50 = icmp eq ptr %41, null
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true49
  %42 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %42, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.8)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true49, %if.end47
  br label %if.end58

if.else:                                          ; preds = %if.end30
  %43 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %cmp54 = icmp eq ptr %43, null
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.else
  %44 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %44, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.9)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.else
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end53
  %45 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_attachmasssol = getelementptr inbounds %struct.ARKodeMemRec, ptr %45, i32 0, i32 20
  %46 = load ptr, ptr %step_attachmasssol, align 8, !tbaa !101
  %cmp59 = icmp eq ptr %46, null
  br i1 %cmp59, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end58
  %47 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %47, i32 0, i32 24
  %48 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %cmp62 = icmp eq ptr %48, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false61, %if.end58
  %49 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %49, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.10)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false61
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  %call66 = call noalias ptr @malloc(i64 noundef 232) #8
  store ptr %call66, ptr %arkls_mem, align 8, !tbaa !4
  %50 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %cmp67 = icmp eq ptr %50, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end65
  %51 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %51, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.11)
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %52, i8 0, i64 232, i1 false)
  %53 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS71 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %54, i32 0, i32 19
  store ptr %53, ptr %LS71, align 8, !tbaa !89
  %55 = load i32, ptr %iterative, align 4, !tbaa !14
  %56 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative72 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %56, i32 0, i32 0
  store i32 %55, ptr %iterative72, align 8, !tbaa !102
  %57 = load i32, ptr %matrixbased, align 4, !tbaa !14
  %58 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %matrixbased73 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %58, i32 0, i32 1
  store i32 %57, ptr %matrixbased73, align 4, !tbaa !103
  %59 = load i32, ptr %time_dep.addr, align 4, !tbaa !14
  %60 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %time_dependent = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %60, i32 0, i32 8
  store i32 %59, ptr %time_dependent, align 8, !tbaa !104
  %61 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mass = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %61, i32 0, i32 2
  store ptr null, ptr %mass, align 8, !tbaa !105
  %62 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %62, i32 0, i32 5
  store ptr null, ptr %M_data, align 8, !tbaa !106
  %63 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %63, i32 0, i32 26
  store ptr null, ptr %mtsetup, align 8, !tbaa !107
  %64 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %64, i32 0, i32 27
  store ptr null, ptr %mtimes, align 8, !tbaa !108
  %65 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mt_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %65, i32 0, i32 28
  store ptr null, ptr %mt_data, align 8, !tbaa !109
  %66 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %66, i32 0, i32 22
  store ptr null, ptr %pset, align 8, !tbaa !110
  %67 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %67, i32 0, i32 23
  store ptr null, ptr %psolve, align 8, !tbaa !111
  %68 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %68, i32 0, i32 24
  store ptr null, ptr %pfree, align 8, !tbaa !112
  %69 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %user_data, align 8, !tbaa !49
  %71 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %71, i32 0, i32 25
  store ptr %70, ptr %P_data, align 8, !tbaa !113
  %72 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call74 = call i32 @arkLsInitializeMassCounters(ptr noundef %72)
  %73 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %73, i32 0, i32 6
  store double 5.000000e-02, ptr %eplifac, align 8, !tbaa !114
  %74 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %74, i32 0, i32 29
  store i32 0, ptr %last_flag, align 8, !tbaa !115
  %75 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops75 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %ops75, align 8, !tbaa !8
  %setatimes76 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %setatimes76, align 8, !tbaa !26
  %tobool77 = icmp ne ptr %77, null
  br i1 %tobool77, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end70
  %78 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call79 = call i32 @SUNLinSolSetATimes(ptr noundef %78, ptr noundef %79, ptr noundef null)
  store i32 %call79, ptr %retval1, align 4, !tbaa !14
  %80 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp80 = icmp ne i32 %80, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.then78
  %81 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %81, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.13)
  %82 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %82) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.then78
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end70
  %83 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %ops85 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %ops85, align 8, !tbaa !8
  %setpreconditioner = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %setpreconditioner, align 8, !tbaa !55
  %tobool86 = icmp ne ptr %85, null
  br i1 %tobool86, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end84
  %86 = load ptr, ptr %LS.addr, align 8, !tbaa !4
  %87 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call88 = call i32 @SUNLinSolSetPreconditioner(ptr noundef %86, ptr noundef %87, ptr noundef null, ptr noundef null)
  store i32 %call88, ptr %retval1, align 4, !tbaa !14
  %88 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp89 = icmp ne i32 %88, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  %89 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %89, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.14)
  %90 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %90) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %if.then87
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end84
  %91 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %cmp94 = icmp ne ptr %91, null
  br i1 %cmp94, label %if.then96, label %if.end109

if.then96:                                        ; preds = %if.end93
  %92 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M97 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %93, i32 0, i32 3
  store ptr %92, ptr %M97, align 8, !tbaa !87
  %94 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool98 = icmp ne i32 %94, 0
  br i1 %tobool98, label %if.else106, label %if.then99

if.then99:                                        ; preds = %if.then96
  %95 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %call100 = call ptr @SUNMatClone(ptr noundef %95)
  %96 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %96, i32 0, i32 4
  store ptr %call100, ptr %M_lu, align 8, !tbaa !116
  %97 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu101 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %97, i32 0, i32 4
  %98 = load ptr, ptr %M_lu101, align 8, !tbaa !116
  %cmp102 = icmp eq ptr %98, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then99
  %99 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %99, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.11)
  %100 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %100) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.then99
  br label %if.end108

if.else106:                                       ; preds = %if.then96
  %101 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu107 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %102, i32 0, i32 4
  store ptr %101, ptr %M_lu107, align 8, !tbaa !116
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.end105
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end93
  %103 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %104 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1110 = getelementptr inbounds %struct.ARKodeMemRec, ptr %104, i32 0, i32 38
  %105 = load ptr, ptr %tempv1110, align 8, !tbaa !16
  %106 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %106, i32 0, i32 20
  %call111 = call i32 @arkAllocVec(ptr noundef %103, ptr noundef %105, ptr noundef %x)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end118, label %if.then113

if.then113:                                       ; preds = %if.end109
  %107 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %107, i32 noundef -4, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.11)
  %108 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool114 = icmp ne i32 %108, 0
  br i1 %tobool114, label %if.end117, label %if.then115

if.then115:                                       ; preds = %if.then113
  %109 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu116 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %109, i32 0, i32 4
  %110 = load ptr, ptr %M_lu116, align 8, !tbaa !116
  call void @SUNMatDestroy(ptr noundef %110)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.then113
  %111 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %111) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  store i32 -4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end118:                                        ; preds = %if.end109
  %112 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool119 = icmp ne i32 %112, 0
  br i1 %tobool119, label %if.then120, label %if.end130

if.then120:                                       ; preds = %if.end118
  %113 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x121 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %113, i32 0, i32 20
  %114 = load ptr, ptr %x121, align 8, !tbaa !117
  %call122 = call i32 @N_VGetLength(ptr noundef %114)
  %conv123 = sitofp i32 %call122 to double
  %cmp124 = fcmp ole double %conv123, 0.000000e+00
  br i1 %cmp124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then120
  br label %cond.end

cond.false:                                       ; preds = %if.then120
  %115 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x126 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %115, i32 0, i32 20
  %116 = load ptr, ptr %x126, align 8, !tbaa !117
  %call127 = call i32 @N_VGetLength(ptr noundef %116)
  %conv128 = sitofp i32 %call127 to double
  %call129 = call double @sqrt(double noundef %conv128) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call129, %cond.false ]
  %117 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %117, i32 0, i32 7
  store double %cond, ptr %nrmfac, align 8, !tbaa !118
  br label %if.end130

if.end130:                                        ; preds = %cond.end, %if.end118
  %118 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_attachmasssol131 = getelementptr inbounds %struct.ARKodeMemRec, ptr %118, i32 0, i32 20
  %119 = load ptr, ptr %step_attachmasssol131, align 8, !tbaa !101
  %120 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %121 = load i32, ptr %time_dep.addr, align 4, !tbaa !14
  %122 = load i32, ptr %LSType, align 4, !tbaa !13
  %123 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call132 = call i32 %119(ptr noundef %120, ptr noundef @arkLsMassInitialize, ptr noundef @arkLsMassSetup, ptr noundef @arkLsMTimes, ptr noundef @arkLsMassSolve, ptr noundef @arkLsMassFree, i32 noundef %121, i32 noundef %122, ptr noundef %123)
  store i32 %call132, ptr %retval1, align 4, !tbaa !14
  %124 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp133 = icmp ne i32 %124, 0
  br i1 %cmp133, label %if.then135, label %if.end141

if.then135:                                       ; preds = %if.end130
  %125 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %126 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %125, i32 noundef %126, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @.str.15)
  %127 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x136 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %127, i32 0, i32 20
  %128 = load ptr, ptr %x136, align 8, !tbaa !117
  call void @N_VDestroy(ptr noundef %128)
  %129 = load i32, ptr %iterative, align 4, !tbaa !14
  %tobool137 = icmp ne i32 %129, 0
  br i1 %tobool137, label %if.end140, label %if.then138

if.then138:                                       ; preds = %if.then135
  %130 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu139 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %130, i32 0, i32 4
  %131 = load ptr, ptr %M_lu139, align 8, !tbaa !116
  call void @SUNMatDestroy(ptr noundef %131)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then135
  %132 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %132) #7
  store ptr null, ptr %arkls_mem, align 8, !tbaa !4
  %133 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %133, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end141:                                        ; preds = %if.end130
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %if.end140, %if.end117, %if.then104, %if.then91, %if.then82, %if.then69, %if.then64, %if.then56, %if.then52, %if.then46, %if.then36, %if.then29, %if.then23, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %matrixbased) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %iterative) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %LSType) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %134 = load i32, ptr %retval, align 4
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define i32 @arkLsInitializeMassCounters(ptr noundef %arkls_mem) #0 {
entry:
  %arkls_mem.addr = alloca ptr, align 8
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nmsetups = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %0, i32 0, i32 10
  store i64 0, ptr %nmsetups, align 8, !tbaa !119
  %1 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nmsolves = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %1, i32 0, i32 11
  store i64 0, ptr %nmsolves, align 8, !tbaa !120
  %2 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nmtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %2, i32 0, i32 12
  store i64 0, ptr %nmtsetup, align 8, !tbaa !121
  %3 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nmtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 13
  store i64 0, ptr %nmtimes, align 8, !tbaa !122
  %4 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nmvsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %4, i32 0, i32 14
  store i64 0, ptr %nmvsetup, align 8, !tbaa !123
  %5 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 15
  store i64 0, ptr %npe, align 8, !tbaa !124
  %6 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %6, i32 0, i32 16
  store i64 0, ptr %nli, align 8, !tbaa !125
  %7 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %7, i32 0, i32 17
  store i64 0, ptr %nps, align 8, !tbaa !126
  %8 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %8, i32 0, i32 18
  store i64 0, ptr %ncfl, align 8, !tbaa !127
  %9 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %msetuptime = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %9, i32 0, i32 9
  store double 0xFFEFFFFFFFFFFFFF, ptr %msetuptime, align 8, !tbaa !128
  ret i32 0
}

declare ptr @SUNMatClone(ptr noundef) #2

declare void @SUNMatDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @arkLsMassInitialize(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.108, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %call2 = call i32 @arkLsInitializeMassCounters(ptr noundef %3)
  %4 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %M, align 8, !tbaa !87
  %cmp3 = icmp ne ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mass = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %mass, align 8, !tbaa !105
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %8, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.108, ptr noundef @.str.109)
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %9, i32 0, i32 29
  store i32 -3, ptr %last_flag, align 8, !tbaa !115
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag7 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %10, i32 0, i32 29
  %11 = load i32, ptr %last_flag7, align 8, !tbaa !115
  store i32 %11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %12, i32 0, i32 27
  %13 = load ptr, ptr %mtimes, align 8, !tbaa !108
  %cmp9 = icmp eq ptr %13, null
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M10 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %M10, align 8, !tbaa !87
  %ops = getelementptr inbounds %struct._generic_SUNMatrix, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %ops, align 8, !tbaa !83
  %matvec = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %matvec, align 8, !tbaa !129
  %cmp11 = icmp eq ptr %17, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %18, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.108, ptr noundef @.str.110)
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag13 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %19, i32 0, i32 29
  store i32 -3, ptr %last_flag13, align 8, !tbaa !115
  %20 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag14 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %20, i32 0, i32 29
  %21 = load i32, ptr %last_flag14, align 8, !tbaa !115
  store i32 %21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %if.end8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M17 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %M17, align 8, !tbaa !87
  %cmp18 = icmp eq ptr %23, null
  br i1 %cmp18, label %land.lhs.true19, label %if.end28

land.lhs.true19:                                  ; preds = %if.end16
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes20 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %24, i32 0, i32 27
  %25 = load ptr, ptr %mtimes20, align 8, !tbaa !108
  %cmp21 = icmp eq ptr %25, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %26 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %LS, align 8, !tbaa !89
  %call23 = call i32 @SUNLinSolGetType(ptr noundef %27)
  %cmp24 = icmp ne i32 %call23, 3
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %land.lhs.true22
  %28 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %28, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.108, ptr noundef @.str.111)
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag26 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %29, i32 0, i32 29
  store i32 -3, ptr %last_flag26, align 8, !tbaa !115
  %30 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag27 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %30, i32 0, i32 29
  %31 = load i32, ptr %last_flag27, align 8, !tbaa !115
  store i32 %31, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true22, %land.lhs.true19, %if.end16
  %32 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS29 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %32, i32 0, i32 19
  %33 = load ptr, ptr %LS29, align 8, !tbaa !89
  %cmp30 = icmp eq ptr %33, null
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end28
  %34 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %34, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.108, ptr noundef @.str.112)
  %35 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag32 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %35, i32 0, i32 29
  store i32 -3, ptr %last_flag32, align 8, !tbaa !115
  %36 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag33 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %36, i32 0, i32 29
  %37 = load i32, ptr %last_flag33, align 8, !tbaa !115
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %38 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M35 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %M35, align 8, !tbaa !87
  %cmp36 = icmp eq ptr %39, null
  br i1 %cmp36, label %land.lhs.true37, label %if.end45

land.lhs.true37:                                  ; preds = %if.end34
  %40 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %40, i32 0, i32 22
  %41 = load ptr, ptr %pset, align 8, !tbaa !110
  %cmp38 = icmp eq ptr %41, null
  br i1 %cmp38, label %land.lhs.true39, label %if.end45

land.lhs.true39:                                  ; preds = %land.lhs.true37
  %42 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %42, i32 0, i32 26
  %43 = load ptr, ptr %mtsetup, align 8, !tbaa !107
  %cmp40 = icmp eq ptr %43, null
  br i1 %cmp40, label %land.lhs.true41, label %if.end45

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %44 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablemsetup = getelementptr inbounds %struct.ARKodeMemRec, ptr %44, i32 0, i32 22
  %45 = load ptr, ptr %step_disablemsetup, align 8, !tbaa !130
  %cmp42 = icmp ne ptr %45, null
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %land.lhs.true41
  %46 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablemsetup44 = getelementptr inbounds %struct.ARKodeMemRec, ptr %46, i32 0, i32 22
  %47 = load ptr, ptr %step_disablemsetup44, align 8, !tbaa !130
  %48 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void %47(ptr noundef %48)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true41, %land.lhs.true39, %land.lhs.true37, %if.end34
  %49 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS46 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %49, i32 0, i32 19
  %50 = load ptr, ptr %LS46, align 8, !tbaa !89
  %call47 = call i32 @SUNLinSolGetType(ptr noundef %50)
  %cmp48 = icmp eq i32 %call47, 3
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end45
  %51 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_disablemsetup50 = getelementptr inbounds %struct.ARKodeMemRec, ptr %51, i32 0, i32 22
  %52 = load ptr, ptr %step_disablemsetup50, align 8, !tbaa !130
  %53 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void %52(ptr noundef %53)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS52 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %54, i32 0, i32 19
  %55 = load ptr, ptr %LS52, align 8, !tbaa !89
  %call53 = call i32 @SUNLinSolInitialize(ptr noundef %55)
  %56 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag54 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %56, i32 0, i32 29
  store i32 %call53, ptr %last_flag54, align 8, !tbaa !115
  %57 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag55 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %57, i32 0, i32 29
  %58 = load i32, ptr %last_flag55, align 8, !tbaa !115
  store i32 %58, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then31, %if.then25, %if.then12, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMassSetup(ptr noundef %arkode_mem, double noundef %t, ptr noundef %vtemp1, ptr noundef %vtemp2, ptr noundef %vtemp3) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %t.addr = alloca double, align 8
  %vtemp1.addr = alloca ptr, align 8
  %vtemp2.addr = alloca ptr, align 8
  %vtemp3.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %call_mtsetup = alloca i32, align 4
  %call_mvsetup = alloca i32, align 4
  %call_lssetup = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %vtemp1, ptr %vtemp1.addr, align 8, !tbaa !4
  store ptr %vtemp2, ptr %vtemp2.addr, align 8, !tbaa !4
  store ptr %vtemp3, ptr %vtemp3.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %call_mtsetup) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %call_mvsetup) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %call_lssetup) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.113, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %LS, align 8, !tbaa !89
  %call2 = call i32 @SUNLinSolGetType(ptr noundef %4)
  %cmp3 = icmp eq i32 %call2, 3
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 29
  store i32 0, ptr %last_flag, align 8, !tbaa !115
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag5 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %6, i32 0, i32 29
  %7 = load i32, ptr %last_flag5, align 8, !tbaa !115
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msetuptime = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %8, i32 0, i32 9
  %9 = load double, ptr %msetuptime, align 8, !tbaa !128
  %10 = load double, ptr %t.addr, align 8, !tbaa !62
  %sub = fsub double %9, %10
  %11 = call double @llvm.fabs.f64(double %sub)
  %12 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %uround = getelementptr inbounds %struct.ARKodeMemRec, ptr %12, i32 0, i32 1
  %13 = load double, ptr %uround, align 8, !tbaa !131
  %mul = fmul double 1.000000e+02, %13
  %cmp7 = fcmp olt double %11, %mul
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end6
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag9 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %14, i32 0, i32 29
  store i32 0, ptr %last_flag9, align 8, !tbaa !115
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag10 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %15, i32 0, i32 29
  %16 = load i32, ptr %last_flag10, align 8, !tbaa !115
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  store i32 0, ptr %call_mtsetup, align 4, !tbaa !14
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %17, i32 0, i32 26
  %18 = load ptr, ptr %mtsetup, align 8, !tbaa !107
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end11
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %time_dependent = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %time_dependent, align 8, !tbaa !104
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %21, i32 0, i32 12
  %22 = load i64, ptr %nmtsetup, align 8, !tbaa !121
  %cmp13 = icmp eq i64 %22, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %call_mtsetup, align 4, !tbaa !14
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false, %if.end11
  %23 = load i32, ptr %call_mtsetup, align 4, !tbaa !14
  %tobool16 = icmp ne i32 %23, 0
  br i1 %tobool16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end15
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtsetup18 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %24, i32 0, i32 26
  %25 = load ptr, ptr %mtsetup18, align 8, !tbaa !107
  %26 = load double, ptr %t.addr, align 8, !tbaa !62
  %27 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mt_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %27, i32 0, i32 28
  %28 = load ptr, ptr %mt_data, align 8, !tbaa !109
  %call19 = call i32 %25(double noundef %26, ptr noundef %28)
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag20 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %29, i32 0, i32 29
  store i32 %call19, ptr %last_flag20, align 8, !tbaa !115
  %30 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtsetup21 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %30, i32 0, i32 12
  %31 = load i64, ptr %nmtsetup21, align 8, !tbaa !121
  %inc = add nsw i64 %31, 1
  store i64 %inc, ptr %nmtsetup21, align 8, !tbaa !121
  %32 = load double, ptr %t.addr, align 8, !tbaa !62
  %33 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msetuptime22 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %33, i32 0, i32 9
  store double %32, ptr %msetuptime22, align 8, !tbaa !128
  %34 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag23 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %34, i32 0, i32 29
  %35 = load i32, ptr %last_flag23, align 8, !tbaa !115
  %cmp24 = icmp ne i32 %35, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.then17
  %36 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %37 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag26 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %37, i32 0, i32 29
  %38 = load i32, ptr %last_flag26, align 8, !tbaa !115
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %36, i32 noundef %38, ptr noundef @.str, ptr noundef @.str.113, ptr noundef @.str.114)
  %39 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag27 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %39, i32 0, i32 29
  %40 = load i32, ptr %last_flag27, align 8, !tbaa !115
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.then17
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end15
  %41 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %M, align 8, !tbaa !87
  %cmp30 = icmp eq ptr %42, null
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %43 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %43, i32 0, i32 22
  %44 = load ptr, ptr %pset, align 8, !tbaa !110
  %cmp32 = icmp ne ptr %44, null
  %conv = zext i1 %cmp32 to i32
  store i32 %conv, ptr %call_lssetup, align 4, !tbaa !14
  store i32 0, ptr %call_mvsetup, align 4, !tbaa !14
  br label %if.end83

if.else:                                          ; preds = %if.end29
  %45 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %time_dependent33 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %45, i32 0, i32 8
  %46 = load i32, ptr %time_dependent33, align 8, !tbaa !104
  %tobool34 = icmp ne i32 %46, 0
  br i1 %tobool34, label %if.end41, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.else
  %47 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmsetups = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %47, i32 0, i32 10
  %48 = load i64, ptr %nmsetups, align 8, !tbaa !119
  %cmp36 = icmp sgt i64 %48, 0
  br i1 %cmp36, label %if.then38, label %if.end41

if.then38:                                        ; preds = %land.lhs.true35
  %49 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag39 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %49, i32 0, i32 29
  store i32 0, ptr %last_flag39, align 8, !tbaa !115
  %50 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag40 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %50, i32 0, i32 29
  %51 = load i32, ptr %last_flag40, align 8, !tbaa !115
  store i32 %51, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %land.lhs.true35, %if.else
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %52, i32 0, i32 0
  %53 = load i32, ptr %iterative, align 8, !tbaa !102
  %tobool42 = icmp ne i32 %53, 0
  br i1 %tobool42, label %if.end51, label %if.then43

if.then43:                                        ; preds = %if.end41
  %54 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M44 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %M44, align 8, !tbaa !87
  %call45 = call i32 @SUNMatZero(ptr noundef %55)
  store i32 %call45, ptr %retval1, align 4, !tbaa !14
  %56 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool46 = icmp ne i32 %56, 0
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.then43
  %57 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %57, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.113, ptr noundef @.str.115)
  %58 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag48 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %58, i32 0, i32 29
  store i32 -11, ptr %last_flag48, align 8, !tbaa !115
  %59 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag49 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %59, i32 0, i32 29
  %60 = load i32, ptr %last_flag49, align 8, !tbaa !115
  store i32 %60, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.then43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end41
  %61 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mass = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %mass, align 8, !tbaa !105
  %63 = load double, ptr %t.addr, align 8, !tbaa !62
  %64 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M52 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %M52, align 8, !tbaa !87
  %66 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %66, i32 0, i32 5
  %67 = load ptr, ptr %M_data, align 8, !tbaa !106
  %68 = load ptr, ptr %vtemp1.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %vtemp2.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %vtemp3.addr, align 8, !tbaa !4
  %call53 = call i32 %62(double noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %68, ptr noundef %69, ptr noundef %70)
  store i32 %call53, ptr %retval1, align 4, !tbaa !14
  %71 = load double, ptr %t.addr, align 8, !tbaa !62
  %72 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msetuptime54 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %72, i32 0, i32 9
  store double %71, ptr %msetuptime54, align 8, !tbaa !128
  %73 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp55 = icmp slt i32 %73, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end51
  %74 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %74, i32 noundef -9, ptr noundef @.str, ptr noundef @.str.113, ptr noundef @.str.116)
  %75 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag58 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %75, i32 0, i32 29
  store i32 -9, ptr %last_flag58, align 8, !tbaa !115
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end51
  %76 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp60 = icmp sgt i32 %76, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  %77 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag63 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %77, i32 0, i32 29
  store i32 -10, ptr %last_flag63, align 8, !tbaa !115
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %78 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative65 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %78, i32 0, i32 0
  %79 = load i32, ptr %iterative65, align 8, !tbaa !102
  %tobool66 = icmp ne i32 %79, 0
  br i1 %tobool66, label %if.end75, label %if.then67

if.then67:                                        ; preds = %if.end64
  %80 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M68 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %80, i32 0, i32 3
  %81 = load ptr, ptr %M68, align 8, !tbaa !87
  %82 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %M_lu, align 8, !tbaa !116
  %call69 = call i32 @SUNMatCopy(ptr noundef %81, ptr noundef %83)
  store i32 %call69, ptr %retval1, align 4, !tbaa !14
  %84 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool70 = icmp ne i32 %84, 0
  br i1 %tobool70, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.then67
  %85 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %85, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.113, ptr noundef @.str.115)
  %86 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag72 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %86, i32 0, i32 29
  store i32 -11, ptr %last_flag72, align 8, !tbaa !115
  %87 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag73 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %87, i32 0, i32 29
  %88 = load i32, ptr %last_flag73, align 8, !tbaa !115
  store i32 %88, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %if.then67
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end64
  %89 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %89, i32 0, i32 27
  %90 = load ptr, ptr %mtimes, align 8, !tbaa !108
  %tobool76 = icmp ne ptr %90, null
  br i1 %tobool76, label %if.else81, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end75
  %91 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M78 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %91, i32 0, i32 3
  %92 = load ptr, ptr %M78, align 8, !tbaa !87
  %ops = getelementptr inbounds %struct._generic_SUNMatrix, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %ops, align 8, !tbaa !83
  %matvecsetup = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %93, i32 0, i32 7
  %94 = load ptr, ptr %matvecsetup, align 8, !tbaa !132
  %tobool79 = icmp ne ptr %94, null
  br i1 %tobool79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %land.lhs.true77
  store i32 1, ptr %call_mvsetup, align 4, !tbaa !14
  br label %if.end82

if.else81:                                        ; preds = %land.lhs.true77, %if.end75
  store i32 0, ptr %call_mvsetup, align 4, !tbaa !14
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %if.then80
  store i32 1, ptr %call_lssetup, align 4, !tbaa !14
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then31
  %95 = load i32, ptr %call_mvsetup, align 4, !tbaa !14
  %tobool84 = icmp ne i32 %95, 0
  br i1 %tobool84, label %if.then85, label %if.end94

if.then85:                                        ; preds = %if.end83
  %96 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M86 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %96, i32 0, i32 3
  %97 = load ptr, ptr %M86, align 8, !tbaa !87
  %call87 = call i32 @SUNMatMatvecSetup(ptr noundef %97)
  store i32 %call87, ptr %retval1, align 4, !tbaa !14
  %98 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmvsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %98, i32 0, i32 14
  %99 = load i64, ptr %nmvsetup, align 8, !tbaa !123
  %inc88 = add nsw i64 %99, 1
  store i64 %inc88, ptr %nmvsetup, align 8, !tbaa !123
  %100 = load i32, ptr %retval1, align 4, !tbaa !14
  %tobool89 = icmp ne i32 %100, 0
  br i1 %tobool89, label %if.then90, label %if.end93

if.then90:                                        ; preds = %if.then85
  %101 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %101, i32 noundef -11, ptr noundef @.str, ptr noundef @.str.113, ptr noundef @.str.115)
  %102 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag91 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %102, i32 0, i32 29
  store i32 -11, ptr %last_flag91, align 8, !tbaa !115
  %103 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag92 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %103, i32 0, i32 29
  %104 = load i32, ptr %last_flag92, align 8, !tbaa !115
  store i32 %104, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.then85
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end83
  %105 = load i32, ptr %call_lssetup, align 4, !tbaa !14
  %tobool95 = icmp ne i32 %105, 0
  br i1 %tobool95, label %if.then96, label %if.end103

if.then96:                                        ; preds = %if.end94
  %106 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS97 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %106, i32 0, i32 19
  %107 = load ptr, ptr %LS97, align 8, !tbaa !89
  %108 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu98 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %108, i32 0, i32 4
  %109 = load ptr, ptr %M_lu98, align 8, !tbaa !116
  %call99 = call i32 @SUNLinSolSetup(ptr noundef %107, ptr noundef %109)
  %110 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag100 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %110, i32 0, i32 29
  store i32 %call99, ptr %last_flag100, align 8, !tbaa !115
  %111 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmsetups101 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %111, i32 0, i32 10
  %112 = load i64, ptr %nmsetups101, align 8, !tbaa !119
  %inc102 = add nsw i64 %112, 1
  store i64 %inc102, ptr %nmsetups101, align 8, !tbaa !119
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.end94
  %113 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag104 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %113, i32 0, i32 29
  %114 = load i32, ptr %last_flag104, align 8, !tbaa !115
  store i32 %114, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then90, %if.then71, %if.then62, %if.then57, %if.then47, %if.then38, %if.then25, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %call_lssetup) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %call_mvsetup) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %call_mtsetup) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMTimes(ptr noundef %arkode_mem, ptr noundef %v, ptr noundef %z) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.83, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %mtimes, align 8, !tbaa !108
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes3 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 27
  %6 = load ptr, ptr %mtimes3, align 8, !tbaa !108
  %7 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 54
  %10 = load double, ptr %tcur, align 8, !tbaa !133
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mt_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %11, i32 0, i32 28
  %12 = load ptr, ptr %mt_data, align 8, !tbaa !109
  %call4 = call i32 %6(ptr noundef %7, ptr noundef %8, double noundef %10, ptr noundef %12)
  store i32 %call4, ptr %retval1, align 4, !tbaa !14
  %13 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %13, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then2
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %14, i32 0, i32 13
  %15 = load i64, ptr %nmtimes, align 8, !tbaa !122
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %nmtimes, align 8, !tbaa !122
  br label %if.end7

if.else:                                          ; preds = %if.then2
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %17 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %16, i32 noundef %17, ptr noundef @.str, ptr noundef @.str.83, ptr noundef @.str.84)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %18 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else8:                                         ; preds = %if.end
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %M, align 8, !tbaa !87
  %tobool9 = icmp ne ptr %20, null
  br i1 %tobool9, label %if.then10, label %if.end23

if.then10:                                        ; preds = %if.else8
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M11 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %M11, align 8, !tbaa !87
  %ops = getelementptr inbounds %struct._generic_SUNMatrix, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %ops, align 8, !tbaa !83
  %matvec = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %matvec, align 8, !tbaa !129
  %tobool12 = icmp ne ptr %24, null
  br i1 %tobool12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.then10
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M14 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %M14, align 8, !tbaa !87
  %27 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %call15 = call i32 @SUNMatMatvec(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  store i32 %call15, ptr %retval1, align 4, !tbaa !14
  %29 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %29, 0
  br i1 %cmp16, label %if.then17, label %if.else20

if.then17:                                        ; preds = %if.then13
  %30 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtimes18 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %30, i32 0, i32 13
  %31 = load i64, ptr %nmtimes18, align 8, !tbaa !122
  %inc19 = add nsw i64 %31, 1
  store i64 %inc19, ptr %nmtimes18, align 8, !tbaa !122
  br label %if.end21

if.else20:                                        ; preds = %if.then13
  %32 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %33 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %32, i32 noundef %33, ptr noundef @.str, ptr noundef @.str.83, ptr noundef @.str.85)
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then17
  %34 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.then10
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.else8
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  %35 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %36 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %35, i32 noundef %36, ptr noundef @.str, ptr noundef @.str.83, ptr noundef @.str.86)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21, %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMassSolve(ptr noundef %arkode_mem, ptr noundef %b, double noundef %nlscoef) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %nlscoef.addr = alloca double, align 8
  %resnorm = alloca double, align 8
  %delta = alloca double, align 8
  %rwt_mean = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %nps_inc = alloca i64, align 8
  %nli_inc = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store double %nlscoef, ptr %nlscoef.addr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %resnorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rwt_mean) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nps_inc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nli_inc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.117, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %iterative, align 8, !tbaa !102
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 6
  %6 = load double, ptr %eplifac, align 8, !tbaa !114
  %7 = load double, ptr %nlscoef.addr, align 8, !tbaa !62
  %mul = fmul double %6, %7
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %8, i32 0, i32 7
  %9 = load double, ptr %nrmfac, align 8, !tbaa !118
  %mul3 = fmul double %mul, %9
  store double %mul3, ptr %delta, align 8, !tbaa !62
  br label %if.end4

if.else:                                          ; preds = %if.end
  store double 0.000000e+00, ptr %delta, align 8, !tbaa !62
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %x, align 8, !tbaa !117
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %11)
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %12, i32 0, i32 19
  %13 = load ptr, ptr %LS, align 8, !tbaa !89
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %ops, align 8, !tbaa !8
  %setscalingvectors = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %setscalingvectors, align 8, !tbaa !95
  %tobool5 = icmp ne ptr %15, null
  br i1 %tobool5, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.end4
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS7 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %LS7, align 8, !tbaa !89
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %rwt = getelementptr inbounds %struct.ARKodeMemRec, ptr %18, i32 0, i32 33
  %19 = load ptr, ptr %rwt, align 8, !tbaa !94
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %ewt = getelementptr inbounds %struct.ARKodeMemRec, ptr %20, i32 0, i32 32
  %21 = load ptr, ptr %ewt, align 8, !tbaa !69
  %call8 = call i32 @SUNLinSolSetScalingVectors(ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store i32 %call8, ptr %retval1, align 4, !tbaa !14
  %22 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp9 = icmp ne i32 %22, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then6
  %23 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %23, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.117, ptr noundef @.str.102)
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %24, i32 0, i32 29
  store i32 -12, ptr %last_flag, align 8, !tbaa !115
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag11 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %25, i32 0, i32 29
  %26 = load i32, ptr %last_flag11, align 8, !tbaa !115
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.then6
  br label %if.end22

if.else13:                                        ; preds = %if.end4
  %27 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative14 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %iterative14, align 8, !tbaa !102
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.else13
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x17 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %29, i32 0, i32 20
  %30 = load ptr, ptr %x17, align 8, !tbaa !117
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %30)
  %31 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %rwt18 = getelementptr inbounds %struct.ARKodeMemRec, ptr %31, i32 0, i32 33
  %32 = load ptr, ptr %rwt18, align 8, !tbaa !94
  %33 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x19 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %33, i32 0, i32 20
  %34 = load ptr, ptr %x19, align 8, !tbaa !117
  %call20 = call double @N_VWrmsNorm(ptr noundef %32, ptr noundef %34)
  store double %call20, ptr %rwt_mean, align 8, !tbaa !62
  %35 = load double, ptr %rwt_mean, align 8, !tbaa !62
  %36 = load double, ptr %delta, align 8, !tbaa !62
  %div = fdiv double %36, %35
  store double %div, ptr %delta, align 8, !tbaa !62
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.else13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end12
  %37 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x23 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %37, i32 0, i32 20
  %38 = load ptr, ptr %x23, align 8, !tbaa !117
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %38)
  %39 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS24 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %39, i32 0, i32 19
  %40 = load ptr, ptr %LS24, align 8, !tbaa !89
  %call25 = call i32 @SUNLinSolSetZeroGuess(ptr noundef %40, i32 noundef 1)
  store i32 %call25, ptr %retval1, align 4, !tbaa !14
  %41 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp26 = icmp ne i32 %41, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %42 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %42, i32 0, i32 17
  %43 = load i64, ptr %nps, align 8, !tbaa !126
  store i64 %43, ptr %nps_inc, align 8, !tbaa !96
  %44 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS29 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %44, i32 0, i32 19
  %45 = load ptr, ptr %LS29, align 8, !tbaa !89
  %46 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %M_lu, align 8, !tbaa !116
  %48 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x30 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %48, i32 0, i32 20
  %49 = load ptr, ptr %x30, align 8, !tbaa !117
  %50 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %51 = load double, ptr %delta, align 8, !tbaa !62
  %call31 = call i32 @SUNLinSolSolve(ptr noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %50, double noundef %51)
  store i32 %call31, ptr %retval1, align 4, !tbaa !14
  %52 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x32 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %52, i32 0, i32 20
  %53 = load ptr, ptr %x32, align 8, !tbaa !117
  %54 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmsolves = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %55, i32 0, i32 11
  %56 = load i64, ptr %nmsolves, align 8, !tbaa !120
  %inc = add nsw i64 %56, 1
  store i64 %inc, ptr %nmsolves, align 8, !tbaa !120
  store double 0.000000e+00, ptr %resnorm, align 8, !tbaa !62
  store i32 0, ptr %nli_inc, align 4, !tbaa !14
  %57 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative33 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %57, i32 0, i32 0
  %58 = load i32, ptr %iterative33, align 8, !tbaa !102
  %tobool34 = icmp ne i32 %58, 0
  br i1 %tobool34, label %if.then35, label %if.end51

if.then35:                                        ; preds = %if.end28
  %59 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS36 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %59, i32 0, i32 19
  %60 = load ptr, ptr %LS36, align 8, !tbaa !89
  %ops37 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %ops37, align 8, !tbaa !8
  %resnorm38 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %61, i32 0, i32 10
  %62 = load ptr, ptr %resnorm38, align 8, !tbaa !97
  %tobool39 = icmp ne ptr %62, null
  br i1 %tobool39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then35
  %63 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS41 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %63, i32 0, i32 19
  %64 = load ptr, ptr %LS41, align 8, !tbaa !89
  %call42 = call double @SUNLinSolResNorm(ptr noundef %64)
  store double %call42, ptr %resnorm, align 8, !tbaa !62
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then35
  %65 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS44 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %65, i32 0, i32 19
  %66 = load ptr, ptr %LS44, align 8, !tbaa !89
  %ops45 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %ops45, align 8, !tbaa !8
  %numiters = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %67, i32 0, i32 9
  %68 = load ptr, ptr %numiters, align 8, !tbaa !98
  %tobool46 = icmp ne ptr %68, null
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end43
  %69 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS48 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %69, i32 0, i32 19
  %70 = load ptr, ptr %LS48, align 8, !tbaa !89
  %call49 = call i32 @SUNLinSolNumIters(ptr noundef %70)
  store i32 %call49, ptr %nli_inc, align 4, !tbaa !14
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end28
  %71 = load i32, ptr %nli_inc, align 4, !tbaa !14
  %conv = sext i32 %71 to i64
  %72 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %72, i32 0, i32 16
  %73 = load i64, ptr %nli, align 8, !tbaa !125
  %add = add nsw i64 %73, %conv
  store i64 %add, ptr %nli, align 8, !tbaa !125
  %74 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp52 = icmp ne i32 %74, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %75 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %75, i32 0, i32 18
  %76 = load i64, ptr %ncfl, align 8, !tbaa !127
  %inc55 = add nsw i64 %76, 1
  store i64 %inc55, ptr %ncfl, align 8, !tbaa !127
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  %77 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %report = getelementptr inbounds %struct.ARKodeMemRec, ptr %77, i32 0, i32 69
  %78 = load i32, ptr %report, align 8, !tbaa !99
  %tobool57 = icmp ne i32 %78, 0
  br i1 %tobool57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.end56
  %79 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %diagfp = getelementptr inbounds %struct.ARKodeMemRec, ptr %79, i32 0, i32 70
  %80 = load ptr, ptr %diagfp, align 8, !tbaa !100
  %81 = load double, ptr %resnorm, align 8, !tbaa !62
  %82 = load i32, ptr %nli_inc, align 4, !tbaa !14
  %83 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps59 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %83, i32 0, i32 17
  %84 = load i64, ptr %nps59, align 8, !tbaa !126
  %85 = load i64, ptr %nps_inc, align 8, !tbaa !96
  %sub = sub nsw i64 %84, %85
  %conv60 = trunc i64 %sub to i32
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.118, double noundef %81, i32 noundef %82, i32 noundef %conv60)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end56
  %86 = load i32, ptr %retval1, align 4, !tbaa !14
  %87 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag63 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %87, i32 0, i32 29
  store i32 %86, ptr %last_flag63, align 8, !tbaa !115
  %88 = load i32, ptr %retval1, align 4, !tbaa !14
  switch i32 %88, label %sw.epilog [
    i32 0, label %sw.bb
    i32 801, label %sw.bb64
    i32 802, label %sw.bb64
    i32 803, label %sw.bb64
    i32 805, label %sw.bb64
    i32 806, label %sw.bb64
    i32 807, label %sw.bb64
    i32 808, label %sw.bb64
    i32 -801, label %sw.bb65
    i32 -802, label %sw.bb65
    i32 -803, label %sw.bb65
    i32 -810, label %sw.bb65
    i32 -811, label %sw.bb65
    i32 -809, label %sw.bb66
    i32 -805, label %sw.bb67
    i32 -808, label %sw.bb68
  ]

sw.bb:                                            ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %if.end62, %if.end62, %if.end62, %if.end62, %if.end62, %if.end62, %if.end62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb65:                                          ; preds = %if.end62, %if.end62, %if.end62, %if.end62, %if.end62
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %if.end62
  %89 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %89, i32 noundef -809, ptr noundef @.str, ptr noundef @.str.117, ptr noundef @.str.105)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %if.end62
  %90 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %90, i32 noundef -805, ptr noundef @.str, ptr noundef @.str.117, ptr noundef @.str.119)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.bb68:                                          ; preds = %if.end62
  %91 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %91, i32 noundef -808, ptr noundef @.str, ptr noundef @.str.117, ptr noundef @.str.107)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb, %if.then27, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nli_inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nps_inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %rwt_mean) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %resnorm) #7
  %92 = load i32, ptr %retval, align 4
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMassFree(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %ark_step_massmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_massmem) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %1, ptr %ark_mem, align 8, !tbaa !4
  %2 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %2, i32 0, i32 24
  %3 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %4 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call ptr %3(ptr noundef %4)
  store ptr %call, ptr %ark_step_massmem, align 8, !tbaa !4
  %5 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  store ptr %6, ptr %arkls_mem, align 8, !tbaa !4
  %7 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %LS, align 8, !tbaa !89
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then4, label %if.end23

if.then4:                                         ; preds = %if.end3
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS5 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %9, i32 0, i32 19
  %10 = load ptr, ptr %LS5, align 8, !tbaa !89
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %ops, align 8, !tbaa !8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.then4
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS8 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %12, i32 0, i32 19
  %13 = load ptr, ptr %LS8, align 8, !tbaa !89
  %ops9 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %ops9, align 8, !tbaa !8
  %setatimes = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %setatimes, align 8, !tbaa !26
  %tobool10 = icmp ne ptr %15, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS12 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %LS12, align 8, !tbaa !89
  %call13 = call i32 @SUNLinSolSetATimes(ptr noundef %17, ptr noundef null, ptr noundef null)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then7
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS15 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %18, i32 0, i32 19
  %19 = load ptr, ptr %LS15, align 8, !tbaa !89
  %ops16 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %ops16, align 8, !tbaa !8
  %setpreconditioner = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %setpreconditioner, align 8, !tbaa !55
  %tobool17 = icmp ne ptr %21, null
  br i1 %tobool17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS19 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %LS19, align 8, !tbaa !89
  %call20 = call i32 @SUNLinSolSetPreconditioner(ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then4
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end3
  %24 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %24, i32 0, i32 20
  %25 = load ptr, ptr %x, align 8, !tbaa !117
  %tobool24 = icmp ne ptr %25, null
  br i1 %tobool24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  %26 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x26 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %26, i32 0, i32 20
  %27 = load ptr, ptr %x26, align 8, !tbaa !117
  call void @N_VDestroy(ptr noundef %27)
  %28 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x27 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %28, i32 0, i32 20
  store ptr null, ptr %x27, align 8, !tbaa !117
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %29 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %iterative, align 8, !tbaa !102
  %tobool29 = icmp ne i32 %30, 0
  br i1 %tobool29, label %if.end33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %31 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %M_lu, align 8, !tbaa !116
  %tobool30 = icmp ne ptr %32, null
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu32 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %M_lu32, align 8, !tbaa !116
  call void @SUNMatDestroy(ptr noundef %34)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true, %if.end28
  %35 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu34 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %35, i32 0, i32 4
  store ptr null, ptr %M_lu34, align 8, !tbaa !116
  %36 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %36, i32 0, i32 21
  store ptr null, ptr %ycur, align 8, !tbaa !134
  %37 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %37, i32 0, i32 3
  store ptr null, ptr %M, align 8, !tbaa !87
  %38 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %38, i32 0, i32 24
  %39 = load ptr, ptr %pfree, align 8, !tbaa !112
  %tobool35 = icmp ne ptr %39, null
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end33
  %40 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pfree37 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %40, i32 0, i32 24
  %41 = load ptr, ptr %pfree37, align 8, !tbaa !112
  %42 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call38 = call i32 %41(ptr noundef %42)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33
  %43 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  call void @free(ptr noundef %43) #7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_massmem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetJacFn(ptr noundef %arkode_mem, ptr noundef %jac) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %jac.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %jac, ptr %jac.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.17, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %jac.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %A, align 8, !tbaa !56
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %6, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.17, ptr noundef @.str.18)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %jac.addr, align 8, !tbaa !4
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %8, i32 0, i32 2
  store i32 0, ptr %jacDQ, align 8, !tbaa !35
  %9 = load ptr, ptr %jac.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac8 = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 3
  store ptr %9, ptr %jac8, align 8, !tbaa !36
  %11 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %user_data, align 8, !tbaa !49
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 4
  store ptr %12, ptr %J_data, align 8, !tbaa !37
  br label %if.end12

if.else:                                          ; preds = %if.end5
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 2
  store i32 1, ptr %jacDQ9, align 8, !tbaa !35
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jac10 = getelementptr inbounds %struct.ARKLsMemRec, ptr %15, i32 0, i32 3
  store ptr @arkLsDQJac, ptr %jac10, align 8, !tbaa !36
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data11 = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 4
  store ptr %16, ptr %J_data11, align 8, !tbaa !37
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 37
  store i32 0, ptr %user_linsys, align 8, !tbaa !43
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 38
  store ptr @arkLsLinSys, ptr %linsys, align 8, !tbaa !44
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 39
  store ptr %20, ptr %A_data, align 8, !tbaa !45
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @arkLs_AccessLMem(ptr noundef %arkode_mem, ptr noundef %fname, ptr noundef %ark_mem, ptr noundef %arkls_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %ark_mem.addr = alloca ptr, align 8
  %arkls_mem.addr = alloca ptr, align 8
  %ark_step_lmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !4
  store ptr %ark_mem, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_lmem) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef %1, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %2, ptr %3, align 8, !tbaa !4
  %4 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %step_getlinmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 23
  %6 = load ptr, ptr %step_getlinmem, align 8, !tbaa !28
  %7 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call ptr %6(ptr noundef %7)
  store ptr %call, ptr %ark_step_lmem, align 8, !tbaa !4
  %8 = load ptr, ptr %ark_step_lmem, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %8, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %11 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %10, i32 noundef -2, ptr noundef @.str, ptr noundef %11, ptr noundef @.str.120)
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %ark_step_lmem, align 8, !tbaa !4
  %13 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  store ptr %12, ptr %13, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_lmem) #7
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassFn(ptr noundef %arkode_mem, ptr noundef %mass) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %mass.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %mass, ptr %mass.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.19, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mass.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %4, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.19, ptr noundef @.str.20)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %M, align 8, !tbaa !87
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.19, ptr noundef @.str.21)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %mass.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mass8 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %9, i32 0, i32 2
  store ptr %8, ptr %mass8, align 8, !tbaa !105
  %10 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %user_data, align 8, !tbaa !49
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %12, i32 0, i32 5
  store ptr %11, ptr %M_data, align 8, !tbaa !106
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @arkLs_AccessMassMem(ptr noundef %arkode_mem, ptr noundef %fname, ptr noundef %ark_mem, ptr noundef %arkls_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %fname.addr = alloca ptr, align 8
  %ark_mem.addr = alloca ptr, align 8
  %arkls_mem.addr = alloca ptr, align 8
  %ark_step_massmem = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %fname, ptr %fname.addr, align 8, !tbaa !4
  store ptr %ark_mem, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_step_massmem) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -1, ptr noundef @.str, ptr noundef %1, ptr noundef @.str.2)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %2, ptr %3, align 8, !tbaa !4
  %4 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %step_getmassmem = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 24
  %6 = load ptr, ptr %step_getmassmem, align 8, !tbaa !79
  %7 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call ptr %6(ptr noundef %7)
  store ptr %call, ptr %ark_step_massmem, align 8, !tbaa !4
  %8 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %cmp1 = icmp eq ptr %8, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %11 = load ptr, ptr %fname.addr, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %10, i32 noundef -6, ptr noundef @.str, ptr noundef %11, ptr noundef @.str.121)
  store i32 -6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %ark_step_massmem, align 8, !tbaa !4
  %13 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  store ptr %12, ptr %13, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_step_massmem) #7
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetEpsLin(ptr noundef %arkode_mem, double noundef %eplifac) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %eplifac.addr = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store double %eplifac, ptr %eplifac.addr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.22, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %eplifac.addr, align 8, !tbaa !62
  %cmp2 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load double, ptr %eplifac.addr, align 8, !tbaa !62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 5.000000e-02, %cond.true ], [ %4, %cond.false ]
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac3 = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 7
  store double %cond, ptr %eplifac3, align 8, !tbaa !53
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetNormFactor(ptr noundef %arkode_mem, double noundef %nrmfac) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nrmfac.addr = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store double %nrmfac, ptr %nrmfac.addr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.23, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %cmp2 = fcmp ogt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac4 = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 8
  store double %4, ptr %nrmfac4, align 8, !tbaa !59
  br label %if.end31

if.else:                                          ; preds = %if.end
  %6 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %cmp5 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp5, label %if.then6, label %if.else16

if.then6:                                         ; preds = %if.else
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %7, i32 0, i32 38
  %8 = load ptr, ptr %tempv1, align 8, !tbaa !16
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %8)
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv17 = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 38
  %10 = load ptr, ptr %tempv17, align 8, !tbaa !16
  %11 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv18 = getelementptr inbounds %struct.ARKodeMemRec, ptr %11, i32 0, i32 38
  %12 = load ptr, ptr %tempv18, align 8, !tbaa !16
  %call9 = call double @N_VDotProd(ptr noundef %10, ptr noundef %12)
  %cmp10 = fcmp ole double %call9, 0.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  %13 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv111 = getelementptr inbounds %struct.ARKodeMemRec, ptr %13, i32 0, i32 38
  %14 = load ptr, ptr %tempv111, align 8, !tbaa !16
  %15 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv112 = getelementptr inbounds %struct.ARKodeMemRec, ptr %15, i32 0, i32 38
  %16 = load ptr, ptr %tempv112, align 8, !tbaa !16
  %call13 = call double @N_VDotProd(ptr noundef %14, ptr noundef %16)
  %call14 = call double @sqrt(double noundef %call13) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call14, %cond.false ]
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac15 = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 8
  store double %cond, ptr %nrmfac15, align 8, !tbaa !59
  br label %if.end30

if.else16:                                        ; preds = %if.else
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv117 = getelementptr inbounds %struct.ARKodeMemRec, ptr %18, i32 0, i32 38
  %19 = load ptr, ptr %tempv117, align 8, !tbaa !16
  %call18 = call i32 @N_VGetLength(ptr noundef %19)
  %conv = sitofp i32 %call18 to double
  %cmp19 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else16
  br label %cond.end27

cond.false22:                                     ; preds = %if.else16
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv123 = getelementptr inbounds %struct.ARKodeMemRec, ptr %20, i32 0, i32 38
  %21 = load ptr, ptr %tempv123, align 8, !tbaa !16
  %call24 = call i32 @N_VGetLength(ptr noundef %21)
  %conv25 = sitofp i32 %call24 to double
  %call26 = call double @sqrt(double noundef %conv25) #7
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.true21
  %cond28 = phi double [ 0.000000e+00, %cond.true21 ], [ %call26, %cond.false22 ]
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac29 = getelementptr inbounds %struct.ARKLsMemRec, ptr %22, i32 0, i32 8
  store double %cond28, ptr %nrmfac29, align 8, !tbaa !59
  br label %if.end30

if.end30:                                         ; preds = %cond.end27, %cond.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

declare void @N_VConst(double noundef, ptr noundef) #2

declare double @N_VDotProd(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @arkLSSetJacEvalFrequency(ptr noundef %arkode_mem, i64 noundef %msbj) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %msbj.addr = alloca i64, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store i64 %msbj, ptr %msbj.addr, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.24, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %msbj.addr, align 8, !tbaa !96
  %conv = sitofp i64 %3 to double
  %cmp2 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i64, ptr %msbj.addr, align 8, !tbaa !96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 51, %cond.true ], [ %4, %cond.false ]
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %msbj4 = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 16
  store i64 %cond, ptr %msbj4, align 8, !tbaa !51
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetLinearSolutionScaling(ptr noundef %arkode_mem, i32 noundef %onoff) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %onoff.addr = alloca i32, align 4
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store i32 %onoff, ptr %onoff.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.25, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %matrixbased = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %matrixbased, align 4, !tbaa !34
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %onoff.addr, align 4, !tbaa !14
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %scalesol = getelementptr inbounds %struct.ARKLsMemRec, ptr %6, i32 0, i32 6
  store i32 %5, ptr %scalesol, align 4, !tbaa !60
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetPreconditioner(ptr noundef %arkode_mem, ptr noundef %psetup, ptr noundef %psolve) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %psetup.addr = alloca ptr, align 8
  %psolve.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %arkls_psetup = alloca ptr, align 8
  %arkls_psolve = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %psetup, ptr %psetup.addr, align 8, !tbaa !4
  store ptr %psolve, ptr %psolve.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_psetup) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_psolve) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.26, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %LS, align 8, !tbaa !31
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ops, align 8, !tbaa !8
  %setpreconditioner = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %setpreconditioner, align 8, !tbaa !55
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.26, ptr noundef @.str.27)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %psetup.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 28
  store ptr %8, ptr %pset, align 8, !tbaa !46
  %10 = load ptr, ptr %psolve.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve5 = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 29
  store ptr %10, ptr %psolve5, align 8, !tbaa !47
  %12 = load ptr, ptr %psetup.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %12, null
  %13 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, ptr null, ptr @arkLsPSetup
  store ptr %cond, ptr %arkls_psetup, align 8, !tbaa !4
  %14 = load ptr, ptr %psolve.addr, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %14, null
  %15 = zext i1 %cmp7 to i64
  %cond8 = select i1 %cmp7, ptr null, ptr @arkLsPSolve
  store ptr %cond8, ptr %arkls_psolve, align 8, !tbaa !4
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %LS9, align 8, !tbaa !31
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %19 = load ptr, ptr %arkls_psetup, align 8, !tbaa !4
  %20 = load ptr, ptr %arkls_psolve, align 8, !tbaa !4
  %call10 = call i32 @SUNLinSolSetPreconditioner(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %call10, ptr %retval1, align 4, !tbaa !14
  %21 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp11 = icmp ne i32 %21, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end4
  %22 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %22, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.26, ptr noundef @.str.14)
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_psolve) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_psetup) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @arkLsPSetup(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %gamma = alloca double, align 8
  %gamrat = alloca double, align 8
  %dgamma_fail = alloca i32, align 4
  %jcur = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.81, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %5 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, ptr noundef %gamma, ptr noundef %gamrat, ptr noundef %jcur, ptr noundef %dgamma_fail)
  store i32 %call2, ptr %retval1, align 4, !tbaa !14
  %6 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %8 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef %8, ptr noundef @.str, ptr noundef @.str.81, ptr noundef @.str.80)
  %9 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 28
  %11 = load ptr, ptr %pset, align 8, !tbaa !46
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %12, i32 0, i32 17
  %13 = load double, ptr %tcur, align 8, !tbaa !80
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %ycur, align 8, !tbaa !81
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 15
  %17 = load ptr, ptr %fcur, align 8, !tbaa !82
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jbad = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %jbad, align 8, !tbaa !52
  %tobool = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %20 = load ptr, ptr %jcur, align 8, !tbaa !4
  %21 = load double, ptr %gamma, align 8, !tbaa !62
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %22, i32 0, i32 31
  %23 = load ptr, ptr %P_data, align 8, !tbaa !50
  %call6 = call i32 %11(double noundef %13, ptr noundef %15, ptr noundef %17, i32 noundef %lnot.ext, ptr noundef %20, double noundef %21, ptr noundef %23)
  store i32 %call6, ptr %retval1, align 4, !tbaa !14
  %24 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @arkLsPSolve(ptr noundef %arkode_mem, ptr noundef %r, ptr noundef %z, double noundef %tol, i32 noundef %lr) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  %lr.addr = alloca i32, align 4
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %gamma = alloca double, align 8
  %gamrat = alloca double, align 8
  %dgamma_fail = alloca i32, align 4
  %jcur = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !62
  store i32 %lr, ptr %lr.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.82, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getgammas = getelementptr inbounds %struct.ARKodeMemRec, ptr %3, i32 0, i32 27
  %4 = load ptr, ptr %step_getgammas, align 8, !tbaa !30
  %5 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call2 = call i32 %4(ptr noundef %5, ptr noundef %gamma, ptr noundef %gamrat, ptr noundef %jcur, ptr noundef %dgamma_fail)
  store i32 %call2, ptr %retval1, align 4, !tbaa !14
  %6 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %8 = load i32, ptr %retval1, align 4, !tbaa !14
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef %8, ptr noundef @.str, ptr noundef @.str.82, ptr noundef @.str.80)
  %9 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 29
  %11 = load ptr, ptr %psolve, align 8, !tbaa !47
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %12, i32 0, i32 17
  %13 = load double, ptr %tcur, align 8, !tbaa !80
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ycur = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 14
  %15 = load ptr, ptr %ycur, align 8, !tbaa !81
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %fcur = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 15
  %17 = load ptr, ptr %fcur, align 8, !tbaa !82
  %18 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %20 = load double, ptr %gamma, align 8, !tbaa !62
  %21 = load double, ptr %tol.addr, align 8, !tbaa !62
  %22 = load i32, ptr %lr.addr, align 4, !tbaa !14
  %23 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %23, i32 0, i32 31
  %24 = load ptr, ptr %P_data, align 8, !tbaa !50
  %call6 = call i32 %11(double noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %18, ptr noundef %19, double noundef %20, double noundef %21, i32 noundef %22, ptr noundef %24)
  store i32 %call6, ptr %retval1, align 4, !tbaa !14
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMemRec, ptr %25, i32 0, i32 23
  %26 = load i64, ptr %nps, align 8, !tbaa !75
  %inc = add nsw i64 %26, 1
  store i64 %inc, ptr %nps, align 8, !tbaa !75
  %27 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %27, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dgamma_fail) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamrat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetJacTimes(ptr noundef %arkode_mem, ptr noundef %jtsetup, ptr noundef %jtimes) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %jtsetup.addr = alloca ptr, align 8
  %jtimes.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %jtsetup, ptr %jtsetup.addr, align 8, !tbaa !4
  store ptr %jtimes, ptr %jtimes.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.28, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %LS, align 8, !tbaa !31
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ops, align 8, !tbaa !8
  %setatimes = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %setatimes, align 8, !tbaa !26
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.28, ptr noundef @.str.29)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %jtimes.addr, align 8, !tbaa !4
  %cmp5 = icmp ne ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 32
  store i32 0, ptr %jtimesDQ, align 8, !tbaa !38
  %10 = load ptr, ptr %jtsetup.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup7 = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 33
  store ptr %10, ptr %jtsetup7, align 8, !tbaa !39
  %12 = load ptr, ptr %jtimes.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimes8 = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 34
  store ptr %12, ptr %jtimes8, align 8, !tbaa !40
  %14 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %user_data, align 8, !tbaa !49
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 36
  store ptr %15, ptr %Jt_data, align 8, !tbaa !41
  br label %if.end18

if.else:                                          ; preds = %if.end4
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 32
  store i32 1, ptr %jtimesDQ9, align 8, !tbaa !38
  %18 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtsetup10 = getelementptr inbounds %struct.ARKLsMemRec, ptr %18, i32 0, i32 33
  store ptr null, ptr %jtsetup10, align 8, !tbaa !39
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimes11 = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 34
  store ptr @arkLsDQJtimes, ptr %jtimes11, align 8, !tbaa !40
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data12 = getelementptr inbounds %struct.ARKLsMemRec, ptr %21, i32 0, i32 36
  store ptr %20, ptr %Jt_data12, align 8, !tbaa !41
  %22 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getimplicitrhs = getelementptr inbounds %struct.ARKodeMemRec, ptr %22, i32 0, i32 25
  %23 = load ptr, ptr %step_getimplicitrhs, align 8, !tbaa !29
  %24 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call13 = call ptr %23(ptr noundef %24)
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f = getelementptr inbounds %struct.ARKLsMemRec, ptr %25, i32 0, i32 35
  store ptr %call13, ptr %Jt_f, align 8, !tbaa !42
  %26 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f14 = getelementptr inbounds %struct.ARKLsMemRec, ptr %26, i32 0, i32 35
  %27 = load ptr, ptr %Jt_f14, align 8, !tbaa !42
  %cmp15 = icmp eq ptr %27, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  %28 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %28, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.28, ptr noundef @.str.12)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetJacTimesRhsFn(ptr noundef %arkode_mem, ptr noundef %jtimesRhsFn) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %jtimesRhsFn.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %jtimesRhsFn, ptr %jtimesRhsFn.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.30, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 32
  %4 = load i32, ptr %jtimesDQ, align 8, !tbaa !38
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %5, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.30, ptr noundef @.str.31)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %jtimesRhsFn.addr, align 8, !tbaa !4
  %cmp4 = icmp ne ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %jtimesRhsFn.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f = getelementptr inbounds %struct.ARKLsMemRec, ptr %8, i32 0, i32 35
  store ptr %7, ptr %Jt_f, align 8, !tbaa !42
  br label %if.end12

if.else:                                          ; preds = %if.end3
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %step_getimplicitrhs = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 25
  %10 = load ptr, ptr %step_getimplicitrhs, align 8, !tbaa !29
  %11 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call6 = call ptr %10(ptr noundef %11)
  %12 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f7 = getelementptr inbounds %struct.ARKLsMemRec, ptr %12, i32 0, i32 35
  store ptr %call6, ptr %Jt_f7, align 8, !tbaa !42
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_f8 = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 35
  %14 = load ptr, ptr %Jt_f8, align 8, !tbaa !42
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  %15 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %15, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.30, ptr noundef @.str.12)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then5
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetLinSysFn(ptr noundef %arkode_mem, ptr noundef %linsys) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %linsys.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %linsys, ptr %linsys.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.17, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %linsys.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.ARKLsMemRec, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %A, align 8, !tbaa !56
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %6, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.32, ptr noundef @.str.33)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %linsys.addr, align 8, !tbaa !4
  %cmp6 = icmp ne ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %8, i32 0, i32 37
  store i32 1, ptr %user_linsys, align 8, !tbaa !43
  %9 = load ptr, ptr %linsys.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys8 = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 38
  store ptr %9, ptr %linsys8, align 8, !tbaa !44
  %11 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %user_data, align 8, !tbaa !49
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %13, i32 0, i32 39
  store ptr %12, ptr %A_data, align 8, !tbaa !45
  br label %if.end12

if.else:                                          ; preds = %if.end5
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys9 = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 37
  store i32 0, ptr %user_linsys9, align 8, !tbaa !43
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %linsys10 = getelementptr inbounds %struct.ARKLsMemRec, ptr %15, i32 0, i32 38
  store ptr @arkLsLinSys, ptr %linsys10, align 8, !tbaa !44
  %16 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data11 = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 39
  store ptr %16, ptr %A_data11, align 8, !tbaa !45
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetUserData(ptr noundef %arkode_mem, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.34, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jacDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %jacDQ, align 8, !tbaa !35
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %J_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %6, i32 0, i32 4
  store ptr %5, ptr %J_data, align 8, !tbaa !37
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %jtimesDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %7, i32 0, i32 32
  %8 = load i32, ptr %jtimesDQ, align 8, !tbaa !38
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %Jt_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %10, i32 0, i32 36
  store ptr %9, ptr %Jt_data, align 8, !tbaa !41
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %user_linsys = getelementptr inbounds %struct.ARKLsMemRec, ptr %11, i32 0, i32 37
  %12 = load i32, ptr %user_linsys, align 8, !tbaa !43
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %13 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %A_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %14, i32 0, i32 39
  store ptr %13, ptr %A_data, align 8, !tbaa !45
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %15 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMemRec, ptr %16, i32 0, i32 31
  store ptr %15, ptr %P_data, align 8, !tbaa !50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetJac(ptr noundef %arkode_mem, ptr noundef %J) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %J.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %J, ptr %J.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.35, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %savedJ, align 8, !tbaa !57
  %5 = load ptr, ptr %J.addr, align 8, !tbaa !4
  store ptr %4, ptr %5, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetJacTime(ptr noundef %arkode_mem, ptr noundef %t_J) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %t_J.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %t_J, ptr %t_J.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.36, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %tnlj = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 27
  %4 = load double, ptr %tnlj, align 8, !tbaa !93
  %5 = load ptr, ptr %t_J.addr, align 8, !tbaa !4
  store double %4, ptr %5, align 8, !tbaa !62
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetJacNumSteps(ptr noundef %arkode_mem, ptr noundef %nst_J) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nst_J.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nst_J, ptr %nst_J.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.37, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nstlj = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 20
  %4 = load i64, ptr %nstlj, align 8, !tbaa !72
  %5 = load ptr, ptr %nst_J.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetWorkSpace(ptr noundef %arkode_mem, ptr noundef %lenrw, ptr noundef %leniw) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %lenrw.addr = alloca ptr, align 8
  %leniw.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %lrw1 = alloca i32, align 4
  %liw1 = alloca i32, align 4
  %lrw = alloca i64, align 8
  %liw = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %lenrw, ptr %lenrw.addr, align 8, !tbaa !4
  store ptr %leniw, ptr %leniw.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrw1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %liw1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lrw) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %liw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.38, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  store i64 3, ptr %3, align 8, !tbaa !96
  %4 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  store i64 30, ptr %4, align 8, !tbaa !96
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x = getelementptr inbounds %struct.ARKLsMemRec, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %x, align 8, !tbaa !61
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ops, align 8, !tbaa !20
  %nvspace = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %nvspace, align 8, !tbaa !135
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %x3 = getelementptr inbounds %struct.ARKLsMemRec, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %x3, align 8, !tbaa !61
  call void @N_VSpace(ptr noundef %10, ptr noundef %lrw1, ptr noundef %liw1)
  %11 = load i32, ptr %lrw1, align 4, !tbaa !14
  %mul = mul nsw i32 2, %11
  %conv = sext i32 %mul to i64
  %12 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !96
  %add = add nsw i64 %13, %conv
  store i64 %add, ptr %12, align 8, !tbaa !96
  %14 = load i32, ptr %liw1, align 4, !tbaa !14
  %mul4 = mul nsw i32 2, %14
  %conv5 = sext i32 %mul4 to i64
  %15 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !96
  %add6 = add nsw i64 %16, %conv5
  store i64 %add6, ptr %15, align 8, !tbaa !96
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ = getelementptr inbounds %struct.ARKLsMemRec, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %savedJ, align 8, !tbaa !57
  %tobool8 = icmp ne ptr %18, null
  br i1 %tobool8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.end7
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ10 = getelementptr inbounds %struct.ARKLsMemRec, ptr %19, i32 0, i32 11
  %20 = load ptr, ptr %savedJ10, align 8, !tbaa !57
  %ops11 = getelementptr inbounds %struct._generic_SUNMatrix, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %ops11, align 8, !tbaa !83
  %space = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %space, align 8, !tbaa !136
  %tobool12 = icmp ne ptr %22, null
  br i1 %tobool12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.then9
  %23 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %savedJ14 = getelementptr inbounds %struct.ARKLsMemRec, ptr %23, i32 0, i32 11
  %24 = load ptr, ptr %savedJ14, align 8, !tbaa !57
  %call15 = call i32 @SUNMatSpace(ptr noundef %24, ptr noundef %lrw, ptr noundef %liw)
  store i32 %call15, ptr %retval1, align 4, !tbaa !14
  %25 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then13
  %26 = load i64, ptr %lrw, align 8, !tbaa !96
  %27 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %28 = load i64, ptr %27, align 8, !tbaa !96
  %add19 = add nsw i64 %28, %26
  store i64 %add19, ptr %27, align 8, !tbaa !96
  %29 = load i64, ptr %liw, align 8, !tbaa !96
  %30 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %31 = load i64, ptr %30, align 8, !tbaa !96
  %add20 = add nsw i64 %31, %29
  store i64 %add20, ptr %30, align 8, !tbaa !96
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end7
  %32 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMemRec, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %LS, align 8, !tbaa !31
  %ops24 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %ops24, align 8, !tbaa !8
  %space25 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %space25, align 8, !tbaa !137
  %tobool26 = icmp ne ptr %35, null
  br i1 %tobool26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end23
  %36 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS28 = getelementptr inbounds %struct.ARKLsMemRec, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %LS28, align 8, !tbaa !31
  %call29 = call i32 @SUNLinSolSpace(ptr noundef %37, ptr noundef %lrw, ptr noundef %liw)
  store i32 %call29, ptr %retval1, align 4, !tbaa !14
  %38 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp30 = icmp eq i32 %38, 0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then27
  %39 = load i64, ptr %lrw, align 8, !tbaa !96
  %40 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !96
  %add33 = add nsw i64 %41, %39
  store i64 %add33, ptr %40, align 8, !tbaa !96
  %42 = load i64, ptr %liw, align 8, !tbaa !96
  %43 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %44 = load i64, ptr %43, align 8, !tbaa !96
  %add34 = add nsw i64 %44, %42
  store i64 %add34, ptr %43, align 8, !tbaa !96
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then27
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %liw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lrw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %liw1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrw1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

declare void @N_VSpace(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNMatSpace(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNLinSolSpace(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumJacEvals(ptr noundef %arkode_mem, ptr noundef %njevals) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %njevals.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %njevals, ptr %njevals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.39, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nje = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 18
  %4 = load i64, ptr %nje, align 8, !tbaa !71
  %5 = load ptr, ptr %njevals.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumRhsEvals(ptr noundef %arkode_mem, ptr noundef %nfevalsLS) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nfevalsLS.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nfevalsLS, ptr %nfevalsLS.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.40, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nfeDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 19
  %4 = load i64, ptr %nfeDQ, align 8, !tbaa !70
  %5 = load ptr, ptr %nfevalsLS.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumPrecEvals(ptr noundef %arkode_mem, ptr noundef %npevals) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %npevals.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %npevals, ptr %npevals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.41, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 21
  %4 = load i64, ptr %npe, align 8, !tbaa !73
  %5 = load ptr, ptr %npevals.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumPrecSolves(ptr noundef %arkode_mem, ptr noundef %npsolves) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %npsolves.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %npsolves, ptr %npsolves.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.42, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 23
  %4 = load i64, ptr %nps, align 8, !tbaa !75
  %5 = load ptr, ptr %npsolves.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumLinIters(ptr noundef %arkode_mem, ptr noundef %nliters) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nliters.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nliters, ptr %nliters.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.43, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 22
  %4 = load i64, ptr %nli, align 8, !tbaa !74
  %5 = load ptr, ptr %nliters.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumConvFails(ptr noundef %arkode_mem, ptr noundef %nlcfails) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nlcfails.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nlcfails, ptr %nlcfails.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.44, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 24
  %4 = load i64, ptr %ncfl, align 8, !tbaa !76
  %5 = load ptr, ptr %nlcfails.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumJTSetupEvals(ptr noundef %arkode_mem, ptr noundef %njtsetups) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %njtsetups.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %njtsetups, ptr %njtsetups.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.45, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %njtsetup = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 25
  %4 = load i64, ptr %njtsetup, align 8, !tbaa !77
  %5 = load ptr, ptr %njtsetups.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumJtimesEvals(ptr noundef %arkode_mem, ptr noundef %njvevals) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %njvevals.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %njvevals, ptr %njvevals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.46, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %njtimes = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 26
  %4 = load i64, ptr %njtimes, align 8, !tbaa !78
  %5 = load ptr, ptr %njvevals.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassMatvecSetups(ptr noundef %arkode_mem, ptr noundef %nmvsetups) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmvsetups.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmvsetups, ptr %nmvsetups.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.47, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmvsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 14
  %4 = load i64, ptr %nmvsetup, align 8, !tbaa !123
  %5 = load ptr, ptr %nmvsetups.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetLastFlag(ptr noundef %arkode_mem, ptr noundef %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %flag.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %flag, ptr %flag.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessLMem(ptr noundef %0, ptr noundef @.str.48, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMemRec, ptr %3, i32 0, i32 40
  %4 = load i32, ptr %last_flag, align 8, !tbaa !54
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %flag.addr, align 8, !tbaa !4
  store i64 %conv, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define ptr @arkLSGetReturnFlagName(i64 noundef %flag) #0 {
entry:
  %flag.addr = alloca i64, align 8
  %name = alloca ptr, align 8
  store i64 %flag, ptr %flag.addr, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #7
  %call = call noalias ptr @malloc(i64 noundef 30) #8
  store ptr %call, ptr %name, align 8, !tbaa !4
  %0 = load i64, ptr %flag.addr, align 8, !tbaa !96
  switch i64 %0, label %sw.default [
    i64 0, label %sw.bb
    i64 -1, label %sw.bb2
    i64 -2, label %sw.bb4
    i64 -3, label %sw.bb6
    i64 -4, label %sw.bb8
    i64 -6, label %sw.bb10
    i64 -7, label %sw.bb12
    i64 -8, label %sw.bb14
    i64 -9, label %sw.bb16
    i64 -10, label %sw.bb18
    i64 -11, label %sw.bb20
    i64 -12, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %name, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.49) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %2 = load ptr, ptr %name, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.50) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load ptr, ptr %name, align 8, !tbaa !4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.51) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %4 = load ptr, ptr %name, align 8, !tbaa !4
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.52) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %5 = load ptr, ptr %name, align 8, !tbaa !4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.53) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %6 = load ptr, ptr %name, align 8, !tbaa !4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.54) #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %7 = load ptr, ptr %name, align 8, !tbaa !4
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @.str.55) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %8 = load ptr, ptr %name, align 8, !tbaa !4
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %8, ptr noundef @.str.56) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %9 = load ptr, ptr %name, align 8, !tbaa !4
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef @.str.57) #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %10 = load ptr, ptr %name, align 8, !tbaa !4
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef @.str.58) #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %11 = load ptr, ptr %name, align 8, !tbaa !4
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %11, ptr noundef @.str.59) #7
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %12 = load ptr, ptr %name, align 8, !tbaa !4
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %12, ptr noundef @.str.60) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %13 = load ptr, ptr %name, align 8, !tbaa !4
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef @.str.61) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %14 = load ptr, ptr %name, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #7
  ret ptr %14
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassEpsLin(ptr noundef %arkode_mem, double noundef %eplifac) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %eplifac.addr = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store double %eplifac, ptr %eplifac.addr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.62, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %eplifac.addr, align 8, !tbaa !62
  %cmp2 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load double, ptr %eplifac.addr, align 8, !tbaa !62
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 5.000000e-02, %cond.true ], [ %4, %cond.false ]
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %eplifac3 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 6
  store double %cond, ptr %eplifac3, align 8, !tbaa !114
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassNormFactor(ptr noundef %arkode_mem, double noundef %nrmfac) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nrmfac.addr = alloca double, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store double %nrmfac, ptr %nrmfac.addr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.63, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %cmp2 = fcmp ogt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac4 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 7
  store double %4, ptr %nrmfac4, align 8, !tbaa !118
  br label %if.end31

if.else:                                          ; preds = %if.end
  %6 = load double, ptr %nrmfac.addr, align 8, !tbaa !62
  %cmp5 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp5, label %if.then6, label %if.else16

if.then6:                                         ; preds = %if.else
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %7, i32 0, i32 38
  %8 = load ptr, ptr %tempv1, align 8, !tbaa !16
  call void @N_VConst(double noundef 1.000000e+00, ptr noundef %8)
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv17 = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 38
  %10 = load ptr, ptr %tempv17, align 8, !tbaa !16
  %11 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv18 = getelementptr inbounds %struct.ARKodeMemRec, ptr %11, i32 0, i32 38
  %12 = load ptr, ptr %tempv18, align 8, !tbaa !16
  %call9 = call double @N_VDotProd(ptr noundef %10, ptr noundef %12)
  %cmp10 = fcmp ole double %call9, 0.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  %13 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv111 = getelementptr inbounds %struct.ARKodeMemRec, ptr %13, i32 0, i32 38
  %14 = load ptr, ptr %tempv111, align 8, !tbaa !16
  %15 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv112 = getelementptr inbounds %struct.ARKodeMemRec, ptr %15, i32 0, i32 38
  %16 = load ptr, ptr %tempv112, align 8, !tbaa !16
  %call13 = call double @N_VDotProd(ptr noundef %14, ptr noundef %16)
  %call14 = call double @sqrt(double noundef %call13) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call14, %cond.false ]
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac15 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %17, i32 0, i32 7
  store double %cond, ptr %nrmfac15, align 8, !tbaa !118
  br label %if.end30

if.else16:                                        ; preds = %if.else
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv117 = getelementptr inbounds %struct.ARKodeMemRec, ptr %18, i32 0, i32 38
  %19 = load ptr, ptr %tempv117, align 8, !tbaa !16
  %call18 = call i32 @N_VGetLength(ptr noundef %19)
  %conv = sitofp i32 %call18 to double
  %cmp19 = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %if.else16
  br label %cond.end27

cond.false22:                                     ; preds = %if.else16
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv123 = getelementptr inbounds %struct.ARKodeMemRec, ptr %20, i32 0, i32 38
  %21 = load ptr, ptr %tempv123, align 8, !tbaa !16
  %call24 = call i32 @N_VGetLength(ptr noundef %21)
  %conv25 = sitofp i32 %call24 to double
  %call26 = call double @sqrt(double noundef %conv25) #7
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.true21
  %cond28 = phi double [ 0.000000e+00, %cond.true21 ], [ %call26, %cond.false22 ]
  %22 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nrmfac29 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %22, i32 0, i32 7
  store double %cond28, ptr %nrmfac29, align 8, !tbaa !118
  br label %if.end30

if.end30:                                         ; preds = %cond.end27, %cond.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassPreconditioner(ptr noundef %arkode_mem, ptr noundef %psetup, ptr noundef %psolve) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %psetup.addr = alloca ptr, align 8
  %psolve.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %arkls_mpsetup = alloca ptr, align 8
  %arkls_mpsolve = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %psetup, ptr %psetup.addr, align 8, !tbaa !4
  store ptr %psolve, ptr %psolve.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mpsetup) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mpsolve) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.64, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %LS, align 8, !tbaa !89
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %ops, align 8, !tbaa !8
  %setpreconditioner = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %setpreconditioner, align 8, !tbaa !55
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %7, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.64, ptr noundef @.str.27)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %psetup.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %9, i32 0, i32 22
  store ptr %8, ptr %pset, align 8, !tbaa !110
  %10 = load ptr, ptr %psolve.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve5 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %11, i32 0, i32 23
  store ptr %10, ptr %psolve5, align 8, !tbaa !111
  %12 = load ptr, ptr %psetup.addr, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %12, null
  %13 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, ptr null, ptr @arkLsMPSetup
  store ptr %cond, ptr %arkls_mpsetup, align 8, !tbaa !4
  %14 = load ptr, ptr %psolve.addr, align 8, !tbaa !4
  %cmp7 = icmp eq ptr %14, null
  %15 = zext i1 %cmp7 to i64
  %cond8 = select i1 %cmp7, ptr null, ptr @arkLsMPSolve
  store ptr %cond8, ptr %arkls_mpsolve, align 8, !tbaa !4
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS9 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %LS9, align 8, !tbaa !89
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %19 = load ptr, ptr %arkls_mpsetup, align 8, !tbaa !4
  %20 = load ptr, ptr %arkls_mpsolve, align 8, !tbaa !4
  %call10 = call i32 @SUNLinSolSetPreconditioner(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 %call10, ptr %retval1, align 4, !tbaa !14
  %21 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp11 = icmp ne i32 %21, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end4
  %22 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %22, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.64, ptr noundef @.str.14)
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mpsolve) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mpsetup) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMPSetup(ptr noundef %arkode_mem) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.87, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %time_dependent = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %time_dependent, align 8, !tbaa !104
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 15
  %6 = load i64, ptr %npe, align 8, !tbaa !124
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %pset = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %7, i32 0, i32 22
  %8 = load ptr, ptr %pset, align 8, !tbaa !110
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 54
  %10 = load double, ptr %tcur, align 8, !tbaa !133
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %11, i32 0, i32 25
  %12 = load ptr, ptr %P_data, align 8, !tbaa !113
  %call5 = call i32 %8(double noundef %10, ptr noundef %12)
  store i32 %call5, ptr %retval1, align 4, !tbaa !14
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %npe6 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %13, i32 0, i32 15
  %14 = load i64, ptr %npe6, align 8, !tbaa !124
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %npe6, align 8, !tbaa !124
  %15 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @arkLsMPSolve(ptr noundef %arkode_mem, ptr noundef %r, ptr noundef %z, double noundef %tol, i32 noundef %lr) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  %lr.addr = alloca i32, align 4
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %r, ptr %r.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !62
  store i32 %lr, ptr %lr.addr, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.88, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %psolve = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 23
  %4 = load ptr, ptr %psolve, align 8, !tbaa !111
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 54
  %6 = load double, ptr %tcur, align 8, !tbaa !133
  %7 = load ptr, ptr %r.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %9 = load double, ptr %tol.addr, align 8, !tbaa !62
  %10 = load i32, ptr %lr.addr, align 4, !tbaa !14
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %11, i32 0, i32 25
  %12 = load ptr, ptr %P_data, align 8, !tbaa !113
  %call2 = call i32 %4(double noundef %6, ptr noundef %7, ptr noundef %8, double noundef %9, i32 noundef %10, ptr noundef %12)
  store i32 %call2, ptr %retval1, align 4, !tbaa !14
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %13, i32 0, i32 17
  %14 = load i64, ptr %nps, align 8, !tbaa !126
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %nps, align 8, !tbaa !126
  %15 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassTimes(ptr noundef %arkode_mem, ptr noundef %mtsetup, ptr noundef %mtimes, ptr noundef %mtimes_data) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %mtsetup.addr = alloca ptr, align 8
  %mtimes.addr = alloca ptr, align 8
  %mtimes_data.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %mtsetup, ptr %mtsetup.addr, align 8, !tbaa !4
  store ptr %mtimes, ptr %mtimes.addr, align 8, !tbaa !4
  store ptr %mtimes_data, ptr %mtimes_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.65, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mtimes.addr, align 8, !tbaa !4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %4, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.65, ptr noundef @.str.66)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %LS, align 8, !tbaa !89
  %ops = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ops, align 8, !tbaa !8
  %setatimes = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %setatimes, align 8, !tbaa !26
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %9, i32 noundef -3, ptr noundef @.str, ptr noundef @.str.65, ptr noundef @.str.29)
  store i32 -3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %mtsetup.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtsetup8 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %11, i32 0, i32 26
  store ptr %10, ptr %mtsetup8, align 8, !tbaa !107
  %12 = load ptr, ptr %mtimes.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mtimes9 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %13, i32 0, i32 27
  store ptr %12, ptr %mtimes9, align 8, !tbaa !108
  %14 = load ptr, ptr %mtimes_data.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mt_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %15, i32 0, i32 28
  store ptr %14, ptr %mt_data, align 8, !tbaa !109
  %16 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS10 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %LS10, align 8, !tbaa !89
  %18 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %call11 = call i32 @SUNLinSolSetATimes(ptr noundef %17, ptr noundef %18, ptr noundef @arkLsMTimes)
  store i32 %call11, ptr %retval1, align 4, !tbaa !14
  %19 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp12 = icmp ne i32 %19, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  %20 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  call void (ptr, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %20, i32 noundef -12, ptr noundef @.str, ptr noundef @.str.65, ptr noundef @.str.13)
  store i32 -12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @arkLSSetMassUserData(ptr noundef %arkode_mem, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.67, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %mass = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %mass, align 8, !tbaa !105
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %6, i32 0, i32 5
  store ptr %5, ptr %M_data, align 8, !tbaa !106
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %P_data = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %8, i32 0, i32 25
  store ptr %7, ptr %P_data, align 8, !tbaa !113
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetMassWorkSpace(ptr noundef %arkode_mem, ptr noundef %lenrw, ptr noundef %leniw) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %lenrw.addr = alloca ptr, align 8
  %leniw.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %lrw1 = alloca i32, align 4
  %liw1 = alloca i32, align 4
  %lrw = alloca i64, align 8
  %liw = alloca i64, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %lenrw, ptr %lenrw.addr, align 8, !tbaa !4
  store ptr %leniw, ptr %leniw.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrw1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %liw1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lrw) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %liw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.68, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  store i64 2, ptr %3, align 8, !tbaa !96
  %4 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  store i64 23, ptr %4, align 8, !tbaa !96
  %5 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv1 = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 38
  %6 = load ptr, ptr %tempv1, align 8, !tbaa !16
  %ops = getelementptr inbounds %struct._generic_N_Vector, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %ops, align 8, !tbaa !20
  %nvspace = getelementptr inbounds %struct._generic_N_Vector_Ops, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %nvspace, align 8, !tbaa !135
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %ark_mem, align 8, !tbaa !4
  %tempv13 = getelementptr inbounds %struct.ARKodeMemRec, ptr %9, i32 0, i32 38
  %10 = load ptr, ptr %tempv13, align 8, !tbaa !16
  call void @N_VSpace(ptr noundef %10, ptr noundef %lrw1, ptr noundef %liw1)
  %11 = load i32, ptr %lrw1, align 4, !tbaa !14
  %conv = sext i32 %11 to i64
  %12 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !96
  %add = add nsw i64 %13, %conv
  store i64 %add, ptr %12, align 8, !tbaa !96
  %14 = load i32, ptr %liw1, align 4, !tbaa !14
  %conv4 = sext i32 %14 to i64
  %15 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !96
  %add5 = add nsw i64 %16, %conv4
  store i64 %add5, ptr %15, align 8, !tbaa !96
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %17 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %iterative = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %iterative, align 8, !tbaa !102
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.end23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %19 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %M_lu, align 8, !tbaa !116
  %tobool8 = icmp ne ptr %20, null
  br i1 %tobool8, label %if.then9, label %if.end23

if.then9:                                         ; preds = %land.lhs.true
  %21 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu10 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %M_lu10, align 8, !tbaa !116
  %ops11 = getelementptr inbounds %struct._generic_SUNMatrix, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %ops11, align 8, !tbaa !83
  %space = getelementptr inbounds %struct._generic_SUNMatrix_Ops, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %space, align 8, !tbaa !136
  %tobool12 = icmp ne ptr %24, null
  br i1 %tobool12, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.then9
  %25 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M_lu14 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %M_lu14, align 8, !tbaa !116
  %call15 = call i32 @SUNMatSpace(ptr noundef %26, ptr noundef %lrw, ptr noundef %liw)
  store i32 %call15, ptr %retval1, align 4, !tbaa !14
  %27 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp16 = icmp eq i32 %27, 0
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then13
  %28 = load i64, ptr %lrw, align 8, !tbaa !96
  %29 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %30 = load i64, ptr %29, align 8, !tbaa !96
  %add19 = add nsw i64 %30, %28
  store i64 %add19, ptr %29, align 8, !tbaa !96
  %31 = load i64, ptr %liw, align 8, !tbaa !96
  %32 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %33 = load i64, ptr %32, align 8, !tbaa !96
  %add20 = add nsw i64 %33, %31
  store i64 %add20, ptr %32, align 8, !tbaa !96
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %land.lhs.true, %if.end6
  %34 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %34, i32 0, i32 19
  %35 = load ptr, ptr %LS, align 8, !tbaa !89
  %ops24 = getelementptr inbounds %struct._generic_SUNLinearSolver, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %ops24, align 8, !tbaa !8
  %space25 = getelementptr inbounds %struct._generic_SUNLinearSolver_Ops, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %space25, align 8, !tbaa !137
  %tobool26 = icmp ne ptr %37, null
  br i1 %tobool26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end23
  %38 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %LS28 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %38, i32 0, i32 19
  %39 = load ptr, ptr %LS28, align 8, !tbaa !89
  %call29 = call i32 @SUNLinSolSpace(ptr noundef %39, ptr noundef %lrw, ptr noundef %liw)
  store i32 %call29, ptr %retval1, align 4, !tbaa !14
  %40 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp30 = icmp eq i32 %40, 0
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then27
  %41 = load i64, ptr %lrw, align 8, !tbaa !96
  %42 = load ptr, ptr %lenrw.addr, align 8, !tbaa !4
  %43 = load i64, ptr %42, align 8, !tbaa !96
  %add33 = add nsw i64 %43, %41
  store i64 %add33, ptr %42, align 8, !tbaa !96
  %44 = load i64, ptr %liw, align 8, !tbaa !96
  %45 = load ptr, ptr %leniw.addr, align 8, !tbaa !4
  %46 = load i64, ptr %45, align 8, !tbaa !96
  %add34 = add nsw i64 %46, %44
  store i64 %add34, ptr %45, align 8, !tbaa !96
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then27
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end23
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %liw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lrw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %liw1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrw1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassSetups(ptr noundef %arkode_mem, ptr noundef %nmsetups) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmsetups.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmsetups, ptr %nmsetups.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.69, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmsetups2 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 10
  %4 = load i64, ptr %nmsetups2, align 8, !tbaa !119
  %5 = load ptr, ptr %nmsetups.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassMult(ptr noundef %arkode_mem, ptr noundef %nmvevals) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmvevals.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmvevals, ptr %nmvevals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.70, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtimes = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 13
  %4 = load i64, ptr %nmtimes, align 8, !tbaa !122
  %5 = load ptr, ptr %nmvevals.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassSolves(ptr noundef %arkode_mem, ptr noundef %nmsolves) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmsolves.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmsolves, ptr %nmsolves.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.71, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmsolves2 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 11
  %4 = load i64, ptr %nmsolves2, align 8, !tbaa !120
  %5 = load ptr, ptr %nmsolves.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassPrecEvals(ptr noundef %arkode_mem, ptr noundef %npevals) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %npevals.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %npevals, ptr %npevals.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.72, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %npe = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 15
  %4 = load i64, ptr %npe, align 8, !tbaa !124
  %5 = load ptr, ptr %npevals.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassPrecSolves(ptr noundef %arkode_mem, ptr noundef %npsolves) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %npsolves.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %npsolves, ptr %npsolves.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.73, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nps = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 17
  %4 = load i64, ptr %nps, align 8, !tbaa !126
  %5 = load ptr, ptr %npsolves.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassIters(ptr noundef %arkode_mem, ptr noundef %nmiters) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmiters.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmiters, ptr %nmiters.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.74, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nli = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 16
  %4 = load i64, ptr %nli, align 8, !tbaa !125
  %5 = load ptr, ptr %nmiters.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMassConvFails(ptr noundef %arkode_mem, ptr noundef %nmcfails) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmcfails.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmcfails, ptr %nmcfails.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.75, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %ncfl = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 18
  %4 = load i64, ptr %ncfl, align 8, !tbaa !127
  %5 = load ptr, ptr %nmcfails.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetCurrentMassMatrix(ptr noundef %arkode_mem, ptr noundef %M) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %M.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %M, ptr %M.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.76, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %M2 = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %M2, align 8, !tbaa !87
  %5 = load ptr, ptr %M.addr, align 8, !tbaa !4
  store ptr %4, ptr %5, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetNumMTSetups(ptr noundef %arkode_mem, ptr noundef %nmtsetups) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %nmtsetups.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %nmtsetups, ptr %nmtsetups.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.77, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %nmtsetup = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 12
  %4 = load i64, ptr %nmtsetup, align 8, !tbaa !121
  %5 = load ptr, ptr %nmtsetups.addr, align 8, !tbaa !4
  store i64 %4, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @arkLSGetLastMassFlag(ptr noundef %arkode_mem, ptr noundef %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %arkode_mem.addr = alloca ptr, align 8
  %flag.addr = alloca ptr, align 8
  %ark_mem = alloca ptr, align 8
  %arkls_mem = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arkode_mem, ptr %arkode_mem.addr, align 8, !tbaa !4
  store ptr %flag, ptr %flag.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ark_mem) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  %0 = load ptr, ptr %arkode_mem.addr, align 8, !tbaa !4
  %call = call i32 @arkLs_AccessMassMem(ptr noundef %0, ptr noundef @.str.78, ptr noundef %ark_mem, ptr noundef %arkls_mem)
  store i32 %call, ptr %retval1, align 4, !tbaa !14
  %1 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %retval1, align 4, !tbaa !14
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %arkls_mem, align 8, !tbaa !4
  %last_flag = getelementptr inbounds %struct.ARKLsMassMemRec, ptr %3, i32 0, i32 29
  %4 = load i32, ptr %last_flag, align 8, !tbaa !115
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %flag.addr, align 8, !tbaa !4
  store i64 %conv, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arkls_mem) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ark_mem) #7
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNMatMatvec(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNMatGetID(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @arkLsDenseDQJac(double noundef %t, ptr noundef %y, ptr noundef %fy, ptr noundef %Jac, ptr noundef %ark_mem, ptr noundef %arkls_mem, ptr noundef %fi, ptr noundef %tmp1) #0 {
entry:
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %fy.addr = alloca ptr, align 8
  %Jac.addr = alloca ptr, align 8
  %ark_mem.addr = alloca ptr, align 8
  %arkls_mem.addr = alloca ptr, align 8
  %fi.addr = alloca ptr, align 8
  %tmp1.addr = alloca ptr, align 8
  %fnorm = alloca double, align 8
  %minInc = alloca double, align 8
  %inc = alloca double, align 8
  %inc_inv = alloca double, align 8
  %yjsaved = alloca double, align 8
  %srur = alloca double, align 8
  %conj = alloca double, align 8
  %y_data = alloca ptr, align 8
  %ewt_data = alloca ptr, align 8
  %cns_data = alloca ptr, align 8
  %ftemp = alloca ptr, align 8
  %jthCol = alloca ptr, align 8
  %j = alloca i32, align 4
  %N = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %fy, ptr %fy.addr, align 8, !tbaa !4
  store ptr %Jac, ptr %Jac.addr, align 8, !tbaa !4
  store ptr %ark_mem, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !4
  store ptr %tmp1, ptr %tmp1.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %minInc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %inc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %inc_inv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %yjsaved) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %srur) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ewt_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cns_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ftemp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %jthCol) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  store i32 0, ptr %retval1, align 4, !tbaa !14
  %0 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call = call i32 @SUNDenseMatrix_Columns(ptr noundef %0)
  store i32 %call, ptr %N, align 4, !tbaa !14
  %1 = load ptr, ptr %tmp1.addr, align 8, !tbaa !4
  store ptr %1, ptr %ftemp, align 8, !tbaa !4
  %2 = load ptr, ptr %tmp1.addr, align 8, !tbaa !4
  %call2 = call ptr @N_VCloneEmpty(ptr noundef %2)
  store ptr %call2, ptr %jthCol, align 8, !tbaa !4
  %3 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %ewt = getelementptr inbounds %struct.ARKodeMemRec, ptr %3, i32 0, i32 32
  %4 = load ptr, ptr %ewt, align 8, !tbaa !69
  %call3 = call ptr @N_VGetArrayPointer(ptr noundef %4)
  store ptr %call3, ptr %ewt_data, align 8, !tbaa !4
  %5 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call4 = call ptr @N_VGetArrayPointer(ptr noundef %5)
  store ptr %call4, ptr %y_data, align 8, !tbaa !4
  %6 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraintsSet = getelementptr inbounds %struct.ARKodeMemRec, ptr %6, i32 0, i32 18
  %7 = load i32, ptr %constraintsSet, align 8, !tbaa !138
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraints = getelementptr inbounds %struct.ARKodeMemRec, ptr %8, i32 0, i32 42
  %9 = load ptr, ptr %constraints, align 8, !tbaa !139
  %call5 = call ptr @N_VGetArrayPointer(ptr noundef %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call5, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %cns_data, align 8, !tbaa !4
  %10 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround = getelementptr inbounds %struct.ARKodeMemRec, ptr %10, i32 0, i32 1
  %11 = load double, ptr %uround, align 8, !tbaa !131
  %cmp = fcmp ole double %11, 0.000000e+00
  br i1 %cmp, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end10

cond.false7:                                      ; preds = %cond.end
  %12 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround8 = getelementptr inbounds %struct.ARKodeMemRec, ptr %12, i32 0, i32 1
  %13 = load double, ptr %uround8, align 8, !tbaa !131
  %call9 = call double @sqrt(double noundef %13) #7
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.true6
  %cond11 = phi double [ 0.000000e+00, %cond.true6 ], [ %call9, %cond.false7 ]
  store double %cond11, ptr %srur, align 8, !tbaa !62
  %14 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %rwt = getelementptr inbounds %struct.ARKodeMemRec, ptr %15, i32 0, i32 33
  %16 = load ptr, ptr %rwt, align 8, !tbaa !94
  %call12 = call double @N_VWrmsNorm(ptr noundef %14, ptr noundef %16)
  store double %call12, ptr %fnorm, align 8, !tbaa !62
  %17 = load double, ptr %fnorm, align 8, !tbaa !62
  %cmp13 = fcmp une double %17, 0.000000e+00
  br i1 %cmp13, label %cond.true14, label %cond.false19

cond.true14:                                      ; preds = %cond.end10
  %18 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.ARKodeMemRec, ptr %18, i32 0, i32 48
  %19 = load double, ptr %h, align 8, !tbaa !140
  %20 = call double @llvm.fabs.f64(double %19)
  %mul = fmul double 1.000000e+03, %20
  %21 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround15 = getelementptr inbounds %struct.ARKodeMemRec, ptr %21, i32 0, i32 1
  %22 = load double, ptr %uround15, align 8, !tbaa !131
  %mul16 = fmul double %mul, %22
  %23 = load i32, ptr %N, align 4, !tbaa !14
  %conv = sitofp i32 %23 to double
  %mul17 = fmul double %mul16, %conv
  %24 = load double, ptr %fnorm, align 8, !tbaa !62
  %mul18 = fmul double %mul17, %24
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true14
  %cond21 = phi double [ %mul18, %cond.true14 ], [ 1.000000e+00, %cond.false19 ]
  store double %cond21, ptr %minInc, align 8, !tbaa !62
  store i32 0, ptr %j, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end20
  %25 = load i32, ptr %j, align 4, !tbaa !14
  %26 = load i32, ptr %N, align 4, !tbaa !14
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !14
  %call24 = call ptr @SUNDenseMatrix_Column(ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %jthCol, align 8, !tbaa !4
  call void @N_VSetArrayPointer(ptr noundef %call24, ptr noundef %29)
  %30 = load ptr, ptr %y_data, align 8, !tbaa !4
  %31 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds double, ptr %30, i64 %idxprom
  %32 = load double, ptr %arrayidx, align 8, !tbaa !62
  store double %32, ptr %yjsaved, align 8, !tbaa !62
  %33 = load double, ptr %srur, align 8, !tbaa !62
  %34 = load double, ptr %yjsaved, align 8, !tbaa !62
  %35 = call double @llvm.fabs.f64(double %34)
  %mul25 = fmul double %33, %35
  %36 = load double, ptr %minInc, align 8, !tbaa !62
  %37 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %38 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds double, ptr %37, i64 %idxprom26
  %39 = load double, ptr %arrayidx27, align 8, !tbaa !62
  %div = fdiv double %36, %39
  %cmp28 = fcmp ogt double %mul25, %div
  br i1 %cmp28, label %cond.true30, label %cond.false32

cond.true30:                                      ; preds = %for.body
  %40 = load double, ptr %srur, align 8, !tbaa !62
  %41 = load double, ptr %yjsaved, align 8, !tbaa !62
  %42 = call double @llvm.fabs.f64(double %41)
  %mul31 = fmul double %40, %42
  br label %cond.end36

cond.false32:                                     ; preds = %for.body
  %43 = load double, ptr %minInc, align 8, !tbaa !62
  %44 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom33 = sext i32 %45 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %44, i64 %idxprom33
  %46 = load double, ptr %arrayidx34, align 8, !tbaa !62
  %div35 = fdiv double %43, %46
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %cond.true30
  %cond37 = phi double [ %mul31, %cond.true30 ], [ %div35, %cond.false32 ]
  store double %cond37, ptr %inc, align 8, !tbaa !62
  %47 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraintsSet38 = getelementptr inbounds %struct.ARKodeMemRec, ptr %47, i32 0, i32 18
  %48 = load i32, ptr %constraintsSet38, align 8, !tbaa !138
  %tobool39 = icmp ne i32 %48, 0
  br i1 %tobool39, label %if.then, label %if.end61

if.then:                                          ; preds = %cond.end36
  %49 = load ptr, ptr %cns_data, align 8, !tbaa !4
  %50 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %49, i64 %idxprom40
  %51 = load double, ptr %arrayidx41, align 8, !tbaa !62
  store double %51, ptr %conj, align 8, !tbaa !62
  %52 = load double, ptr %conj, align 8, !tbaa !62
  %53 = call double @llvm.fabs.f64(double %52)
  %cmp42 = fcmp oeq double %53, 1.000000e+00
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then
  %54 = load double, ptr %yjsaved, align 8, !tbaa !62
  %55 = load double, ptr %inc, align 8, !tbaa !62
  %add = fadd double %54, %55
  %56 = load double, ptr %conj, align 8, !tbaa !62
  %mul45 = fmul double %add, %56
  %cmp46 = fcmp olt double %mul45, 0.000000e+00
  br i1 %cmp46, label %if.then48, label %if.end

if.then48:                                        ; preds = %if.then44
  %57 = load double, ptr %inc, align 8, !tbaa !62
  %fneg = fneg double %57
  store double %fneg, ptr %inc, align 8, !tbaa !62
  br label %if.end

if.end:                                           ; preds = %if.then48, %if.then44
  br label %if.end60

if.else:                                          ; preds = %if.then
  %58 = load double, ptr %conj, align 8, !tbaa !62
  %59 = call double @llvm.fabs.f64(double %58)
  %cmp49 = fcmp oeq double %59, 2.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end59

if.then51:                                        ; preds = %if.else
  %60 = load double, ptr %yjsaved, align 8, !tbaa !62
  %61 = load double, ptr %inc, align 8, !tbaa !62
  %add52 = fadd double %60, %61
  %62 = load double, ptr %conj, align 8, !tbaa !62
  %mul53 = fmul double %add52, %62
  %cmp54 = fcmp ole double %mul53, 0.000000e+00
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then51
  %63 = load double, ptr %inc, align 8, !tbaa !62
  %fneg57 = fneg double %63
  store double %fneg57, ptr %inc, align 8, !tbaa !62
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %cond.end36
  %64 = load double, ptr %inc, align 8, !tbaa !62
  %65 = load ptr, ptr %y_data, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom62 = sext i32 %66 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %65, i64 %idxprom62
  %67 = load double, ptr %arrayidx63, align 8, !tbaa !62
  %add64 = fadd double %67, %64
  store double %add64, ptr %arrayidx63, align 8, !tbaa !62
  %68 = load ptr, ptr %fi.addr, align 8, !tbaa !4
  %69 = load double, ptr %t.addr, align 8, !tbaa !62
  %70 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %71 = load ptr, ptr %ftemp, align 8, !tbaa !4
  %72 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %user_data, align 8, !tbaa !49
  %call65 = call i32 %68(double noundef %69, ptr noundef %70, ptr noundef %71, ptr noundef %73)
  store i32 %call65, ptr %retval1, align 4, !tbaa !14
  %74 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nfeDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %74, i32 0, i32 19
  %75 = load i64, ptr %nfeDQ, align 8, !tbaa !70
  %inc66 = add nsw i64 %75, 1
  store i64 %inc66, ptr %nfeDQ, align 8, !tbaa !70
  %76 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp67 = icmp ne i32 %76, 0
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end61
  br label %for.end

if.end70:                                         ; preds = %if.end61
  %77 = load double, ptr %yjsaved, align 8, !tbaa !62
  %78 = load ptr, ptr %y_data, align 8, !tbaa !4
  %79 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom71 = sext i32 %79 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %78, i64 %idxprom71
  store double %77, ptr %arrayidx72, align 8, !tbaa !62
  %80 = load double, ptr %inc, align 8, !tbaa !62
  %div73 = fdiv double 1.000000e+00, %80
  store double %div73, ptr %inc_inv, align 8, !tbaa !62
  %81 = load double, ptr %inc_inv, align 8, !tbaa !62
  %82 = load ptr, ptr %ftemp, align 8, !tbaa !4
  %83 = load double, ptr %inc_inv, align 8, !tbaa !62
  %fneg74 = fneg double %83
  %84 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %jthCol, align 8, !tbaa !4
  call void @N_VLinearSum(double noundef %81, ptr noundef %82, double noundef %fneg74, ptr noundef %84, ptr noundef %85)
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %86 = load i32, ptr %j, align 4, !tbaa !14
  %inc75 = add nsw i32 %86, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %if.then69, %for.cond
  %87 = load ptr, ptr %jthCol, align 8, !tbaa !4
  call void @N_VSetArrayPointer(ptr noundef null, ptr noundef %87)
  %88 = load ptr, ptr %jthCol, align 8, !tbaa !4
  call void @N_VDestroy(ptr noundef %88)
  %89 = load i32, ptr %retval1, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %jthCol) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ftemp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cns_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ewt_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %srur) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %yjsaved) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inc_inv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %minInc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm) #7
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @arkLsBandDQJac(double noundef %t, ptr noundef %y, ptr noundef %fy, ptr noundef %Jac, ptr noundef %ark_mem, ptr noundef %arkls_mem, ptr noundef %fi, ptr noundef %tmp1, ptr noundef %tmp2) #0 {
entry:
  %t.addr = alloca double, align 8
  %y.addr = alloca ptr, align 8
  %fy.addr = alloca ptr, align 8
  %Jac.addr = alloca ptr, align 8
  %ark_mem.addr = alloca ptr, align 8
  %arkls_mem.addr = alloca ptr, align 8
  %fi.addr = alloca ptr, align 8
  %tmp1.addr = alloca ptr, align 8
  %tmp2.addr = alloca ptr, align 8
  %ftemp = alloca ptr, align 8
  %ytemp = alloca ptr, align 8
  %fnorm = alloca double, align 8
  %minInc = alloca double, align 8
  %inc = alloca double, align 8
  %inc_inv = alloca double, align 8
  %srur = alloca double, align 8
  %conj = alloca double, align 8
  %col_j = alloca ptr, align 8
  %ewt_data = alloca ptr, align 8
  %fy_data = alloca ptr, align 8
  %ftemp_data = alloca ptr, align 8
  %y_data = alloca ptr, align 8
  %ytemp_data = alloca ptr, align 8
  %cns_data = alloca ptr, align 8
  %group = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %width = alloca i32, align 4
  %ngroups = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %N = alloca i32, align 4
  %mupper = alloca i32, align 4
  %mlower = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store double %t, ptr %t.addr, align 8, !tbaa !62
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %fy, ptr %fy.addr, align 8, !tbaa !4
  store ptr %Jac, ptr %Jac.addr, align 8, !tbaa !4
  store ptr %ark_mem, ptr %ark_mem.addr, align 8, !tbaa !4
  store ptr %arkls_mem, ptr %arkls_mem.addr, align 8, !tbaa !4
  store ptr %fi, ptr %fi.addr, align 8, !tbaa !4
  store ptr %tmp1, ptr %tmp1.addr, align 8, !tbaa !4
  store ptr %tmp2, ptr %tmp2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ftemp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ytemp) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %minInc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %inc) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %inc_inv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %srur) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ewt_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %fy_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ftemp_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %y_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ytemp_data) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cns_data) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %group) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ngroups) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %mupper) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %mlower) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #7
  store i32 0, ptr %retval1, align 4, !tbaa !14
  %0 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call = call i32 @SUNBandMatrix_Columns(ptr noundef %0)
  store i32 %call, ptr %N, align 4, !tbaa !14
  %1 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call2 = call i32 @SUNBandMatrix_UpperBandwidth(ptr noundef %1)
  store i32 %call2, ptr %mupper, align 4, !tbaa !14
  %2 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %call3 = call i32 @SUNBandMatrix_LowerBandwidth(ptr noundef %2)
  store i32 %call3, ptr %mlower, align 4, !tbaa !14
  %3 = load ptr, ptr %tmp1.addr, align 8, !tbaa !4
  store ptr %3, ptr %ftemp, align 8, !tbaa !4
  %4 = load ptr, ptr %tmp2.addr, align 8, !tbaa !4
  store ptr %4, ptr %ytemp, align 8, !tbaa !4
  %5 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %ewt = getelementptr inbounds %struct.ARKodeMemRec, ptr %5, i32 0, i32 32
  %6 = load ptr, ptr %ewt, align 8, !tbaa !69
  %call4 = call ptr @N_VGetArrayPointer(ptr noundef %6)
  store ptr %call4, ptr %ewt_data, align 8, !tbaa !4
  %7 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %call5 = call ptr @N_VGetArrayPointer(ptr noundef %7)
  store ptr %call5, ptr %fy_data, align 8, !tbaa !4
  %8 = load ptr, ptr %ftemp, align 8, !tbaa !4
  %call6 = call ptr @N_VGetArrayPointer(ptr noundef %8)
  store ptr %call6, ptr %ftemp_data, align 8, !tbaa !4
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call7 = call ptr @N_VGetArrayPointer(ptr noundef %9)
  store ptr %call7, ptr %y_data, align 8, !tbaa !4
  %10 = load ptr, ptr %ytemp, align 8, !tbaa !4
  %call8 = call ptr @N_VGetArrayPointer(ptr noundef %10)
  store ptr %call8, ptr %ytemp_data, align 8, !tbaa !4
  %11 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraintsSet = getelementptr inbounds %struct.ARKodeMemRec, ptr %11, i32 0, i32 18
  %12 = load i32, ptr %constraintsSet, align 8, !tbaa !138
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraints = getelementptr inbounds %struct.ARKodeMemRec, ptr %13, i32 0, i32 42
  %14 = load ptr, ptr %constraints, align 8, !tbaa !139
  %call9 = call ptr @N_VGetArrayPointer(ptr noundef %14)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call9, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %cns_data, align 8, !tbaa !4
  %15 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ytemp, align 8, !tbaa !4
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround = getelementptr inbounds %struct.ARKodeMemRec, ptr %17, i32 0, i32 1
  %18 = load double, ptr %uround, align 8, !tbaa !131
  %cmp = fcmp ole double %18, 0.000000e+00
  br i1 %cmp, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  br label %cond.end14

cond.false11:                                     ; preds = %cond.end
  %19 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround12 = getelementptr inbounds %struct.ARKodeMemRec, ptr %19, i32 0, i32 1
  %20 = load double, ptr %uround12, align 8, !tbaa !131
  %call13 = call double @sqrt(double noundef %20) #7
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.true10
  %cond15 = phi double [ 0.000000e+00, %cond.true10 ], [ %call13, %cond.false11 ]
  store double %cond15, ptr %srur, align 8, !tbaa !62
  %21 = load ptr, ptr %fy.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %rwt = getelementptr inbounds %struct.ARKodeMemRec, ptr %22, i32 0, i32 33
  %23 = load ptr, ptr %rwt, align 8, !tbaa !94
  %call16 = call double @N_VWrmsNorm(ptr noundef %21, ptr noundef %23)
  store double %call16, ptr %fnorm, align 8, !tbaa !62
  %24 = load double, ptr %fnorm, align 8, !tbaa !62
  %cmp17 = fcmp une double %24, 0.000000e+00
  br i1 %cmp17, label %cond.true18, label %cond.false23

cond.true18:                                      ; preds = %cond.end14
  %25 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %h = getelementptr inbounds %struct.ARKodeMemRec, ptr %25, i32 0, i32 48
  %26 = load double, ptr %h, align 8, !tbaa !140
  %27 = call double @llvm.fabs.f64(double %26)
  %mul = fmul double 1.000000e+03, %27
  %28 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %uround19 = getelementptr inbounds %struct.ARKodeMemRec, ptr %28, i32 0, i32 1
  %29 = load double, ptr %uround19, align 8, !tbaa !131
  %mul20 = fmul double %mul, %29
  %30 = load i32, ptr %N, align 4, !tbaa !14
  %conv = sitofp i32 %30 to double
  %mul21 = fmul double %mul20, %conv
  %31 = load double, ptr %fnorm, align 8, !tbaa !62
  %mul22 = fmul double %mul21, %31
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end14
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true18
  %cond25 = phi double [ %mul22, %cond.true18 ], [ 1.000000e+00, %cond.false23 ]
  store double %cond25, ptr %minInc, align 8, !tbaa !62
  %32 = load i32, ptr %mlower, align 4, !tbaa !14
  %33 = load i32, ptr %mupper, align 4, !tbaa !14
  %add = add nsw i32 %32, %33
  %add26 = add nsw i32 %add, 1
  store i32 %add26, ptr %width, align 4, !tbaa !14
  %34 = load i32, ptr %width, align 4, !tbaa !14
  %35 = load i32, ptr %N, align 4, !tbaa !14
  %cmp27 = icmp slt i32 %34, %35
  br i1 %cmp27, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end24
  %36 = load i32, ptr %width, align 4, !tbaa !14
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end24
  %37 = load i32, ptr %N, align 4, !tbaa !14
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %36, %cond.true29 ], [ %37, %cond.false30 ]
  store i32 %cond32, ptr %ngroups, align 4, !tbaa !14
  store i32 1, ptr %group, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc192, %cond.end31
  %38 = load i32, ptr %group, align 4, !tbaa !14
  %39 = load i32, ptr %ngroups, align 4, !tbaa !14
  %cmp33 = icmp sle i32 %38, %39
  br i1 %cmp33, label %for.body, label %for.end194

for.body:                                         ; preds = %for.cond
  %40 = load i32, ptr %group, align 4, !tbaa !14
  %sub = sub nsw i32 %40, 1
  store i32 %sub, ptr %j, align 4, !tbaa !14
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc, %for.body
  %41 = load i32, ptr %j, align 4, !tbaa !14
  %42 = load i32, ptr %N, align 4, !tbaa !14
  %cmp36 = icmp slt i32 %41, %42
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond35
  %43 = load double, ptr %srur, align 8, !tbaa !62
  %44 = load ptr, ptr %y_data, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom = sext i32 %45 to i64
  %arrayidx = getelementptr inbounds double, ptr %44, i64 %idxprom
  %46 = load double, ptr %arrayidx, align 8, !tbaa !62
  %47 = call double @llvm.fabs.f64(double %46)
  %mul39 = fmul double %43, %47
  %48 = load double, ptr %minInc, align 8, !tbaa !62
  %49 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %50 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds double, ptr %49, i64 %idxprom40
  %51 = load double, ptr %arrayidx41, align 8, !tbaa !62
  %div = fdiv double %48, %51
  %cmp42 = fcmp ogt double %mul39, %div
  br i1 %cmp42, label %cond.true44, label %cond.false48

cond.true44:                                      ; preds = %for.body38
  %52 = load double, ptr %srur, align 8, !tbaa !62
  %53 = load ptr, ptr %y_data, align 8, !tbaa !4
  %54 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %53, i64 %idxprom45
  %55 = load double, ptr %arrayidx46, align 8, !tbaa !62
  %56 = call double @llvm.fabs.f64(double %55)
  %mul47 = fmul double %52, %56
  br label %cond.end52

cond.false48:                                     ; preds = %for.body38
  %57 = load double, ptr %minInc, align 8, !tbaa !62
  %58 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %59 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom49 = sext i32 %59 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %58, i64 %idxprom49
  %60 = load double, ptr %arrayidx50, align 8, !tbaa !62
  %div51 = fdiv double %57, %60
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false48, %cond.true44
  %cond53 = phi double [ %mul47, %cond.true44 ], [ %div51, %cond.false48 ]
  store double %cond53, ptr %inc, align 8, !tbaa !62
  %61 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraintsSet54 = getelementptr inbounds %struct.ARKodeMemRec, ptr %61, i32 0, i32 18
  %62 = load i32, ptr %constraintsSet54, align 8, !tbaa !138
  %tobool55 = icmp ne i32 %62, 0
  br i1 %tobool55, label %if.then, label %if.end82

if.then:                                          ; preds = %cond.end52
  %63 = load ptr, ptr %cns_data, align 8, !tbaa !4
  %64 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom56 = sext i32 %64 to i64
  %arrayidx57 = getelementptr inbounds double, ptr %63, i64 %idxprom56
  %65 = load double, ptr %arrayidx57, align 8, !tbaa !62
  store double %65, ptr %conj, align 8, !tbaa !62
  %66 = load double, ptr %conj, align 8, !tbaa !62
  %67 = call double @llvm.fabs.f64(double %66)
  %cmp58 = fcmp oeq double %67, 1.000000e+00
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.then
  %68 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %69 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom61 = sext i32 %69 to i64
  %arrayidx62 = getelementptr inbounds double, ptr %68, i64 %idxprom61
  %70 = load double, ptr %arrayidx62, align 8, !tbaa !62
  %71 = load double, ptr %inc, align 8, !tbaa !62
  %add63 = fadd double %70, %71
  %72 = load double, ptr %conj, align 8, !tbaa !62
  %mul64 = fmul double %add63, %72
  %cmp65 = fcmp olt double %mul64, 0.000000e+00
  br i1 %cmp65, label %if.then67, label %if.end

if.then67:                                        ; preds = %if.then60
  %73 = load double, ptr %inc, align 8, !tbaa !62
  %fneg = fneg double %73
  store double %fneg, ptr %inc, align 8, !tbaa !62
  br label %if.end

if.end:                                           ; preds = %if.then67, %if.then60
  br label %if.end81

if.else:                                          ; preds = %if.then
  %74 = load double, ptr %conj, align 8, !tbaa !62
  %75 = call double @llvm.fabs.f64(double %74)
  %cmp68 = fcmp oeq double %75, 2.000000e+00
  br i1 %cmp68, label %if.then70, label %if.end80

if.then70:                                        ; preds = %if.else
  %76 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %77 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom71 = sext i32 %77 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %76, i64 %idxprom71
  %78 = load double, ptr %arrayidx72, align 8, !tbaa !62
  %79 = load double, ptr %inc, align 8, !tbaa !62
  %add73 = fadd double %78, %79
  %80 = load double, ptr %conj, align 8, !tbaa !62
  %mul74 = fmul double %add73, %80
  %cmp75 = fcmp ole double %mul74, 0.000000e+00
  br i1 %cmp75, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.then70
  %81 = load double, ptr %inc, align 8, !tbaa !62
  %fneg78 = fneg double %81
  store double %fneg78, ptr %inc, align 8, !tbaa !62
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.then70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.else
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %cond.end52
  %82 = load double, ptr %inc, align 8, !tbaa !62
  %83 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %84 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom83 = sext i32 %84 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %83, i64 %idxprom83
  %85 = load double, ptr %arrayidx84, align 8, !tbaa !62
  %add85 = fadd double %85, %82
  store double %add85, ptr %arrayidx84, align 8, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %if.end82
  %86 = load i32, ptr %width, align 4, !tbaa !14
  %87 = load i32, ptr %j, align 4, !tbaa !14
  %add86 = add nsw i32 %87, %86
  store i32 %add86, ptr %j, align 4, !tbaa !14
  br label %for.cond35

for.end:                                          ; preds = %for.cond35
  %88 = load ptr, ptr %fi.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %tcur = getelementptr inbounds %struct.ARKodeMemRec, ptr %89, i32 0, i32 54
  %90 = load double, ptr %tcur, align 8, !tbaa !133
  %91 = load ptr, ptr %ytemp, align 8, !tbaa !4
  %92 = load ptr, ptr %ftemp, align 8, !tbaa !4
  %93 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.ARKodeMemRec, ptr %93, i32 0, i32 2
  %94 = load ptr, ptr %user_data, align 8, !tbaa !49
  %call87 = call i32 %88(double noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %94)
  store i32 %call87, ptr %retval1, align 4, !tbaa !14
  %95 = load ptr, ptr %arkls_mem.addr, align 8, !tbaa !4
  %nfeDQ = getelementptr inbounds %struct.ARKLsMemRec, ptr %95, i32 0, i32 19
  %96 = load i64, ptr %nfeDQ, align 8, !tbaa !70
  %inc88 = add nsw i64 %96, 1
  store i64 %inc88, ptr %nfeDQ, align 8, !tbaa !70
  %97 = load i32, ptr %retval1, align 4, !tbaa !14
  %cmp89 = icmp ne i32 %97, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.end
  br label %for.end194

if.end92:                                         ; preds = %for.end
  %98 = load i32, ptr %group, align 4, !tbaa !14
  %sub93 = sub nsw i32 %98, 1
  store i32 %sub93, ptr %j, align 4, !tbaa !14
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc189, %if.end92
  %99 = load i32, ptr %j, align 4, !tbaa !14
  %100 = load i32, ptr %N, align 4, !tbaa !14
  %cmp95 = icmp slt i32 %99, %100
  br i1 %cmp95, label %for.body97, label %for.end191

for.body97:                                       ; preds = %for.cond94
  %101 = load ptr, ptr %y_data, align 8, !tbaa !4
  %102 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom98 = sext i32 %102 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %101, i64 %idxprom98
  %103 = load double, ptr %arrayidx99, align 8, !tbaa !62
  %104 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %105 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom100 = sext i32 %105 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %104, i64 %idxprom100
  store double %103, ptr %arrayidx101, align 8, !tbaa !62
  %106 = load ptr, ptr %Jac.addr, align 8, !tbaa !4
  %107 = load i32, ptr %j, align 4, !tbaa !14
  %call102 = call ptr @SUNBandMatrix_Column(ptr noundef %106, i32 noundef %107)
  store ptr %call102, ptr %col_j, align 8, !tbaa !4
  %108 = load double, ptr %srur, align 8, !tbaa !62
  %109 = load ptr, ptr %y_data, align 8, !tbaa !4
  %110 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom103 = sext i32 %110 to i64
  %arrayidx104 = getelementptr inbounds double, ptr %109, i64 %idxprom103
  %111 = load double, ptr %arrayidx104, align 8, !tbaa !62
  %112 = call double @llvm.fabs.f64(double %111)
  %mul105 = fmul double %108, %112
  %113 = load double, ptr %minInc, align 8, !tbaa !62
  %114 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %115 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom106 = sext i32 %115 to i64
  %arrayidx107 = getelementptr inbounds double, ptr %114, i64 %idxprom106
  %116 = load double, ptr %arrayidx107, align 8, !tbaa !62
  %div108 = fdiv double %113, %116
  %cmp109 = fcmp ogt double %mul105, %div108
  br i1 %cmp109, label %cond.true111, label %cond.false115

cond.true111:                                     ; preds = %for.body97
  %117 = load double, ptr %srur, align 8, !tbaa !62
  %118 = load ptr, ptr %y_data, align 8, !tbaa !4
  %119 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom112 = sext i32 %119 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %118, i64 %idxprom112
  %120 = load double, ptr %arrayidx113, align 8, !tbaa !62
  %121 = call double @llvm.fabs.f64(double %120)
  %mul114 = fmul double %117, %121
  br label %cond.end119

cond.false115:                                    ; preds = %for.body97
  %122 = load double, ptr %minInc, align 8, !tbaa !62
  %123 = load ptr, ptr %ewt_data, align 8, !tbaa !4
  %124 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom116 = sext i32 %124 to i64
  %arrayidx117 = getelementptr inbounds double, ptr %123, i64 %idxprom116
  %125 = load double, ptr %arrayidx117, align 8, !tbaa !62
  %div118 = fdiv double %122, %125
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false115, %cond.true111
  %cond120 = phi double [ %mul114, %cond.true111 ], [ %div118, %cond.false115 ]
  store double %cond120, ptr %inc, align 8, !tbaa !62
  %126 = load ptr, ptr %ark_mem.addr, align 8, !tbaa !4
  %constraintsSet121 = getelementptr inbounds %struct.ARKodeMemRec, ptr %126, i32 0, i32 18
  %127 = load i32, ptr %constraintsSet121, align 8, !tbaa !138
  %tobool122 = icmp ne i32 %127, 0
  br i1 %tobool122, label %if.then123, label %if.end153

if.then123:                                       ; preds = %cond.end119
  %128 = load ptr, ptr %cns_data, align 8, !tbaa !4
  %129 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom124 = sext i32 %129 to i64
  %arrayidx125 = getelementptr inbounds double, ptr %128, i64 %idxprom124
  %130 = load double, ptr %arrayidx125, align 8, !tbaa !62
  store double %130, ptr %conj, align 8, !tbaa !62
  %131 = load double, ptr %conj, align 8, !tbaa !62
  %132 = call double @llvm.fabs.f64(double %131)
  %cmp126 = fcmp oeq double %132, 1.000000e+00
  br i1 %cmp126, label %if.then128, label %if.else138

if.then128:                                       ; preds = %if.then123
  %133 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %134 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom129 = sext i32 %134 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %133, i64 %idxprom129
  %135 = load double, ptr %arrayidx130, align 8, !tbaa !62
  %136 = load double, ptr %inc, align 8, !tbaa !62
  %add131 = fadd double %135, %136
  %137 = load double, ptr %conj, align 8, !tbaa !62
  %mul132 = fmul double %add131, %137
  %cmp133 = fcmp olt double %mul132, 0.000000e+00
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then128
  %138 = load double, ptr %inc, align 8, !tbaa !62
  %fneg136 = fneg double %138
  store double %fneg136, ptr %inc, align 8, !tbaa !62
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then128
  br label %if.end152

if.else138:                                       ; preds = %if.then123
  %139 = load double, ptr %conj, align 8, !tbaa !62
  %140 = call double @llvm.fabs.f64(double %139)
  %cmp139 = fcmp oeq double %140, 2.000000e+00
  br i1 %cmp139, label %if.then141, label %if.end151

if.then141:                                       ; preds = %if.else138
  %141 = load ptr, ptr %ytemp_data, align 8, !tbaa !4
  %142 = load i32, ptr %j, align 4, !tbaa !14
  %idxprom142 = sext i32 %142 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %141, i64 %idxprom142
  %143 = load double, ptr %arrayidx143, align 8, !tbaa !62
  %144 = load double, ptr %inc, align 8, !tbaa !62
  %add144 = fadd double %143, %144
  %145 = load double, ptr %conj, align 8, !tbaa !62
  %mul145 = fmul double %add144, %145
  %cmp146 = fcmp ole double %mul145, 0.000000e+00
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.then141
  %146 = load double, ptr %inc, align 8, !tbaa !62
  %fneg149 = fneg double %146
  store double %fneg149, ptr %inc, align 8, !tbaa !62
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.then141
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.else138
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end137
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %cond.end119
  %147 = load double, ptr %inc, align 8, !tbaa !62
  %div154 = fdiv double 1.000000e+00, %147
  store double %div154, ptr %inc_inv, align 8, !tbaa !62
  %148 = load i32, ptr %j, align 4, !tbaa !14
  %149 = load i32, ptr %mupper, align 4, !tbaa !14
  %sub155 = sub nsw i32 %148, %149
  %cmp156 = icmp sgt i32 0, %sub155
  br i1 %cmp156, label %cond.true158, label %cond.false159

cond.true158:                                     ; preds = %if.end153
  br label %cond.end161

cond.false159:                                    ; preds = %if.end153
  %150 = load i32, ptr %j, align 4, !tbaa !14
  %151 = load i32, ptr %mupper, align 4, !tbaa !14
  %sub160 = sub nsw i32 %150, %151
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false159, %cond.true158
  %cond162 = phi i32 [ 0, %cond.true158 ], [ %sub160, %cond.false159 ]
  store i32 %cond162, ptr %i1, align 4, !tbaa !14
  %152 = load i32, ptr %j, align 4, !tbaa !14
  %153 = load i32, ptr %mlower, align 4, !tbaa !14
  %add163 = add nsw i32 %152, %153
  %154 = load i32, ptr %N, align 4, !tbaa !14
  %sub164 = sub nsw i32 %154, 1
  %cmp165 = icmp slt i32 %add163, %sub164
  br i1 %cmp165, label %cond.true167, label %cond.false169

cond.true167:                                     ; preds = %cond.end161
  %155 = load i32, ptr %j, align 4, !tbaa !14
  %156 = load i32, ptr %mlower, align 4, !tbaa !14
  %add168 = add nsw i32 %155, %156
  br label %cond.end171

cond.false169:                                    ; preds = %cond.end161
  %157 = load i32, ptr %N, align 4, !tbaa !14
  %sub170 = sub nsw i32 %157, 1
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false169, %cond.true167
  %cond172 = phi i32 [ %add168, %cond.true167 ], [ %sub170, %cond.false169 ]
  store i32 %cond172, ptr %i2, align 4, !tbaa !14
  %158 = load i32, ptr %i1, align 4, !tbaa !14
  store i32 %158, ptr %i, align 4, !tbaa !14
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc186, %cond.end171
  %159 = load i32, ptr %i, align 4, !tbaa !14
  %160 = load i32, ptr %i2, align 4, !tbaa !14
  %cmp174 = icmp sle i32 %159, %160
  br i1 %cmp174, label %for.body176, label %for.end188

for.body176:                                      ; preds = %for.cond173
  %161 = load double, ptr %inc_inv, align 8, !tbaa !62
  %162 = load ptr, ptr %ftemp_data, align 8, !tbaa !4
  %163 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom177 = sext i32 %163 to i64
  %arrayidx178 = getelementptr inbounds double, ptr %162, i64 %idxprom177
  %164 = load double, ptr %arrayidx178, align 8, !tbaa !62
  %165 = load ptr, ptr %fy_data, align 8, !tbaa !4
  %166 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom179 = sext i32 %166 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %165, i64 %idxprom179
  %167 = load double, ptr %arrayidx180, align 8, !tbaa !62
  %sub181 = fsub double %164, %167
  %mul182 = fmul double %161, %sub181
  %168 = load ptr, ptr %col_j, align 8, !tbaa !4
  %169 = load i32, ptr %i, align 4, !tbaa !14
  %170 = load i32, ptr %j, align 4, !tbaa !14
  %sub183 = sub nsw i32 %169, %170
  %idxprom184 = sext i32 %sub183 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %168, i64 %idxprom184
  store double %mul182, ptr %arrayidx185, align 8, !tbaa !62
  br label %for.inc186

for.inc186:                                       ; preds = %for.body176
  %171 = load i32, ptr %i, align 4, !tbaa !14
  %inc187 = add nsw i32 %171, 1
  store i32 %inc187, ptr %i, align 4, !tbaa !14
  br label %for.cond173

for.end188:                                       ; preds = %for.cond173
  br label %for.inc189

for.inc189:                                       ; preds = %for.end188
  %172 = load i32, ptr %width, align 4, !tbaa !14
  %173 = load i32, ptr %j, align 4, !tbaa !14
  %add190 = add nsw i32 %173, %172
  store i32 %add190, ptr %j, align 4, !tbaa !14
  br label %for.cond94

for.end191:                                       ; preds = %for.cond94
  br label %for.inc192

for.inc192:                                       ; preds = %for.end191
  %174 = load i32, ptr %group, align 4, !tbaa !14
  %inc193 = add nsw i32 %174, 1
  store i32 %inc193, ptr %group, align 4, !tbaa !14
  br label %for.cond

for.end194:                                       ; preds = %if.then91, %for.cond
  %175 = load i32, ptr %retval1, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %mlower) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %mupper) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ngroups) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %group) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cns_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ytemp_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %y_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ftemp_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fy_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ewt_data) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conj) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %srur) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inc_inv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %inc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %minInc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ytemp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ftemp) #7
  ret i32 %175
}

declare i32 @SUNDenseMatrix_Columns(ptr noundef) #2

declare ptr @N_VCloneEmpty(ptr noundef) #2

declare ptr @N_VGetArrayPointer(ptr noundef) #2

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare void @N_VSetArrayPointer(ptr noundef, ptr noundef) #2

declare ptr @SUNDenseMatrix_Column(ptr noundef, i32 noundef) #2

declare i32 @SUNBandMatrix_Columns(ptr noundef) #2

declare i32 @SUNBandMatrix_UpperBandwidth(ptr noundef) #2

declare i32 @SUNBandMatrix_LowerBandwidth(ptr noundef) #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) #2

declare ptr @SUNBandMatrix_Column(ptr noundef, i32 noundef) #2

declare i32 @SUNLinSolInitialize(ptr noundef) #2

declare i32 @SUNLinSolSetup(ptr noundef, ptr noundef) #2

declare i32 @SUNLinSolSetScalingVectors(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @SUNLinSolSetZeroGuess(ptr noundef, i32 noundef) #2

declare i32 @SUNLinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef) #2

declare double @SUNLinSolResNorm(ptr noundef) #2

declare i32 @SUNLinSolNumIters(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @SUNMatZero(ptr noundef) #2

declare i32 @SUNMatCopy(ptr noundef, ptr noundef) #2

declare i32 @SUNMatMatvecSetup(ptr noundef) #2

declare i32 @SUNMatScaleAddI(double noundef, ptr noundef) #2

declare i32 @SUNMatScaleAdd(double noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"_generic_SUNLinearSolver", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 0}
!11 = !{!"_generic_SUNLinearSolver_Ops", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112}
!12 = !{!11, !5, i64 64}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !5, i64 288}
!17 = !{!"ARKodeMemRec", !5, i64 0, !18, i64 8, !5, i64 16, !15, i64 24, !15, i64 28, !18, i64 32, !18, i64 40, !5, i64 48, !15, i64 56, !18, i64 64, !5, i64 72, !15, i64 80, !15, i64 84, !5, i64 88, !5, i64 96, !15, i64 104, !5, i64 112, !5, i64 120, !15, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !15, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !15, i64 336, !15, i64 340, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !15, i64 424, !5, i64 432, !19, i64 440, !15, i64 448, !15, i64 452, !15, i64 456, !15, i64 460, !19, i64 464, !19, i64 472, !15, i64 480, !19, i64 488, !19, i64 496, !19, i64 504, !15, i64 512, !5, i64 520, !15, i64 528, !15, i64 532, !19, i64 536, !19, i64 544, !18, i64 552, !18, i64 560, !18, i64 568, !18, i64 576, !18, i64 584, !15, i64 592, !15, i64 596, !15, i64 600, !15, i64 604, !15, i64 608, !15, i64 612, !15, i64 616, !15, i64 620, !5, i64 624, !5, i64 632, !5, i64 640, !5, i64 648, !15, i64 656, !5, i64 664, !5, i64 672, !5, i64 680, !5, i64 688, !15, i64 696, !15, i64 700, !15, i64 704}
!18 = !{!"double", !6, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !5, i64 8}
!21 = !{!"_generic_N_Vector", !5, i64 0, !5, i64 8, !5, i64 16}
!22 = !{!23, !5, i64 96}
!23 = !{!"_generic_N_Vector_Ops", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440}
!24 = !{!23, !5, i64 168}
!25 = !{!23, !5, i64 72}
!26 = !{!11, !5, i64 16}
!27 = !{!17, !5, i64 136}
!28 = !{!17, !5, i64 168}
!29 = !{!17, !5, i64 184}
!30 = !{!17, !5, i64 200}
!31 = !{!32, !5, i64 56}
!32 = !{!"ARKLsMemRec", !15, i64 0, !15, i64 4, !15, i64 8, !5, i64 16, !5, i64 24, !15, i64 32, !15, i64 36, !18, i64 40, !18, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !19, i64 112, !18, i64 120, !19, i64 128, !19, i64 136, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !19, i64 176, !19, i64 184, !19, i64 192, !18, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !15, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !15, i64 280, !5, i64 288, !5, i64 296, !15, i64 304}
!33 = !{!32, !15, i64 0}
!34 = !{!32, !15, i64 4}
!35 = !{!32, !15, i64 8}
!36 = !{!32, !5, i64 16}
!37 = !{!32, !5, i64 24}
!38 = !{!32, !15, i64 240}
!39 = !{!32, !5, i64 248}
!40 = !{!32, !5, i64 256}
!41 = !{!32, !5, i64 272}
!42 = !{!32, !5, i64 264}
!43 = !{!32, !15, i64 280}
!44 = !{!32, !5, i64 288}
!45 = !{!32, !5, i64 296}
!46 = !{!32, !5, i64 208}
!47 = !{!32, !5, i64 216}
!48 = !{!32, !5, i64 224}
!49 = !{!17, !5, i64 16}
!50 = !{!32, !5, i64 232}
!51 = !{!32, !19, i64 112}
!52 = !{!32, !15, i64 32}
!53 = !{!32, !18, i64 40}
!54 = !{!32, !15, i64 304}
!55 = !{!11, !5, i64 24}
!56 = !{!32, !5, i64 64}
!57 = !{!32, !5, i64 72}
!58 = !{!32, !5, i64 80}
!59 = !{!32, !18, i64 48}
!60 = !{!32, !15, i64 36}
!61 = !{!32, !5, i64 88}
!62 = !{!18, !18, i64 0}
!63 = !{!23, !5, i64 16}
!64 = !{!23, !5, i64 88}
!65 = !{!23, !5, i64 24}
!66 = !{!23, !5, i64 120}
!67 = !{!23, !5, i64 40}
!68 = !{!23, !5, i64 56}
!69 = !{!17, !5, i64 240}
!70 = !{!32, !19, i64 136}
!71 = !{!32, !19, i64 128}
!72 = !{!32, !19, i64 144}
!73 = !{!32, !19, i64 152}
!74 = !{!32, !19, i64 160}
!75 = !{!32, !19, i64 168}
!76 = !{!32, !19, i64 176}
!77 = !{!32, !19, i64 184}
!78 = !{!32, !19, i64 192}
!79 = !{!17, !5, i64 176}
!80 = !{!32, !18, i64 120}
!81 = !{!32, !5, i64 96}
!82 = !{!32, !5, i64 104}
!83 = !{!84, !5, i64 8}
!84 = !{!"_generic_SUNMatrix", !5, i64 0, !5, i64 8, !5, i64 16}
!85 = !{!86, !5, i64 0}
!86 = !{!"_generic_SUNMatrix_Ops", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72}
!87 = !{!88, !5, i64 16}
!88 = !{!"ARKLsMassMemRec", !15, i64 0, !15, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !18, i64 40, !18, i64 48, !15, i64 56, !18, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !19, i64 128, !19, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !15, i64 224}
!89 = !{!88, !5, i64 144}
!90 = !{!17, !5, i64 152}
!91 = !{!17, !15, i64 604}
!92 = !{!17, !19, i64 472}
!93 = !{!32, !18, i64 200}
!94 = !{!17, !5, i64 248}
!95 = !{!11, !5, i64 32}
!96 = !{!19, !19, i64 0}
!97 = !{!11, !5, i64 80}
!98 = !{!11, !5, i64 72}
!99 = !{!17, !15, i64 512}
!100 = !{!17, !5, i64 520}
!101 = !{!17, !5, i64 144}
!102 = !{!88, !15, i64 0}
!103 = !{!88, !15, i64 4}
!104 = !{!88, !15, i64 56}
!105 = !{!88, !5, i64 8}
!106 = !{!88, !5, i64 32}
!107 = !{!88, !5, i64 200}
!108 = !{!88, !5, i64 208}
!109 = !{!88, !5, i64 216}
!110 = !{!88, !5, i64 168}
!111 = !{!88, !5, i64 176}
!112 = !{!88, !5, i64 184}
!113 = !{!88, !5, i64 192}
!114 = !{!88, !18, i64 40}
!115 = !{!88, !15, i64 224}
!116 = !{!88, !5, i64 24}
!117 = !{!88, !5, i64 152}
!118 = !{!88, !18, i64 48}
!119 = !{!88, !19, i64 72}
!120 = !{!88, !19, i64 80}
!121 = !{!88, !19, i64 88}
!122 = !{!88, !19, i64 96}
!123 = !{!88, !19, i64 104}
!124 = !{!88, !19, i64 112}
!125 = !{!88, !19, i64 120}
!126 = !{!88, !19, i64 128}
!127 = !{!88, !19, i64 136}
!128 = !{!88, !18, i64 64}
!129 = !{!86, !5, i64 64}
!130 = !{!17, !5, i64 160}
!131 = !{!17, !18, i64 8}
!132 = !{!86, !5, i64 56}
!133 = !{!17, !18, i64 408}
!134 = !{!88, !5, i64 160}
!135 = !{!23, !5, i64 32}
!136 = !{!86, !5, i64 72}
!137 = !{!11, !5, i64 96}
!138 = !{!17, !15, i64 128}
!139 = !{!17, !5, i64 320}
!140 = !{!17, !18, i64 360}
