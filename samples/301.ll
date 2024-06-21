; ModuleID = 'samples/301.bc'
source_filename = "HYPRE_parcsr_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"HYPRE_parcsr_mgr.c\00", align 1
@hypre__global_error = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRCreate(ptr noundef %solver) #0 {
entry:
  %retval = alloca i32, align 4
  %solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 19, i32 noundef 20, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @hypre_MGRCreate()
  %2 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  store ptr %call, ptr %2, align 8, !tbaa !4
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare ptr @hypre_MGRCreate() #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRDestroy(ptr noundef %solver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRDestroy(ptr noundef %0)
  ret i32 %call
}

declare i32 @hypre_MGRDestroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetup(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
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
  %call = call i32 @hypre_MGRSetup(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_MGRSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSolve(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
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
  %call = call i32 @hypre_MGRSolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_MGRSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetCpointsByContiguousBlock(ptr noundef %solver, i32 noundef %block_size, i32 noundef %max_num_levels, ptr noundef %idx_array, ptr noundef %block_num_coarse_points, ptr noundef %block_coarse_indexes) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %block_size.addr = alloca i32, align 4
  %max_num_levels.addr = alloca i32, align 4
  %idx_array.addr = alloca ptr, align 8
  %block_num_coarse_points.addr = alloca ptr, align 8
  %block_coarse_indexes.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %block_size, ptr %block_size.addr, align 4, !tbaa !8
  store i32 %max_num_levels, ptr %max_num_levels.addr, align 4, !tbaa !8
  store ptr %idx_array, ptr %idx_array.addr, align 8, !tbaa !4
  store ptr %block_num_coarse_points, ptr %block_num_coarse_points.addr, align 8, !tbaa !4
  store ptr %block_coarse_indexes, ptr %block_coarse_indexes.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %block_size.addr, align 4, !tbaa !8
  %2 = load i32, ptr %max_num_levels.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %idx_array.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %block_num_coarse_points.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %block_coarse_indexes.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetCpointsByContiguousBlock(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

declare i32 @hypre_MGRSetCpointsByContiguousBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetCpointsByBlock(ptr noundef %solver, i32 noundef %block_size, i32 noundef %max_num_levels, ptr noundef %block_num_coarse_points, ptr noundef %block_coarse_indexes) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %block_size.addr = alloca i32, align 4
  %max_num_levels.addr = alloca i32, align 4
  %block_num_coarse_points.addr = alloca ptr, align 8
  %block_coarse_indexes.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %block_size, ptr %block_size.addr, align 4, !tbaa !8
  store i32 %max_num_levels, ptr %max_num_levels.addr, align 4, !tbaa !8
  store ptr %block_num_coarse_points, ptr %block_num_coarse_points.addr, align 8, !tbaa !4
  store ptr %block_coarse_indexes, ptr %block_coarse_indexes.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %block_size.addr, align 4, !tbaa !8
  %2 = load i32, ptr %max_num_levels.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %block_num_coarse_points.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %block_coarse_indexes.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetCpointsByBlock(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %call
}

declare i32 @hypre_MGRSetCpointsByBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetCpointsByPointMarkerArray(ptr noundef %solver, i32 noundef %block_size, i32 noundef %max_num_levels, ptr noundef %num_block_coarse_points, ptr noundef %lvl_block_coarse_indexes, ptr noundef %point_marker_array) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %block_size.addr = alloca i32, align 4
  %max_num_levels.addr = alloca i32, align 4
  %num_block_coarse_points.addr = alloca ptr, align 8
  %lvl_block_coarse_indexes.addr = alloca ptr, align 8
  %point_marker_array.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %block_size, ptr %block_size.addr, align 4, !tbaa !8
  store i32 %max_num_levels, ptr %max_num_levels.addr, align 4, !tbaa !8
  store ptr %num_block_coarse_points, ptr %num_block_coarse_points.addr, align 8, !tbaa !4
  store ptr %lvl_block_coarse_indexes, ptr %lvl_block_coarse_indexes.addr, align 8, !tbaa !4
  store ptr %point_marker_array, ptr %point_marker_array.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %block_size.addr, align 4, !tbaa !8
  %2 = load i32, ptr %max_num_levels.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %num_block_coarse_points.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %lvl_block_coarse_indexes.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %point_marker_array.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetCpointsByPointMarkerArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %call
}

declare i32 @hypre_MGRSetCpointsByPointMarkerArray(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetNonCpointsToFpoints(ptr noundef %solver, i32 noundef %nonCptToFptFlag) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %nonCptToFptFlag.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %nonCptToFptFlag, ptr %nonCptToFptFlag.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nonCptToFptFlag.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetNonCpointsToFpoints(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetNonCpointsToFpoints(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetFSolver(ptr noundef %solver, ptr noundef %fine_grid_solver_solve, ptr noundef %fine_grid_solver_setup, ptr noundef %fsolver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %fine_grid_solver_solve.addr = alloca ptr, align 8
  %fine_grid_solver_setup.addr = alloca ptr, align 8
  %fsolver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %fine_grid_solver_solve, ptr %fine_grid_solver_solve.addr, align 8, !tbaa !4
  store ptr %fine_grid_solver_setup, ptr %fine_grid_solver_setup.addr, align 8, !tbaa !4
  store ptr %fsolver, ptr %fsolver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %fine_grid_solver_solve.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %fine_grid_solver_setup.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %fsolver.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetFSolver(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_MGRSetFSolver(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRBuildAff(ptr noundef %A, ptr noundef %CF_marker, i32 noundef %debug_flag, ptr noundef %A_ff) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %CF_marker.addr = alloca ptr, align 8
  %debug_flag.addr = alloca i32, align 4
  %A_ff.addr = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %CF_marker, ptr %CF_marker.addr, align 8, !tbaa !4
  store i32 %debug_flag, ptr %debug_flag.addr, align 4, !tbaa !8
  store ptr %A_ff, ptr %A_ff.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %CF_marker.addr, align 8, !tbaa !4
  %2 = load i32, ptr %debug_flag.addr, align 4, !tbaa !8
  %3 = load ptr, ptr %A_ff.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRBuildAff(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_MGRBuildAff(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetCoarseSolver(ptr noundef %solver, ptr noundef %coarse_grid_solver_solve, ptr noundef %coarse_grid_solver_setup, ptr noundef %coarse_grid_solver) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %coarse_grid_solver_solve.addr = alloca ptr, align 8
  %coarse_grid_solver_setup.addr = alloca ptr, align 8
  %coarse_grid_solver.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %coarse_grid_solver_solve, ptr %coarse_grid_solver_solve.addr, align 8, !tbaa !4
  store ptr %coarse_grid_solver_setup, ptr %coarse_grid_solver_setup.addr, align 8, !tbaa !4
  store ptr %coarse_grid_solver, ptr %coarse_grid_solver.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %coarse_grid_solver_solve.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %coarse_grid_solver_setup.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %coarse_grid_solver.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetCoarseSolver(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %call
}

declare i32 @hypre_MGRSetCoarseSolver(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetMaxCoarseLevels(ptr noundef %solver, i32 noundef %maxlev) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %maxlev.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %maxlev, ptr %maxlev.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %maxlev.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetMaxCoarseLevels(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetMaxCoarseLevels(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetBlockSize(ptr noundef %solver, i32 noundef %bsize) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %bsize.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %bsize, ptr %bsize.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %bsize.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetBlockSize(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetBlockSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetReservedCoarseNodes(ptr noundef %solver, i32 noundef %reserved_coarse_size, ptr noundef %reserved_coarse_indexes) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %reserved_coarse_size.addr = alloca i32, align 4
  %reserved_coarse_indexes.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %reserved_coarse_size, ptr %reserved_coarse_size.addr, align 4, !tbaa !8
  store ptr %reserved_coarse_indexes, ptr %reserved_coarse_indexes.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %reserved_coarse_size.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %reserved_coarse_indexes.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetReservedCoarseNodes(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %call
}

declare i32 @hypre_MGRSetReservedCoarseNodes(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetReservedCpointsLevelToKeep(ptr noundef %solver, i32 noundef %level) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %level.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetReservedCpointsLevelToKeep(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetReservedCpointsLevelToKeep(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetRestrictType(ptr noundef %solver, i32 noundef %restrict_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %restrict_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %restrict_type, ptr %restrict_type.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %restrict_type.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetRestrictType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetRestrictType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetLevelRestrictType(ptr noundef %solver, ptr noundef %restrict_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %restrict_type.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %restrict_type, ptr %restrict_type.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %restrict_type.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetLevelRestrictType(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetLevelRestrictType(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetFRelaxMethod(ptr noundef %solver, i32 noundef %relax_method) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %relax_method.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %relax_method, ptr %relax_method.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %relax_method.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetFRelaxMethod(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetFRelaxMethod(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetLevelFRelaxMethod(ptr noundef %solver, ptr noundef %relax_method) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %relax_method.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %relax_method, ptr %relax_method.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %relax_method.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetLevelFRelaxMethod(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetLevelFRelaxMethod(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetCoarseGridMethod(ptr noundef %solver, ptr noundef %cg_method) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %cg_method.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %cg_method, ptr %cg_method.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %cg_method.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetCoarseGridMethod(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetCoarseGridMethod(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetLevelFRelaxNumFunctions(ptr noundef %solver, ptr noundef %num_functions) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %num_functions.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %num_functions, ptr %num_functions.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %num_functions.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetLevelFRelaxNumFunctions(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetLevelFRelaxNumFunctions(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetRelaxType(ptr noundef %solver, i32 noundef %relax_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %relax_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %relax_type, ptr %relax_type.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %relax_type.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetRelaxType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetRelaxType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetNumRelaxSweeps(ptr noundef %solver, i32 noundef %nsweeps) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %nsweeps.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %nsweeps, ptr %nsweeps.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nsweeps.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetNumRelaxSweeps(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetNumRelaxSweeps(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetInterpType(ptr noundef %solver, i32 noundef %interpType) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %interpType.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %interpType, ptr %interpType.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %interpType.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetInterpType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetInterpType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetLevelInterpType(ptr noundef %solver, ptr noundef %interpType) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %interpType.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %interpType, ptr %interpType.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %interpType.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRSetLevelInterpType(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetLevelInterpType(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetNumInterpSweeps(ptr noundef %solver, i32 noundef %nsweeps) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %nsweeps.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %nsweeps, ptr %nsweeps.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nsweeps.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetNumInterpSweeps(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetNumInterpSweeps(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetNumRestrictSweeps(ptr noundef %solver, i32 noundef %nsweeps) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %nsweeps.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %nsweeps, ptr %nsweeps.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nsweeps.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetNumRestrictSweeps(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetNumRestrictSweeps(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetTruncateCoarseGridThreshold(ptr noundef %solver, double noundef %threshold) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %threshold.addr = alloca double, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store double %threshold, ptr %threshold.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load double, ptr %threshold.addr, align 8, !tbaa !10
  %call = call i32 @hypre_MGRSetTruncateCoarseGridThreshold(ptr noundef %0, double noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetTruncateCoarseGridThreshold(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetPrintLevel(ptr noundef %solver, i32 noundef %print_level) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %print_level.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %print_level, ptr %print_level.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %print_level.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetPrintLevel(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetPrintLevel(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetLogging(ptr noundef %solver, i32 noundef %logging) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %logging.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %logging, ptr %logging.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %logging.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetLogging(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetLogging(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetMaxIter(ptr noundef %solver, i32 noundef %max_iter) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %max_iter.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %max_iter, ptr %max_iter.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %max_iter.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetMaxIter(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetMaxIter(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetTol(ptr noundef %solver, double noundef %tol) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !10
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load double, ptr %tol.addr, align 8, !tbaa !10
  %call = call i32 @hypre_MGRSetTol(ptr noundef %0, double noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetTol(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetMaxGlobalsmoothIters(ptr noundef %solver, i32 noundef %max_iter) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %max_iter.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %max_iter, ptr %max_iter.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %max_iter.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetMaxGlobalsmoothIters(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetMaxGlobalsmoothIters(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetGlobalsmoothType(ptr noundef %solver, i32 noundef %iter_type) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %iter_type.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %iter_type, ptr %iter_type.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %iter_type.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetGlobalsmoothType(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetGlobalsmoothType(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRSetPMaxElmts(ptr noundef %solver, i32 noundef %P_max_elmts) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %P_max_elmts.addr = alloca i32, align 4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store i32 %P_max_elmts, ptr %P_max_elmts.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load i32, ptr %P_max_elmts.addr, align 4, !tbaa !8
  %call = call i32 @hypre_MGRSetPMaxElmts(ptr noundef %0, i32 noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRSetPMaxElmts(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRGetCoarseGridConvergenceFactor(ptr noundef %solver, ptr noundef %conv_factor) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %conv_factor.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %conv_factor, ptr %conv_factor.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %conv_factor.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRGetCoarseGridConvergenceFactor(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRGetCoarseGridConvergenceFactor(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRGetNumIterations(ptr noundef %solver, ptr noundef %num_iterations) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %num_iterations.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %num_iterations, ptr %num_iterations.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %num_iterations.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRGetNumIterations(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRGetNumIterations(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_MGRGetFinalRelativeResidualNorm(ptr noundef %solver, ptr noundef %res_norm) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %res_norm.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %res_norm, ptr %res_norm.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %res_norm.addr, align 8, !tbaa !4
  %call = call i32 @hypre_MGRGetFinalRelativeResidualNorm(ptr noundef %0, ptr noundef %1)
  ret i32 %call
}

declare i32 @hypre_MGRGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #1

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
