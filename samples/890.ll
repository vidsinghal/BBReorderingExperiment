; ModuleID = 'samples/890.bc'
source_filename = "HYPRE_ams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_Error = type { i32, i32, ptr, i32, i32 }

@hypre__global_error = external global %struct.hypre_Error, align 8

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSCreate(ptr noundef %solver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  %call = call ptr @hypre_AMSCreate()
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  store ptr %call, ptr %0, align 8, !tbaa !4
  %1 = load i32, ptr @hypre__global_error, align 8, !tbaa !8
  ret i32 %1
}

declare ptr @hypre_AMSCreate() #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSDestroy(ptr noundef %solver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSDestroy(ptr noundef %0)
  ret i32 %call
}

declare i32 @hypre_AMSDestroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetup(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_AMSSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSolve(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_AMSSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetDimension(ptr noundef %solver, i32 noundef %dim) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %dim.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %dim, ptr %dim.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %dim.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetDimension(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetDimension(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetDiscreteGradient(ptr noundef %solver, ptr noundef %G) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %G.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetDiscreteGradient(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetDiscreteGradient(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetCoordinateVectors(ptr noundef %solver, ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %z, ptr %z.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %z.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetCoordinateVectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_AMSSetCoordinateVectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetEdgeConstantVectors(ptr noundef %solver, ptr noundef %Gx, ptr noundef %Gy, ptr noundef %Gz) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %Gx.addr = alloca ptr, align 8
  %Gy.addr = alloca ptr, align 8
  %Gz.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %Gx, ptr %Gx.addr, align 8, !tbaa !4
  store ptr %Gy, ptr %Gy.addr, align 8, !tbaa !4
  store ptr %Gz, ptr %Gz.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Gx.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %Gy.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %Gz.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetEdgeConstantVectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_AMSSetEdgeConstantVectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetInterpolations(ptr noundef %solver, ptr noundef %Pi, ptr noundef %Pix, ptr noundef %Piy, ptr noundef %Piz) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %Pi.addr = alloca ptr, align 8
  %Pix.addr = alloca ptr, align 8
  %Piy.addr = alloca ptr, align 8
  %Piz.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %Pi, ptr %Pi.addr, align 8, !tbaa !4
  store ptr %Pix, ptr %Pix.addr, align 8, !tbaa !4
  store ptr %Piy, ptr %Piy.addr, align 8, !tbaa !4
  store ptr %Piz, ptr %Piz.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %Pi.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %Pix.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %Piy.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %Piz.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetInterpolations(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %call
}

declare i32 @hypre_AMSSetInterpolations(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetAlphaPoissonMatrix(ptr noundef %solver, ptr noundef %A_alpha) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A_alpha.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A_alpha, ptr %A_alpha.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A_alpha.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetAlphaPoissonMatrix(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetAlphaPoissonMatrix(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetBetaPoissonMatrix(ptr noundef %solver, ptr noundef %A_beta) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A_beta.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A_beta, ptr %A_beta.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A_beta.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetBetaPoissonMatrix(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetBetaPoissonMatrix(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetInteriorNodes(ptr noundef %solver, ptr noundef %interior_nodes) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %interior_nodes.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %interior_nodes, ptr %interior_nodes.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %interior_nodes.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSSetInteriorNodes(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetInteriorNodes(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetProjectionFrequency(ptr noundef %solver, i32 noundef %projection_frequency) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %projection_frequency.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %projection_frequency, ptr %projection_frequency.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %projection_frequency.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetProjectionFrequency(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetProjectionFrequency(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetMaxIter(ptr noundef %solver, i32 noundef %maxit) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %maxit.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %maxit, ptr %maxit.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %maxit.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetMaxIter(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetMaxIter(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetTol(ptr noundef %solver, double noundef %tol) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load double, ptr %tol.addr, align 8, !tbaa !12
  %call = call i32 @hypre_AMSSetTol(ptr noundef %0, double noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetTol(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetCycleType(ptr noundef %solver, i32 noundef %cycle_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %cycle_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %cycle_type, ptr %cycle_type.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %cycle_type.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetCycleType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetCycleType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetPrintLevel(ptr noundef %solver, i32 noundef %print_level) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %print_level.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %print_level, ptr %print_level.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %print_level.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetPrintLevel(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetPrintLevel(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetSmoothingOptions(ptr noundef %solver, i32 noundef %relax_type, i32 noundef %relax_times, double noundef %relax_weight, double noundef %omega) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %relax_type.addr = alloca i32, align 4
  %relax_times.addr = alloca i32, align 4
  %relax_weight.addr = alloca double, align 8
  %omega.addr = alloca double, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %relax_type, ptr %relax_type.addr, align 4, !tbaa !11
  store i32 %relax_times, ptr %relax_times.addr, align 4, !tbaa !11
  store double %relax_weight, ptr %relax_weight.addr, align 8, !tbaa !12
  store double %omega, ptr %omega.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %relax_type.addr, align 4, !tbaa !11
  %2 = load i32, ptr %relax_times.addr, align 4, !tbaa !11
  %3 = load double, ptr %relax_weight.addr, align 8, !tbaa !12
  %4 = load double, ptr %omega.addr, align 8, !tbaa !12
  %call = call i32 @hypre_AMSSetSmoothingOptions(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4)
  ret i32 %call
}

declare i32 @hypre_AMSSetSmoothingOptions(ptr noundef, i32 noundef, i32 noundef, double noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetChebySmoothingOptions(ptr noundef %solver, i32 noundef %cheby_order, double noundef %cheby_fraction) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %cheby_order.addr = alloca i32, align 4
  %cheby_fraction.addr = alloca double, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %cheby_order, ptr %cheby_order.addr, align 4, !tbaa !11
  store double %cheby_fraction, ptr %cheby_fraction.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %cheby_order.addr, align 4, !tbaa !11
  %2 = load double, ptr %cheby_fraction.addr, align 8, !tbaa !12
  %call = call i32 @hypre_AMSSetChebySmoothingOptions(ptr noundef %0, i32 noundef %1, double noundef %2)
  ret i32 %call
}

declare i32 @hypre_AMSSetChebySmoothingOptions(ptr noundef, i32 noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetAlphaAMGOptions(ptr noundef %solver, i32 noundef %alpha_coarsen_type, i32 noundef %alpha_agg_levels, i32 noundef %alpha_relax_type, double noundef %alpha_strength_threshold, i32 noundef %alpha_interp_type, i32 noundef %alpha_Pmax) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %alpha_coarsen_type.addr = alloca i32, align 4
  %alpha_agg_levels.addr = alloca i32, align 4
  %alpha_relax_type.addr = alloca i32, align 4
  %alpha_strength_threshold.addr = alloca double, align 8
  %alpha_interp_type.addr = alloca i32, align 4
  %alpha_Pmax.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %alpha_coarsen_type, ptr %alpha_coarsen_type.addr, align 4, !tbaa !11
  store i32 %alpha_agg_levels, ptr %alpha_agg_levels.addr, align 4, !tbaa !11
  store i32 %alpha_relax_type, ptr %alpha_relax_type.addr, align 4, !tbaa !11
  store double %alpha_strength_threshold, ptr %alpha_strength_threshold.addr, align 8, !tbaa !12
  store i32 %alpha_interp_type, ptr %alpha_interp_type.addr, align 4, !tbaa !11
  store i32 %alpha_Pmax, ptr %alpha_Pmax.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %alpha_coarsen_type.addr, align 4, !tbaa !11
  %2 = load i32, ptr %alpha_agg_levels.addr, align 4, !tbaa !11
  %3 = load i32, ptr %alpha_relax_type.addr, align 4, !tbaa !11
  %4 = load double, ptr %alpha_strength_threshold.addr, align 8, !tbaa !12
  %5 = load i32, ptr %alpha_interp_type.addr, align 4, !tbaa !11
  %6 = load i32, ptr %alpha_Pmax.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetAlphaAMGOptions(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6)
  ret i32 %call
}

declare i32 @hypre_AMSSetAlphaAMGOptions(ptr noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetAlphaAMGCoarseRelaxType(ptr noundef %solver, i32 noundef %alpha_coarse_relax_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %alpha_coarse_relax_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %alpha_coarse_relax_type, ptr %alpha_coarse_relax_type.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %alpha_coarse_relax_type.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetAlphaAMGCoarseRelaxType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetAlphaAMGCoarseRelaxType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetBetaAMGOptions(ptr noundef %solver, i32 noundef %beta_coarsen_type, i32 noundef %beta_agg_levels, i32 noundef %beta_relax_type, double noundef %beta_strength_threshold, i32 noundef %beta_interp_type, i32 noundef %beta_Pmax) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %beta_coarsen_type.addr = alloca i32, align 4
  %beta_agg_levels.addr = alloca i32, align 4
  %beta_relax_type.addr = alloca i32, align 4
  %beta_strength_threshold.addr = alloca double, align 8
  %beta_interp_type.addr = alloca i32, align 4
  %beta_Pmax.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %beta_coarsen_type, ptr %beta_coarsen_type.addr, align 4, !tbaa !11
  store i32 %beta_agg_levels, ptr %beta_agg_levels.addr, align 4, !tbaa !11
  store i32 %beta_relax_type, ptr %beta_relax_type.addr, align 4, !tbaa !11
  store double %beta_strength_threshold, ptr %beta_strength_threshold.addr, align 8, !tbaa !12
  store i32 %beta_interp_type, ptr %beta_interp_type.addr, align 4, !tbaa !11
  store i32 %beta_Pmax, ptr %beta_Pmax.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %beta_coarsen_type.addr, align 4, !tbaa !11
  %2 = load i32, ptr %beta_agg_levels.addr, align 4, !tbaa !11
  %3 = load i32, ptr %beta_relax_type.addr, align 4, !tbaa !11
  %4 = load double, ptr %beta_strength_threshold.addr, align 8, !tbaa !12
  %5 = load i32, ptr %beta_interp_type.addr, align 4, !tbaa !11
  %6 = load i32, ptr %beta_Pmax.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetBetaAMGOptions(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6)
  ret i32 %call
}

declare i32 @hypre_AMSSetBetaAMGOptions(ptr noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSSetBetaAMGCoarseRelaxType(ptr noundef %solver, i32 noundef %beta_coarse_relax_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %beta_coarse_relax_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %beta_coarse_relax_type, ptr %beta_coarse_relax_type.addr, align 4, !tbaa !11
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %beta_coarse_relax_type.addr, align 4, !tbaa !11
  %call = call i32 @hypre_AMSSetBetaAMGCoarseRelaxType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSSetBetaAMGCoarseRelaxType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSGetNumIterations(ptr noundef %solver, ptr noundef %num_iterations) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %num_iterations.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %num_iterations, ptr %num_iterations.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %num_iterations.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSGetNumIterations(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSGetNumIterations(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSGetFinalRelativeResidualNorm(ptr noundef %solver, ptr noundef %rel_resid_norm) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %rel_resid_norm.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %rel_resid_norm, ptr %rel_resid_norm.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %rel_resid_norm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSGetFinalRelativeResidualNorm(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSProjectOutGradients(ptr noundef %solver, ptr noundef %x) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSProjectOutGradients(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_AMSProjectOutGradients(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSConstructDiscreteGradient(ptr noundef %A, ptr noundef %x_coord, ptr noundef %edge_vertex, i32 noundef %edge_orientation, ptr noundef %G) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %x_coord.addr = alloca ptr, align 8
  %edge_vertex.addr = alloca ptr, align 8
  %edge_orientation.addr = alloca i32, align 4
  %G.addr = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %x_coord, ptr %x_coord.addr, align 8, !tbaa !4
  store ptr %edge_vertex, ptr %edge_vertex.addr, align 8, !tbaa !4
  store i32 %edge_orientation, ptr %edge_orientation.addr, align 4, !tbaa !11
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %x_coord.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %edge_vertex.addr, align 8, !tbaa !4
  %3 = load i32, ptr %edge_orientation.addr, align 4, !tbaa !11
  %4 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSConstructDiscreteGradient(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  ret i32 %call
}

declare i32 @hypre_AMSConstructDiscreteGradient(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSFEISetup(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %EdgeNodeList_, ptr noundef %NodeNumbers_, i32 noundef %numEdges_, i32 noundef %numLocalNodes_, i32 noundef %numNodes_, ptr noundef %NodalCoord_) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %EdgeNodeList_.addr = alloca ptr, align 8
  %NodeNumbers_.addr = alloca ptr, align 8
  %numEdges_.addr = alloca i32, align 4
  %numLocalNodes_.addr = alloca i32, align 4
  %numNodes_.addr = alloca i32, align 4
  %NodalCoord_.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %EdgeNodeList_, ptr %EdgeNodeList_.addr, align 8, !tbaa !4
  store ptr %NodeNumbers_, ptr %NodeNumbers_.addr, align 8, !tbaa !4
  store i32 %numEdges_, ptr %numEdges_.addr, align 4, !tbaa !11
  store i32 %numLocalNodes_, ptr %numLocalNodes_.addr, align 4, !tbaa !11
  store i32 %numNodes_, ptr %numNodes_.addr, align 4, !tbaa !11
  store ptr %NodalCoord_, ptr %NodalCoord_.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %4 = load i32, ptr %numNodes_.addr, align 4, !tbaa !11
  %5 = load i32, ptr %numLocalNodes_.addr, align 4, !tbaa !11
  %6 = load ptr, ptr %NodeNumbers_.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %NodalCoord_.addr, align 8, !tbaa !4
  %8 = load i32, ptr %numEdges_.addr, align 4, !tbaa !11
  %9 = load ptr, ptr %EdgeNodeList_.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSFEISetup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9)
  ret i32 %call
}

declare i32 @hypre_AMSFEISetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_AMSFEIDestroy(ptr noundef %solver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %call = call i32 @hypre_AMSFEIDestroy(ptr noundef %0)
  ret i32 %call
}

declare i32 @hypre_AMSFEIDestroy(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 4, !5, i64 8, !10, i64 16, !10, i64 20}
!10 = !{!"int", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
