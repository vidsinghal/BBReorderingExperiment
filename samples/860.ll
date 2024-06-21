; ModuleID = 'samples/860.bc'
source_filename = "amg_hybrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ompi_predefined_datatype_t = type opaque
%struct.ompi_predefined_op_t = type opaque
%struct.hypre_AMGHybridData = type { double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, double, i32, double, double, double, double, ptr, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.hypre_ParVector_struct = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.hypre_ParCSRMatrix_struct = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.hypre_ParAMGData = type { i32, i32, double, i32, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, double, double, ptr, ptr, i32, double, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double, double, double, double, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, double, ptr, ptr, ptr, ptr, double, ptr, ptr, ptr, i32, i32, i32, i32, i32, double, ptr, i32, [256 x i8], i32, i32, [251 x i8], i32, ptr, i32, i32, ptr, ptr, i32, i32, double, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, double, i32, double, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr }

@hypre__global_error = external global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"amg_hybrid.c\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" Warning! Invalid cycle! num_sweeps not set!\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" Warning! Invalid cycle! Relax type not set!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c" Warning! Invalid level! Relax weight not set!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c" Warning! Invalid level! Outer weight not set!\0A\00", align 1
@ompi_mpi_double = external global %struct.ompi_predefined_datatype_t, align 1
@ompi_mpi_op_max = external global %struct.ompi_predefined_op_t, align 1

; Function Attrs: nounwind uwtable
define ptr @hypre_AMGHybridCreate() #0 {
entry:
  %AMGhybrid_data = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %call = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 320, i32 noundef 0)
  store ptr %call, ptr %AMGhybrid_data, align 8, !tbaa !4
  %0 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %time_index = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %0, i32 0, i32 20
  store i32 0, ptr %time_index, align 8, !tbaa !8
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tol = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %1, i32 0, i32 0
  store double 0x3EB0C6F7A0B5ED8D, ptr %tol, align 8, !tbaa !12
  %2 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %a_tol = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %2, i32 0, i32 1
  store double 0.000000e+00, ptr %a_tol, align 8, !tbaa !13
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cf_tol = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 2
  store double 9.000000e-01, ptr %cf_tol, align 8, !tbaa !14
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_max_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 3
  store i32 1000, ptr %dscg_max_its, align 8, !tbaa !15
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_max_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 4
  store i32 200, ptr %pcg_max_its, align 4, !tbaa !16
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %two_norm = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 5
  store i32 0, ptr %two_norm, align 8, !tbaa !17
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %stop_crit = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 6
  store i32 0, ptr %stop_crit, align 4, !tbaa !18
  %8 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %rel_change = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %8, i32 0, i32 7
  store i32 0, ptr %rel_change, align 8, !tbaa !19
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_default = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 12
  store i32 1, ptr %pcg_default, align 4, !tbaa !20
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solver_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 10
  store i32 1, ptr %solver_type, align 4, !tbaa !21
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_solve = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 13
  store ptr null, ptr %pcg_precond_solve, align 8, !tbaa !22
  %12 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_setup = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %12, i32 0, i32 14
  store ptr null, ptr %pcg_precond_setup, align 8, !tbaa !23
  %13 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %13, i32 0, i32 15
  store ptr null, ptr %pcg_precond, align 8, !tbaa !24
  %14 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %14, i32 0, i32 16
  store ptr null, ptr %pcg_solver, align 8, !tbaa !25
  %15 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %15, i32 0, i32 21
  store double 0.000000e+00, ptr %setup_time1, align 8, !tbaa !26
  %16 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %16, i32 0, i32 22
  store double 0.000000e+00, ptr %setup_time2, align 8, !tbaa !27
  %17 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %17, i32 0, i32 23
  store double 0.000000e+00, ptr %solve_time1, align 8, !tbaa !28
  %18 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %18, i32 0, i32 24
  store double 0.000000e+00, ptr %solve_time2, align 8, !tbaa !29
  %19 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %19, i32 0, i32 17
  store i32 0, ptr %dscg_num_its, align 8, !tbaa !30
  %20 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %20, i32 0, i32 18
  store i32 0, ptr %pcg_num_its, align 4, !tbaa !31
  %21 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %logging = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %21, i32 0, i32 26
  store i32 0, ptr %logging, align 8, !tbaa !32
  %22 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %22, i32 0, i32 27
  store i32 0, ptr %print_level, align 4, !tbaa !33
  %23 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %k_dim = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %23, i32 0, i32 11
  store i32 5, ptr %k_dim, align 8, !tbaa !34
  %24 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %24, i32 0, i32 32
  store i32 1, ptr %setup_type, align 4, !tbaa !35
  %25 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %strong_threshold = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %25, i32 0, i32 28
  store double 2.500000e-01, ptr %strong_threshold, align 8, !tbaa !36
  %26 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_row_sum = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %26, i32 0, i32 29
  store double 9.000000e-01, ptr %max_row_sum, align 8, !tbaa !37
  %27 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %trunc_factor = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %27, i32 0, i32 30
  store double 0.000000e+00, ptr %trunc_factor, align 8, !tbaa !38
  %28 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pmax = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %28, i32 0, i32 31
  store i32 4, ptr %pmax, align 8, !tbaa !39
  %29 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %29, i32 0, i32 33
  store i32 25, ptr %max_levels, align 8, !tbaa !40
  %30 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %measure_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %30, i32 0, i32 34
  store i32 0, ptr %measure_type, align 4, !tbaa !41
  %31 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %coarsen_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %31, i32 0, i32 35
  store i32 10, ptr %coarsen_type, align 8, !tbaa !42
  %32 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %interp_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %32, i32 0, i32 36
  store i32 6, ptr %interp_type, align 4, !tbaa !43
  %33 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cycle_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %33, i32 0, i32 37
  store i32 1, ptr %cycle_type, align 8, !tbaa !44
  %34 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_order = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %34, i32 0, i32 38
  store i32 0, ptr %relax_order, align 4, !tbaa !45
  %35 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %keepT = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %35, i32 0, i32 39
  store i32 0, ptr %keepT, align 8, !tbaa !46
  %36 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_coarse_size = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %36, i32 0, i32 40
  store i32 9, ptr %max_coarse_size, align 4, !tbaa !47
  %37 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %min_coarse_size = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %37, i32 0, i32 41
  store i32 1, ptr %min_coarse_size, align 8, !tbaa !48
  %38 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %seq_threshold = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %38, i32 0, i32 42
  store i32 0, ptr %seq_threshold, align 4, !tbaa !49
  %39 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %39, i32 0, i32 43
  store ptr null, ptr %num_grid_sweeps, align 8, !tbaa !50
  %40 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %40, i32 0, i32 44
  store ptr null, ptr %grid_relax_type, align 8, !tbaa !51
  %41 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %41, i32 0, i32 45
  store ptr null, ptr %grid_relax_points, align 8, !tbaa !52
  %42 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %42, i32 0, i32 46
  store ptr null, ptr %relax_weight, align 8, !tbaa !53
  %43 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %43, i32 0, i32 47
  store ptr null, ptr %omega, align 8, !tbaa !54
  %44 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %agg_num_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %44, i32 0, i32 49
  store i32 0, ptr %agg_num_levels, align 4, !tbaa !55
  %45 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_paths = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %45, i32 0, i32 48
  store i32 1, ptr %num_paths, align 8, !tbaa !56
  %46 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_functions = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %46, i32 0, i32 50
  store i32 1, ptr %num_functions, align 8, !tbaa !57
  %47 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nodal = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %47, i32 0, i32 51
  store i32 0, ptr %nodal, align 4, !tbaa !58
  %48 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %48, i32 0, i32 52
  store ptr null, ptr %dof_func, align 8, !tbaa !59
  %49 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerk_num_tol = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %49, i32 0, i32 53
  store i32 0, ptr %nongalerk_num_tol, align 8, !tbaa !60
  %50 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerkin_tol = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %50, i32 0, i32 54
  store ptr null, ptr %nongalerkin_tol, align 8, !tbaa !61
  %51 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  ret ptr %51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridDestroy(ptr noundef %AMGhybrid_vdata) #0 {
entry:
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %solver_type = alloca i32, align 4
  %pcg_solver = alloca ptr, align 8
  %pcg_precond = alloca ptr, align 8
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %solver_type) #3
  %2 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solver_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %solver_type1, align 4, !tbaa !21
  store i32 %3, ptr %solver_type, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_solver) #3
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 16
  %5 = load ptr, ptr %pcg_solver2, align 8, !tbaa !25
  store ptr %5, ptr %pcg_solver, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_precond) #3
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 15
  %7 = load ptr, ptr %pcg_precond3, align 8, !tbaa !24
  store ptr %7, ptr %pcg_precond, align 8, !tbaa !4
  %8 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %8, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call = call i32 @hypre_BoomerAMGDestroy(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %10 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call7 = call i32 @hypre_PCGDestroy(ptr noundef %11)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %12 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %13 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call11 = call i32 @hypre_GMRESDestroy(ptr noundef %13)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %14 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp13 = icmp eq i32 %14, 3
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %15 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call15 = call i32 @hypre_BiCGSTABDestroy(ptr noundef %15)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %16 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %16, i32 0, i32 43
  %17 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !50
  %tobool17 = icmp ne ptr %17, null
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end16
  %18 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps19 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %18, i32 0, i32 43
  %19 = load ptr, ptr %num_grid_sweeps19, align 8, !tbaa !50
  call void @hypre_Free(ptr noundef %19, i32 noundef 0)
  %20 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps20 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %20, i32 0, i32 43
  store ptr null, ptr %num_grid_sweeps20, align 8, !tbaa !50
  %21 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps21 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %21, i32 0, i32 43
  store ptr null, ptr %num_grid_sweeps21, align 8, !tbaa !50
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16
  %22 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %22, i32 0, i32 44
  %23 = load ptr, ptr %grid_relax_type, align 8, !tbaa !51
  %tobool23 = icmp ne ptr %23, null
  br i1 %tobool23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end22
  %24 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type25 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %24, i32 0, i32 44
  %25 = load ptr, ptr %grid_relax_type25, align 8, !tbaa !51
  call void @hypre_Free(ptr noundef %25, i32 noundef 0)
  %26 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type26 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %26, i32 0, i32 44
  store ptr null, ptr %grid_relax_type26, align 8, !tbaa !51
  %27 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type27 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %27, i32 0, i32 44
  store ptr null, ptr %grid_relax_type27, align 8, !tbaa !51
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22
  %28 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %28, i32 0, i32 45
  %29 = load ptr, ptr %grid_relax_points, align 8, !tbaa !52
  %tobool29 = icmp ne ptr %29, null
  br i1 %tobool29, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.end28
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then30
  %30 = load i32, ptr %i, align 4, !tbaa !62
  %cmp31 = icmp slt i32 %30, 4
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points32 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %31, i32 0, i32 45
  %32 = load ptr, ptr %grid_relax_points32, align 8, !tbaa !52
  %33 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %32, i64 %idxprom
  %34 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %34, i32 noundef 0)
  %35 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points33 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %35, i32 0, i32 45
  %36 = load ptr, ptr %grid_relax_points33, align 8, !tbaa !52
  %37 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %36, i64 %idxprom34
  store ptr null, ptr %arrayidx35, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points36 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %39, i32 0, i32 45
  %40 = load ptr, ptr %grid_relax_points36, align 8, !tbaa !52
  call void @hypre_Free(ptr noundef %40, i32 noundef 0)
  %41 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points37 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %41, i32 0, i32 45
  store ptr null, ptr %grid_relax_points37, align 8, !tbaa !52
  %42 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points38 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %42, i32 0, i32 45
  store ptr null, ptr %grid_relax_points38, align 8, !tbaa !52
  br label %if.end39

if.end39:                                         ; preds = %for.end, %if.end28
  %43 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %43, i32 0, i32 46
  %44 = load ptr, ptr %relax_weight, align 8, !tbaa !53
  %tobool40 = icmp ne ptr %44, null
  br i1 %tobool40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end39
  %45 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight42 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %45, i32 0, i32 46
  %46 = load ptr, ptr %relax_weight42, align 8, !tbaa !53
  call void @hypre_Free(ptr noundef %46, i32 noundef 0)
  %47 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight43 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %47, i32 0, i32 46
  store ptr null, ptr %relax_weight43, align 8, !tbaa !53
  %48 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight44 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %48, i32 0, i32 46
  store ptr null, ptr %relax_weight44, align 8, !tbaa !53
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end39
  %49 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %49, i32 0, i32 47
  %50 = load ptr, ptr %omega, align 8, !tbaa !54
  %tobool46 = icmp ne ptr %50, null
  br i1 %tobool46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end45
  %51 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega48 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %51, i32 0, i32 47
  %52 = load ptr, ptr %omega48, align 8, !tbaa !54
  call void @hypre_Free(ptr noundef %52, i32 noundef 0)
  %53 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega49 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %53, i32 0, i32 47
  store ptr null, ptr %omega49, align 8, !tbaa !54
  %54 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega50 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %54, i32 0, i32 47
  store ptr null, ptr %omega50, align 8, !tbaa !54
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end45
  %55 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %55, i32 0, i32 52
  %56 = load ptr, ptr %dof_func, align 8, !tbaa !59
  %tobool52 = icmp ne ptr %56, null
  br i1 %tobool52, label %if.then53, label %if.end57

if.then53:                                        ; preds = %if.end51
  %57 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func54 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %57, i32 0, i32 52
  %58 = load ptr, ptr %dof_func54, align 8, !tbaa !59
  call void @hypre_Free(ptr noundef %58, i32 noundef 0)
  %59 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func55 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %59, i32 0, i32 52
  store ptr null, ptr %dof_func55, align 8, !tbaa !59
  %60 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func56 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %60, i32 0, i32 52
  store ptr null, ptr %dof_func56, align 8, !tbaa !59
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end51
  %61 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %61, i32 noundef 0)
  store ptr null, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_precond) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_solver) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %solver_type) #3
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %entry
  %62 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  ret i32 %62
}

declare i32 @hypre_BoomerAMGDestroy(ptr noundef) #2

declare i32 @hypre_PCGDestroy(ptr noundef) #2

declare i32 @hypre_GMRESDestroy(ptr noundef) #2

declare i32 @hypre_BiCGSTABDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetTol(ptr noundef %AMGhybrid_vdata, double noundef %tol) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 235, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %tol.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %tol.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 240, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %tol.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tol4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 0
  store double %6, ptr %tol4, align 8, !tbaa !12
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetAbsoluteTol(ptr noundef %AMGhybrid_vdata, double noundef %a_tol) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %a_tol.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %a_tol, ptr %a_tol.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 259, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %a_tol.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %a_tol.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 264, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %a_tol.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %a_tol4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 1
  store double %6, ptr %a_tol4, align 8, !tbaa !13
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetConvergenceTol(ptr noundef %AMGhybrid_vdata, double noundef %cf_tol) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %cf_tol.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %cf_tol, ptr %cf_tol.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 282, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %cf_tol.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %cf_tol.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 287, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %cf_tol.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cf_tol4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 2
  store double %6, ptr %cf_tol4, align 8, !tbaa !14
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNonGalerkinTol(ptr noundef %AMGhybrid_vdata, i32 noundef %nongalerk_num_tol, ptr noundef %nongalerkin_tol) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %nongalerk_num_tol.addr = alloca i32, align 4
  %nongalerkin_tol.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %nongalerk_num_tol, ptr %nongalerk_num_tol.addr, align 4, !tbaa !62
  store ptr %nongalerkin_tol, ptr %nongalerkin_tol.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 308, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nongalerk_num_tol.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 313, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %nongalerk_num_tol.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerk_num_tol3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 53
  store i32 %5, ptr %nongalerk_num_tol3, align 8, !tbaa !60
  %7 = load ptr, ptr %nongalerkin_tol.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerkin_tol4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %8, i32 0, i32 54
  store ptr %7, ptr %nongalerkin_tol4, align 8, !tbaa !61
  %9 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetDSCGMaxIter(ptr noundef %AMGhybrid_vdata, i32 noundef %dscg_max_its) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %dscg_max_its.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %dscg_max_its, ptr %dscg_max_its.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 334, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %dscg_max_its.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 339, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %dscg_max_its.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_max_its3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 3
  store i32 %5, ptr %dscg_max_its3, align 8, !tbaa !15
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetPCGMaxIter(ptr noundef %AMGhybrid_vdata, i32 noundef %pcg_max_its) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %pcg_max_its.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %pcg_max_its, ptr %pcg_max_its.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 359, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %pcg_max_its.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 364, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %pcg_max_its.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_max_its3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 4
  store i32 %5, ptr %pcg_max_its3, align 4, !tbaa !16
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetSetupType(ptr noundef %AMGhybrid_vdata, i32 noundef %setup_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %setup_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %setup_type, ptr %setup_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 384, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %setup_type.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 32
  store i32 %3, ptr %setup_type1, align 4, !tbaa !35
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetSolverType(ptr noundef %AMGhybrid_vdata, i32 noundef %solver_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %solver_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %solver_type, ptr %solver_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 404, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %solver_type.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solver_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 10
  store i32 %3, ptr %solver_type1, align 4, !tbaa !21
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRecomputeResidual(ptr noundef %AMGhybrid_vdata, i32 noundef %recompute_residual) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %recompute_residual.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %recompute_residual, ptr %recompute_residual.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 424, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %recompute_residual.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 8
  store i32 %3, ptr %recompute_residual1, align 4, !tbaa !66
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetRecomputeResidual(ptr noundef %AMGhybrid_vdata, ptr noundef %recompute_residual) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %recompute_residual.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %recompute_residual, ptr %recompute_residual.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 440, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %recompute_residual1, align 4, !tbaa !66
  %5 = load ptr, ptr %recompute_residual.addr, align 8, !tbaa !4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRecomputeResidualP(ptr noundef %AMGhybrid_vdata, i32 noundef %recompute_residual_p) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %recompute_residual_p.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %recompute_residual_p, ptr %recompute_residual_p.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 460, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %recompute_residual_p.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual_p1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 9
  store i32 %3, ptr %recompute_residual_p1, align 8, !tbaa !67
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetRecomputeResidualP(ptr noundef %AMGhybrid_vdata, ptr noundef %recompute_residual_p) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %recompute_residual_p.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %recompute_residual_p, ptr %recompute_residual_p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 476, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual_p1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 9
  %4 = load i32, ptr %recompute_residual_p1, align 8, !tbaa !67
  %5 = load ptr, ptr %recompute_residual_p.addr, align 8, !tbaa !4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetKDim(ptr noundef %AMGhybrid_vdata, i32 noundef %k_dim) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %k_dim.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %k_dim, ptr %k_dim.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 496, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %k_dim.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 501, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %k_dim.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %k_dim3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 11
  store i32 %5, ptr %k_dim3, align 8, !tbaa !34
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetStopCrit(ptr noundef %AMGhybrid_vdata, i32 noundef %stop_crit) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %stop_crit.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %stop_crit, ptr %stop_crit.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 521, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %stop_crit.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %stop_crit1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 6
  store i32 %3, ptr %stop_crit1, align 4, !tbaa !18
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetTwoNorm(ptr noundef %AMGhybrid_vdata, i32 noundef %two_norm) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %two_norm.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %two_norm, ptr %two_norm.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 541, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %two_norm.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %two_norm1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 5
  store i32 %3, ptr %two_norm1, align 8, !tbaa !17
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRelChange(ptr noundef %AMGhybrid_vdata, i32 noundef %rel_change) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %rel_change.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %rel_change, ptr %rel_change.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 561, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %rel_change.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %rel_change1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 7
  store i32 %3, ptr %rel_change1, align 8, !tbaa !19
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetPrecond(ptr noundef %pcg_vdata, ptr noundef %pcg_precond_solve, ptr noundef %pcg_precond_setup, ptr noundef %pcg_precond) #0 {
entry:
  %retval = alloca i32, align 4
  %pcg_vdata.addr = alloca ptr, align 8
  %pcg_precond_solve.addr = alloca ptr, align 8
  %pcg_precond_setup.addr = alloca ptr, align 8
  %pcg_precond.addr = alloca ptr, align 8
  %pcg_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pcg_vdata, ptr %pcg_vdata.addr, align 8, !tbaa !4
  store ptr %pcg_precond_solve, ptr %pcg_precond_solve.addr, align 8, !tbaa !4
  store ptr %pcg_precond_setup, ptr %pcg_precond_setup.addr, align 8, !tbaa !4
  store ptr %pcg_precond, ptr %pcg_precond.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_data) #3
  %0 = load ptr, ptr %pcg_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %pcg_data, align 8, !tbaa !4
  %1 = load ptr, ptr %pcg_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 583, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pcg_data, align 8, !tbaa !4
  %pcg_default = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 12
  store i32 0, ptr %pcg_default, align 4, !tbaa !20
  %4 = load ptr, ptr %pcg_precond_solve.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %pcg_data, align 8, !tbaa !4
  %pcg_precond_solve1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 13
  store ptr %4, ptr %pcg_precond_solve1, align 8, !tbaa !22
  %6 = load ptr, ptr %pcg_precond_setup.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %pcg_data, align 8, !tbaa !4
  %pcg_precond_setup2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 14
  store ptr %6, ptr %pcg_precond_setup2, align 8, !tbaa !23
  %8 = load ptr, ptr %pcg_precond.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %pcg_data, align 8, !tbaa !4
  %pcg_precond3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 15
  store ptr %8, ptr %pcg_precond3, align 8, !tbaa !24
  %10 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_data) #3
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetLogging(ptr noundef %AMGhybrid_vdata, i32 noundef %logging) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %logging.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %logging, ptr %logging.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 606, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %logging.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %logging1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 26
  store i32 %3, ptr %logging1, align 8, !tbaa !32
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetPrintLevel(ptr noundef %AMGhybrid_vdata, i32 noundef %print_level) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %print_level.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %print_level, ptr %print_level.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 626, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %print_level.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 27
  store i32 %3, ptr %print_level1, align 4, !tbaa !33
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetStrongThreshold(ptr noundef %AMGhybrid_vdata, double noundef %strong_threshold) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %strong_threshold.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %strong_threshold, ptr %strong_threshold.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 646, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %strong_threshold.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %strong_threshold.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 651, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %strong_threshold.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %strong_threshold4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 28
  store double %6, ptr %strong_threshold4, align 8, !tbaa !36
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetMaxRowSum(ptr noundef %AMGhybrid_vdata, double noundef %max_row_sum) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %max_row_sum.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %max_row_sum, ptr %max_row_sum.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 671, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %max_row_sum.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %max_row_sum.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 676, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %max_row_sum.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_row_sum4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 29
  store double %6, ptr %max_row_sum4, align 8, !tbaa !37
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetTruncFactor(ptr noundef %AMGhybrid_vdata, double noundef %trunc_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %trunc_factor.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %trunc_factor, ptr %trunc_factor.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 696, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %trunc_factor.addr, align 8, !tbaa !65
  %cmp = fcmp olt double %3, 0.000000e+00
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load double, ptr %trunc_factor.addr, align 8, !tbaa !65
  %cmp1 = fcmp ogt double %4, 1.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 701, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %trunc_factor.addr, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %trunc_factor4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 30
  store double %6, ptr %trunc_factor4, align 8, !tbaa !38
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetPMaxElmts(ptr noundef %AMGhybrid_vdata, i32 noundef %P_max_elmts) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %P_max_elmts.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %P_max_elmts, ptr %P_max_elmts.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 722, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %P_max_elmts.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 728, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %P_max_elmts.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pmax = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 31
  store i32 %5, ptr %pmax, align 8, !tbaa !39
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetMaxLevels(ptr noundef %AMGhybrid_vdata, i32 noundef %max_levels) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %max_levels.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %max_levels, ptr %max_levels.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 748, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %max_levels.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 753, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %max_levels.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 33
  store i32 %5, ptr %max_levels3, align 8, !tbaa !40
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetMeasureType(ptr noundef %AMGhybrid_vdata, i32 noundef %measure_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %measure_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %measure_type, ptr %measure_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 773, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %measure_type.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %measure_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 34
  store i32 %3, ptr %measure_type1, align 4, !tbaa !41
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetCoarsenType(ptr noundef %AMGhybrid_vdata, i32 noundef %coarsen_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %coarsen_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %coarsen_type, ptr %coarsen_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 793, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %coarsen_type.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %coarsen_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 35
  store i32 %3, ptr %coarsen_type1, align 8, !tbaa !42
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetInterpType(ptr noundef %AMGhybrid_vdata, i32 noundef %interp_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %interp_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %interp_type, ptr %interp_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 813, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %interp_type.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 818, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %interp_type.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %interp_type3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 36
  store i32 %5, ptr %interp_type3, align 4, !tbaa !43
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetCycleType(ptr noundef %AMGhybrid_vdata, i32 noundef %cycle_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %cycle_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %cycle_type, ptr %cycle_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 838, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %cycle_type.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %cycle_type.addr, align 4, !tbaa !62
  %cmp1 = icmp sgt i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 843, i32 noundef 20, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %6 = load i32, ptr %cycle_type.addr, align 4, !tbaa !62
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cycle_type4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 37
  store i32 %6, ptr %cycle_type4, align 8, !tbaa !44
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNumSweeps(ptr noundef %AMGhybrid_vdata, i32 noundef %num_sweeps) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_sweeps.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %num_grid_sweeps = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %num_sweeps, ptr %num_sweeps.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 865, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %num_sweeps.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 870, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 43
  %6 = load ptr, ptr %num_grid_sweeps3, align 8, !tbaa !50
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  %call = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 43
  store ptr %call, ptr %num_grid_sweeps6, align 8, !tbaa !50
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2
  %8 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps8 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %8, i32 0, i32 43
  %9 = load ptr, ptr %num_grid_sweeps8, align 8, !tbaa !50
  store ptr %9, ptr %num_grid_sweeps, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, ptr %i, align 4, !tbaa !62
  %cmp9 = icmp slt i32 %10, 3
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %num_sweeps.addr, align 4, !tbaa !62
  %12 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %13 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  store i32 %11, ptr %arrayidx, align 4, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 3
  store i32 1, ptr %arrayidx10, align 4, !tbaa !62
  %16 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetCycleNumSweeps(ptr noundef %AMGhybrid_vdata, i32 noundef %num_sweeps, i32 noundef %k) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_sweeps.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %num_grid_sweeps = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %num_sweeps, ptr %num_sweeps.addr, align 4, !tbaa !62
  store i32 %k, ptr %k.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 902, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %num_sweeps.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 907, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %k.addr, align 4, !tbaa !62
  %cmp3 = icmp slt i32 %5, 1
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %6 = load i32, ptr %k.addr, align 4, !tbaa !62
  %cmp4 = icmp sgt i32 %6, 3
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %print_level, align 4, !tbaa !33
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  %call = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 916, i32 noundef 28, ptr noundef null)
  %9 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps10 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 43
  %11 = load ptr, ptr %num_grid_sweeps10, align 8, !tbaa !50
  store ptr %11, ptr %num_grid_sweeps, align 8, !tbaa !4
  %12 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %12, null
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end9
  %call13 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  %13 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps14 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %13, i32 0, i32 43
  store ptr %call13, ptr %num_grid_sweeps14, align 8, !tbaa !50
  %14 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps15 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %14, i32 0, i32 43
  %15 = load ptr, ptr %num_grid_sweeps15, align 8, !tbaa !50
  store ptr %15, ptr %num_grid_sweeps, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %16 = load i32, ptr %i, align 4, !tbaa !62
  %cmp16 = icmp slt i32 %16, 4
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %18 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.end9
  %20 = load i32, ptr %num_sweeps.addr, align 4, !tbaa !62
  %21 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %22 = load i32, ptr %k.addr, align 4, !tbaa !62
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 %idxprom18
  store i32 %20, ptr %arrayidx19, align 4, !tbaa !62
  %23 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end8, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @hypre_printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRelaxType(ptr noundef %AMGhybrid_vdata, i32 noundef %relax_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_type.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %grid_relax_type = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %relax_type, ptr %relax_type.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %grid_relax_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 947, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 44
  %4 = load ptr, ptr %grid_relax_type1, align 8, !tbaa !51
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 44
  store ptr %call, ptr %grid_relax_type3, align 8, !tbaa !51
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type5 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 44
  %7 = load ptr, ptr %grid_relax_type5, align 8, !tbaa !51
  store ptr %7, ptr %grid_relax_type, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load i32, ptr %i, align 4, !tbaa !62
  %cmp6 = icmp slt i32 %8, 3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %relax_type.addr, align 4, !tbaa !62
  %10 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  store i32 %9, ptr %arrayidx, align 4, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds i32, ptr %13, i64 3
  store i32 9, ptr %arrayidx7, align 4, !tbaa !62
  %14 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %grid_relax_type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetCycleRelaxType(ptr noundef %AMGhybrid_vdata, i32 noundef %relax_type, i32 noundef %k) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_type.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %grid_relax_type = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %relax_type, ptr %relax_type.addr, align 4, !tbaa !62
  store i32 %k, ptr %k.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %grid_relax_type) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 978, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %k.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %k.addr, align 4, !tbaa !62
  %cmp1 = icmp sgt i32 %4, 3
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 27
  %6 = load i32, ptr %print_level, align 4, !tbaa !33
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %call = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.2)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 988, i32 noundef 28, ptr noundef null)
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %8, i32 0, i32 44
  %9 = load ptr, ptr %grid_relax_type7, align 8, !tbaa !51
  store ptr %9, ptr %grid_relax_type, align 8, !tbaa !4
  %10 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %call10 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type11 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 44
  store ptr %call10, ptr %grid_relax_type11, align 8, !tbaa !51
  %12 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type12 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %12, i32 0, i32 44
  %13 = load ptr, ptr %grid_relax_type12, align 8, !tbaa !51
  store ptr %13, ptr %grid_relax_type, align 8, !tbaa !4
  %14 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %14, i64 1
  store i32 13, ptr %arrayidx, align 4, !tbaa !62
  %15 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds i32, ptr %15, i64 2
  store i32 14, ptr %arrayidx13, align 4, !tbaa !62
  %16 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds i32, ptr %16, i64 3
  store i32 9, ptr %arrayidx14, align 4, !tbaa !62
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end6
  %17 = load i32, ptr %relax_type.addr, align 4, !tbaa !62
  %18 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %19 = load i32, ptr %k.addr, align 4, !tbaa !62
  %idxprom = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %18, i64 %idxprom
  store i32 %17, ptr %arrayidx16, align 4, !tbaa !62
  %20 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %grid_relax_type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRelaxOrder(ptr noundef %AMGhybrid_vdata, i32 noundef %relax_order) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_order.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %relax_order, ptr %relax_order.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1018, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %relax_order.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_order1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 38
  store i32 %3, ptr %relax_order1, align 4, !tbaa !45
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetKeepTranspose(ptr noundef %AMGhybrid_vdata, i32 noundef %keepT) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %keepT.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %keepT, ptr %keepT.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1038, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %keepT.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %keepT1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 39
  store i32 %3, ptr %keepT1, align 8, !tbaa !46
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetMaxCoarseSize(ptr noundef %AMGhybrid_vdata, i32 noundef %max_coarse_size) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %max_coarse_size.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %max_coarse_size, ptr %max_coarse_size.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1058, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %max_coarse_size.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1063, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %max_coarse_size.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_coarse_size3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 40
  store i32 %5, ptr %max_coarse_size3, align 4, !tbaa !47
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetMinCoarseSize(ptr noundef %AMGhybrid_vdata, i32 noundef %min_coarse_size) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %min_coarse_size.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %min_coarse_size, ptr %min_coarse_size.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1083, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %min_coarse_size.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1088, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %min_coarse_size.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %min_coarse_size3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 41
  store i32 %5, ptr %min_coarse_size3, align 8, !tbaa !48
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetSeqThreshold(ptr noundef %AMGhybrid_vdata, i32 noundef %seq_threshold) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %seq_threshold.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %seq_threshold, ptr %seq_threshold.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1108, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %seq_threshold.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1113, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %seq_threshold.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %seq_threshold3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 42
  store i32 %5, ptr %seq_threshold3, align 4, !tbaa !49
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNumGridSweeps(ptr noundef %AMGhybrid_vdata, ptr noundef %num_grid_sweeps) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_grid_sweeps.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %num_grid_sweeps, ptr %num_grid_sweeps.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1133, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %num_grid_sweeps.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1138, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 43
  %6 = load ptr, ptr %num_grid_sweeps4, align 8, !tbaa !50
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 43
  %8 = load ptr, ptr %num_grid_sweeps6, align 8, !tbaa !50
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 43
  store ptr null, ptr %num_grid_sweeps7, align 8, !tbaa !50
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %num_grid_sweeps.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 43
  store ptr %10, ptr %num_grid_sweeps9, align 8, !tbaa !50
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetGridRelaxType(ptr noundef %AMGhybrid_vdata, ptr noundef %grid_relax_type) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %grid_relax_type.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %grid_relax_type, ptr %grid_relax_type.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1162, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %grid_relax_type.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1167, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 44
  %6 = load ptr, ptr %grid_relax_type4, align 8, !tbaa !51
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 44
  %8 = load ptr, ptr %grid_relax_type6, align 8, !tbaa !51
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 44
  store ptr null, ptr %grid_relax_type7, align 8, !tbaa !51
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %grid_relax_type.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 44
  store ptr %10, ptr %grid_relax_type9, align 8, !tbaa !51
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetGridRelaxPoints(ptr noundef %AMGhybrid_vdata, ptr noundef %grid_relax_points) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %grid_relax_points.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %grid_relax_points, ptr %grid_relax_points.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1191, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %grid_relax_points.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1196, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 45
  %6 = load ptr, ptr %grid_relax_points4, align 8, !tbaa !52
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 45
  %8 = load ptr, ptr %grid_relax_points6, align 8, !tbaa !52
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 45
  store ptr null, ptr %grid_relax_points7, align 8, !tbaa !52
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %grid_relax_points.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 45
  store ptr %10, ptr %grid_relax_points9, align 8, !tbaa !52
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRelaxWeight(ptr noundef %AMGhybrid_vdata, ptr noundef %relax_weight) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_weight.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %relax_weight, ptr %relax_weight.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1220, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %relax_weight.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1225, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 46
  %6 = load ptr, ptr %relax_weight4, align 8, !tbaa !53
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 46
  %8 = load ptr, ptr %relax_weight6, align 8, !tbaa !53
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 46
  store ptr null, ptr %relax_weight7, align 8, !tbaa !53
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %relax_weight.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 46
  store ptr %10, ptr %relax_weight9, align 8, !tbaa !53
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetOmega(ptr noundef %AMGhybrid_vdata, ptr noundef %omega) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %omega.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %omega, ptr %omega.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1249, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %omega.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1254, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 47
  %6 = load ptr, ptr %omega4, align 8, !tbaa !54
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 47
  %8 = load ptr, ptr %omega6, align 8, !tbaa !54
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 47
  store ptr null, ptr %omega7, align 8, !tbaa !54
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %omega.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 47
  store ptr %10, ptr %omega9, align 8, !tbaa !54
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetRelaxWt(ptr noundef %AMGhybrid_vdata, double noundef %relax_wt) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_wt.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %relax_wt_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %relax_wt, ptr %relax_wt.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %relax_wt_array) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1280, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %max_levels, align 8, !tbaa !40
  store i32 %4, ptr %num_levels, align 4, !tbaa !62
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 46
  %6 = load ptr, ptr %relax_weight, align 8, !tbaa !53
  store ptr %6, ptr %relax_wt_array, align 8, !tbaa !4
  %7 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %8 = load i32, ptr %num_levels, align 4, !tbaa !62
  %conv = sext i32 %8 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %relax_wt_array, align 8, !tbaa !4
  %9 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 46
  store ptr %9, ptr %relax_weight2, align 8, !tbaa !53
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %11 = load i32, ptr %i, align 4, !tbaa !62
  %12 = load i32, ptr %num_levels, align 4, !tbaa !62
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load double, ptr %relax_wt.addr, align 8, !tbaa !65
  %14 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds double, ptr %14, i64 %idxprom
  store double %13, ptr %arrayidx, align 8, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %relax_wt_array) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetLevelRelaxWt(ptr noundef %AMGhybrid_vdata, double noundef %relax_wt, i32 noundef %level) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %relax_wt.addr = alloca double, align 8
  %level.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %relax_wt_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %relax_wt, ptr %relax_wt.addr, align 8, !tbaa !65
  store i32 %level, ptr %level.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %relax_wt_array) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1313, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %max_levels, align 8, !tbaa !40
  store i32 %4, ptr %num_levels, align 4, !tbaa !62
  %5 = load i32, ptr %level.addr, align 4, !tbaa !62
  %6 = load i32, ptr %num_levels, align 4, !tbaa !62
  %sub = sub nsw i32 %6, 1
  %cmp = icmp sgt i32 %5, %sub
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %print_level, align 4, !tbaa !33
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %call = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.3)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1324, i32 noundef 28, ptr noundef null)
  %9 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 46
  %11 = load ptr, ptr %relax_weight, align 8, !tbaa !53
  store ptr %11, ptr %relax_wt_array, align 8, !tbaa !4
  %12 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end5
  %13 = load i32, ptr %num_levels, align 4, !tbaa !62
  %conv = sext i32 %13 to i64
  %call8 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call8, ptr %relax_wt_array, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %14 = load i32, ptr %i, align 4, !tbaa !62
  %15 = load i32, ptr %num_levels, align 4, !tbaa !62
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds double, ptr %16, i64 %idxprom
  store double 1.000000e+00, ptr %arrayidx, align 8, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %20 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight11 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %20, i32 0, i32 46
  store ptr %19, ptr %relax_weight11, align 8, !tbaa !53
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.end5
  %21 = load double, ptr %relax_wt.addr, align 8, !tbaa !65
  %22 = load ptr, ptr %relax_wt_array, align 8, !tbaa !4
  %23 = load i32, ptr %level.addr, align 4, !tbaa !62
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds double, ptr %22, i64 %idxprom13
  store double %21, ptr %arrayidx14, align 8, !tbaa !65
  %24 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %relax_wt_array) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetOuterWt(ptr noundef %AMGhybrid_vdata, double noundef %outer_wt) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %outer_wt.addr = alloca double, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %outer_wt_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %outer_wt, ptr %outer_wt.addr, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %outer_wt_array) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1355, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %max_levels, align 8, !tbaa !40
  store i32 %4, ptr %num_levels, align 4, !tbaa !62
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 47
  %6 = load ptr, ptr %omega, align 8, !tbaa !54
  store ptr %6, ptr %outer_wt_array, align 8, !tbaa !4
  %7 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %8 = load i32, ptr %num_levels, align 4, !tbaa !62
  %conv = sext i32 %8 to i64
  %call = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call, ptr %outer_wt_array, align 8, !tbaa !4
  %9 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 47
  store ptr %9, ptr %omega2, align 8, !tbaa !54
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %11 = load i32, ptr %i, align 4, !tbaa !62
  %12 = load i32, ptr %num_levels, align 4, !tbaa !62
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load double, ptr %outer_wt.addr, align 8, !tbaa !65
  %14 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %15 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds double, ptr %14, i64 %idxprom
  store double %13, ptr %arrayidx, align 8, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %17, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %outer_wt_array) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetLevelOuterWt(ptr noundef %AMGhybrid_vdata, double noundef %outer_wt, i32 noundef %level) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %outer_wt.addr = alloca double, align 8
  %level.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_levels = alloca i32, align 4
  %outer_wt_array = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store double %outer_wt, ptr %outer_wt.addr, align 8, !tbaa !65
  store i32 %level, ptr %level.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %outer_wt_array) #3
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1388, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 33
  %4 = load i32, ptr %max_levels, align 8, !tbaa !40
  store i32 %4, ptr %num_levels, align 4, !tbaa !62
  %5 = load i32, ptr %level.addr, align 4, !tbaa !62
  %6 = load i32, ptr %num_levels, align 4, !tbaa !62
  %sub = sub nsw i32 %6, 1
  %cmp = icmp sgt i32 %5, %sub
  br i1 %cmp, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 27
  %8 = load i32, ptr %print_level, align 4, !tbaa !33
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then1
  %call = call i32 (ptr, ...) @hypre_printf(ptr noundef @.str.4)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1399, i32 noundef 28, ptr noundef null)
  %9 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %10, i32 0, i32 47
  %11 = load ptr, ptr %omega, align 8, !tbaa !54
  store ptr %11, ptr %outer_wt_array, align 8, !tbaa !4
  %12 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end5
  %13 = load i32, ptr %num_levels, align 4, !tbaa !62
  %conv = sext i32 %13 to i64
  %call8 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call8, ptr %outer_wt_array, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then7
  %14 = load i32, ptr %i, align 4, !tbaa !62
  %15 = load i32, ptr %num_levels, align 4, !tbaa !62
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds double, ptr %16, i64 %idxprom
  store double 1.000000e+00, ptr %arrayidx, align 8, !tbaa !65
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %20 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega11 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %20, i32 0, i32 47
  store ptr %19, ptr %omega11, align 8, !tbaa !54
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.end5
  %21 = load double, ptr %outer_wt.addr, align 8, !tbaa !65
  %22 = load ptr, ptr %outer_wt_array, align 8, !tbaa !4
  %23 = load i32, ptr %level.addr, align 4, !tbaa !62
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds double, ptr %22, i64 %idxprom13
  store double %21, ptr %arrayidx14, align 8, !tbaa !65
  %24 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %24, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %outer_wt_array) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNumPaths(ptr noundef %AMGhybrid_vdata, i32 noundef %num_paths) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_paths.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %num_paths, ptr %num_paths.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1428, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %num_paths.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1433, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %num_paths.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_paths3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 48
  store i32 %5, ptr %num_paths3, align 8, !tbaa !56
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetDofFunc(ptr noundef %AMGhybrid_vdata, ptr noundef %dof_func) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %dof_func.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %dof_func, ptr %dof_func.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1453, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1458, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 52
  %6 = load ptr, ptr %dof_func4, align 8, !tbaa !59
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 52
  %8 = load ptr, ptr %dof_func6, align 8, !tbaa !59
  call void @hypre_Free(ptr noundef %8, i32 noundef 0)
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 52
  store ptr null, ptr %dof_func7, align 8, !tbaa !59
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %10 = load ptr, ptr %dof_func.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 52
  store ptr %10, ptr %dof_func9, align 8, !tbaa !59
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetAggNumLevels(ptr noundef %AMGhybrid_vdata, i32 noundef %agg_num_levels) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %agg_num_levels.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %agg_num_levels, ptr %agg_num_levels.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1481, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %agg_num_levels.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1486, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %agg_num_levels.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %agg_num_levels3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 49
  store i32 %5, ptr %agg_num_levels3, align 4, !tbaa !55
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNumFunctions(ptr noundef %AMGhybrid_vdata, i32 noundef %num_functions) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_functions.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %num_functions, ptr %num_functions.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1506, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %num_functions.addr, align 4, !tbaa !62
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1511, i32 noundef 20, ptr noundef null)
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = load i32, ptr %num_functions.addr, align 4, !tbaa !62
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_functions3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 50
  store i32 %5, ptr %num_functions3, align 8, !tbaa !57
  %7 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetNodal(ptr noundef %AMGhybrid_vdata, i32 noundef %nodal) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %nodal.addr = alloca i32, align 4
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store i32 %nodal, ptr %nodal.addr, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1531, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nodal.addr, align 4, !tbaa !62
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nodal1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %4, i32 0, i32 51
  store i32 %3, ptr %nodal1, align 4, !tbaa !58
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetSetupSolveTime(ptr noundef %AMGhybrid_vdata, ptr noundef %time) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %time.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca [4 x double], align 16
  %comm = alloca ptr, align 8
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %time, ptr %time.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1550, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr %t) #3
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 21
  %4 = load double, ptr %setup_time1, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds [4 x double], ptr %t, i64 0, i64 0
  store double %4, ptr %arrayidx, align 16, !tbaa !65
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 23
  %6 = load double, ptr %solve_time1, align 8, !tbaa !28
  %arrayidx1 = getelementptr inbounds [4 x double], ptr %t, i64 0, i64 1
  store double %6, ptr %arrayidx1, align 8, !tbaa !65
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 22
  %8 = load double, ptr %setup_time2, align 8, !tbaa !27
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %t, i64 0, i64 2
  store double %8, ptr %arrayidx2, align 16, !tbaa !65
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 24
  %10 = load double, ptr %solve_time2, align 8, !tbaa !29
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %t, i64 0, i64 3
  store double %10, ptr %arrayidx3, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #3
  %11 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %comm4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %11, i32 0, i32 25
  %12 = load ptr, ptr %comm4, align 8, !tbaa !75
  store ptr %12, ptr %comm, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [4 x double], ptr %t, i64 0, i64 0
  %13 = load ptr, ptr %time.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %comm, align 8, !tbaa !4
  %call = call i32 @hypre_MPI_Allreduce(ptr noundef %arraydecay, ptr noundef %13, i32 noundef 4, ptr noundef @ompi_mpi_double, ptr noundef @ompi_mpi_op_max, ptr noundef %14)
  %15 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr %t) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @hypre_MPI_Allreduce(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetNumIterations(ptr noundef %AMGhybrid_vdata, ptr noundef %num_its) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %num_its.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %num_its, ptr %num_its.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1574, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 17
  %4 = load i32, ptr %dscg_num_its, align 8, !tbaa !30
  %5 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %pcg_num_its, align 4, !tbaa !31
  %add = add nsw i32 %4, %6
  %7 = load ptr, ptr %num_its.addr, align 8, !tbaa !4
  store i32 %add, ptr %7, align 4, !tbaa !62
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetDSCGNumIterations(ptr noundef %AMGhybrid_vdata, ptr noundef %dscg_num_its) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %dscg_num_its.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %dscg_num_its, ptr %dscg_num_its.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1594, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 17
  %4 = load i32, ptr %dscg_num_its1, align 8, !tbaa !30
  %5 = load ptr, ptr %dscg_num_its.addr, align 8, !tbaa !4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetPCGNumIterations(ptr noundef %AMGhybrid_vdata, ptr noundef %pcg_num_its) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %pcg_num_its.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %pcg_num_its, ptr %pcg_num_its.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1614, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 18
  %4 = load i32, ptr %pcg_num_its1, align 4, !tbaa !31
  %5 = load ptr, ptr %pcg_num_its.addr, align 8, !tbaa !4
  store i32 %4, ptr %5, align 4, !tbaa !62
  %6 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridGetFinalRelativeResidualNorm(ptr noundef %AMGhybrid_vdata, ptr noundef %final_rel_res_norm) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %final_rel_res_norm.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %final_rel_res_norm, ptr %final_rel_res_norm.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1634, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %final_rel_res_norm1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %3, i32 0, i32 19
  %4 = load double, ptr %final_rel_res_norm1, align 8, !tbaa !76
  %5 = load ptr, ptr %final_rel_res_norm.addr, align 8, !tbaa !4
  store double %4, ptr %5, align 8, !tbaa !65
  %6 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %6, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSetup(ptr noundef %AMGhybrid_vdata, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  %1 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1656, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMGHybridSolve(ptr noundef %AMGhybrid_vdata, ptr noundef %A, ptr noundef %b, ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %AMGhybrid_vdata.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %AMGhybrid_data = alloca ptr, align 8
  %tol = alloca double, align 8
  %a_tol = alloca double, align 8
  %cf_tol = alloca double, align 8
  %dscg_max_its = alloca i32, align 4
  %pcg_max_its = alloca i32, align 4
  %two_norm = alloca i32, align 4
  %stop_crit = alloca i32, align 4
  %rel_change = alloca i32, align 4
  %recompute_residual = alloca i32, align 4
  %recompute_residual_p = alloca i32, align 4
  %logging = alloca i32, align 4
  %print_level = alloca i32, align 4
  %setup_type = alloca i32, align 4
  %solver_type = alloca i32, align 4
  %k_dim = alloca i32, align 4
  %strong_threshold = alloca double, align 8
  %max_row_sum = alloca double, align 8
  %trunc_factor = alloca double, align 8
  %pmax = alloca i32, align 4
  %max_levels = alloca i32, align 4
  %measure_type = alloca i32, align 4
  %coarsen_type = alloca i32, align 4
  %interp_type = alloca i32, align 4
  %cycle_type = alloca i32, align 4
  %num_paths = alloca i32, align 4
  %agg_num_levels = alloca i32, align 4
  %num_functions = alloca i32, align 4
  %nodal = alloca i32, align 4
  %relax_order = alloca i32, align 4
  %keepT = alloca i32, align 4
  %num_grid_sweeps = alloca ptr, align 8
  %grid_relax_type = alloca ptr, align 8
  %grid_relax_points = alloca ptr, align 8
  %relax_weight = alloca ptr, align 8
  %omega = alloca ptr, align 8
  %dof_func = alloca ptr, align 8
  %boom_ngs = alloca ptr, align 8
  %boom_grt = alloca ptr, align 8
  %boom_dof_func = alloca ptr, align 8
  %boom_grp = alloca ptr, align 8
  %boom_rlxw = alloca ptr, align 8
  %boom_omega = alloca ptr, align 8
  %pcg_default = alloca i32, align 4
  %pcg_precond_solve = alloca ptr, align 8
  %pcg_precond_setup = alloca ptr, align 8
  %pcg_precond = alloca ptr, align 8
  %pcg_solver = alloca ptr, align 8
  %pcg_functions = alloca ptr, align 8
  %gmres_functions = alloca ptr, align 8
  %bicgstab_functions = alloca ptr, align 8
  %dscg_num_its = alloca i32, align 4
  %pcg_num_its = alloca i32, align 4
  %converged = alloca i32, align 4
  %num_variables = alloca i32, align 4
  %res_norm = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sol_print_level = alloca i32, align 4
  %pre_print_level = alloca i32, align 4
  %max_coarse_size = alloca i32, align 4
  %seq_threshold = alloca i32, align 4
  %min_coarse_size = alloca i32, align 4
  %nongalerk_num_tol = alloca i32, align 4
  %nongalerkin_tol = alloca ptr, align 8
  %tt1 = alloca double, align 8
  %tt2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %comm = alloca ptr, align 8
  store ptr %AMGhybrid_vdata, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AMGhybrid_data) #3
  %0 = load ptr, ptr %AMGhybrid_vdata.addr, align 8, !tbaa !4
  store ptr %0, ptr %AMGhybrid_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_tol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %cf_tol) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dscg_max_its) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcg_max_its) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %two_norm) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stop_crit) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %rel_change) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %recompute_residual) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %recompute_residual_p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %logging) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %print_level) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %setup_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %solver_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k_dim) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %strong_threshold) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_row_sum) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %trunc_factor) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pmax) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_levels) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %measure_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %coarsen_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %interp_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cycle_type) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_paths) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %agg_num_levels) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_functions) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nodal) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %relax_order) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %keepT) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %grid_relax_type) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %grid_relax_points) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %relax_weight) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %omega) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %dof_func) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_ngs) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_grt) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_dof_func) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_grp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_rlxw) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %boom_omega) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcg_default) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_precond_solve) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_precond_setup) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_precond) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_solver) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcg_functions) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gmres_functions) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bicgstab_functions) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %dscg_num_its) #3
  store i32 0, ptr %dscg_num_its, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr %pcg_num_its) #3
  store i32 0, ptr %pcg_num_its, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr %converged) #3
  store i32 0, ptr %converged, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_variables) #3
  %1 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %local_vector, align 8, !tbaa !77
  %size = getelementptr inbounds %struct.hypre_Vector, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %size, align 8, !tbaa !79
  store i32 %3, ptr %num_variables, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_norm) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sol_print_level) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pre_print_level) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_coarse_size) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq_threshold) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_coarse_size) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nongalerk_num_tol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nongalerkin_tol) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tt2) #3
  %4 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1755, i32 noundef 12, ptr noundef null)
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup411

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %6, i32 0, i32 21
  store double 0.000000e+00, ptr %setup_time1, align 8, !tbaa !26
  %7 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %7, i32 0, i32 22
  store double 0.000000e+00, ptr %setup_time2, align 8, !tbaa !27
  %8 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time1 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %8, i32 0, i32 23
  store double 0.000000e+00, ptr %solve_time1, align 8, !tbaa !28
  %9 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %9, i32 0, i32 24
  store double 0.000000e+00, ptr %solve_time2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #3
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %comm1 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %comm1, align 8, !tbaa !81
  store ptr %11, ptr %comm, align 8, !tbaa !4
  %12 = load ptr, ptr %comm, align 8, !tbaa !4
  %13 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %comm2 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %13, i32 0, i32 25
  store ptr %12, ptr %comm2, align 8, !tbaa !75
  %14 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %tol3 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %14, i32 0, i32 0
  %15 = load double, ptr %tol3, align 8, !tbaa !12
  store double %15, ptr %tol, align 8, !tbaa !65
  %16 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %a_tol4 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %16, i32 0, i32 1
  %17 = load double, ptr %a_tol4, align 8, !tbaa !13
  store double %17, ptr %a_tol, align 8, !tbaa !65
  %18 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cf_tol5 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %18, i32 0, i32 2
  %19 = load double, ptr %cf_tol5, align 8, !tbaa !14
  store double %19, ptr %cf_tol, align 8, !tbaa !65
  %20 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_max_its6 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %dscg_max_its6, align 8, !tbaa !15
  store i32 %21, ptr %dscg_max_its, align 4, !tbaa !62
  %22 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_max_its7 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %pcg_max_its7, align 4, !tbaa !16
  store i32 %23, ptr %pcg_max_its, align 4, !tbaa !62
  %24 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %two_norm8 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %two_norm8, align 8, !tbaa !17
  store i32 %25, ptr %two_norm, align 4, !tbaa !62
  %26 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %stop_crit9 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %stop_crit9, align 4, !tbaa !18
  store i32 %27, ptr %stop_crit, align 4, !tbaa !62
  %28 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %rel_change10 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %rel_change10, align 8, !tbaa !19
  store i32 %29, ptr %rel_change, align 4, !tbaa !62
  %30 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual11 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %recompute_residual11, align 4, !tbaa !66
  store i32 %31, ptr %recompute_residual, align 4, !tbaa !62
  %32 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %recompute_residual_p12 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %32, i32 0, i32 9
  %33 = load i32, ptr %recompute_residual_p12, align 8, !tbaa !67
  store i32 %33, ptr %recompute_residual_p, align 4, !tbaa !62
  %34 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %logging13 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %34, i32 0, i32 26
  %35 = load i32, ptr %logging13, align 8, !tbaa !32
  store i32 %35, ptr %logging, align 4, !tbaa !62
  %36 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %print_level14 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %36, i32 0, i32 27
  %37 = load i32, ptr %print_level14, align 4, !tbaa !33
  store i32 %37, ptr %print_level, align 4, !tbaa !62
  %38 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_type15 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %38, i32 0, i32 32
  %39 = load i32, ptr %setup_type15, align 4, !tbaa !35
  store i32 %39, ptr %setup_type, align 4, !tbaa !62
  %40 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solver_type16 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %40, i32 0, i32 10
  %41 = load i32, ptr %solver_type16, align 4, !tbaa !21
  store i32 %41, ptr %solver_type, align 4, !tbaa !62
  %42 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %k_dim17 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %42, i32 0, i32 11
  %43 = load i32, ptr %k_dim17, align 8, !tbaa !34
  store i32 %43, ptr %k_dim, align 4, !tbaa !62
  %44 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %strong_threshold18 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %44, i32 0, i32 28
  %45 = load double, ptr %strong_threshold18, align 8, !tbaa !36
  store double %45, ptr %strong_threshold, align 8, !tbaa !65
  %46 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_row_sum19 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %46, i32 0, i32 29
  %47 = load double, ptr %max_row_sum19, align 8, !tbaa !37
  store double %47, ptr %max_row_sum, align 8, !tbaa !65
  %48 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %trunc_factor20 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %48, i32 0, i32 30
  %49 = load double, ptr %trunc_factor20, align 8, !tbaa !38
  store double %49, ptr %trunc_factor, align 8, !tbaa !65
  %50 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pmax21 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %50, i32 0, i32 31
  %51 = load i32, ptr %pmax21, align 8, !tbaa !39
  store i32 %51, ptr %pmax, align 4, !tbaa !62
  %52 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_levels22 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %52, i32 0, i32 33
  %53 = load i32, ptr %max_levels22, align 8, !tbaa !40
  store i32 %53, ptr %max_levels, align 4, !tbaa !62
  %54 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %measure_type23 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %54, i32 0, i32 34
  %55 = load i32, ptr %measure_type23, align 4, !tbaa !41
  store i32 %55, ptr %measure_type, align 4, !tbaa !62
  %56 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %coarsen_type24 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %56, i32 0, i32 35
  %57 = load i32, ptr %coarsen_type24, align 8, !tbaa !42
  store i32 %57, ptr %coarsen_type, align 4, !tbaa !62
  %58 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %interp_type25 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %58, i32 0, i32 36
  %59 = load i32, ptr %interp_type25, align 4, !tbaa !43
  store i32 %59, ptr %interp_type, align 4, !tbaa !62
  %60 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %cycle_type26 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %60, i32 0, i32 37
  %61 = load i32, ptr %cycle_type26, align 8, !tbaa !44
  store i32 %61, ptr %cycle_type, align 4, !tbaa !62
  %62 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_paths27 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %62, i32 0, i32 48
  %63 = load i32, ptr %num_paths27, align 8, !tbaa !56
  store i32 %63, ptr %num_paths, align 4, !tbaa !62
  %64 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %agg_num_levels28 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %64, i32 0, i32 49
  %65 = load i32, ptr %agg_num_levels28, align 4, !tbaa !55
  store i32 %65, ptr %agg_num_levels, align 4, !tbaa !62
  %66 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_functions29 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %66, i32 0, i32 50
  %67 = load i32, ptr %num_functions29, align 8, !tbaa !57
  store i32 %67, ptr %num_functions, align 4, !tbaa !62
  %68 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nodal30 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %68, i32 0, i32 51
  %69 = load i32, ptr %nodal30, align 4, !tbaa !58
  store i32 %69, ptr %nodal, align 4, !tbaa !62
  %70 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %num_grid_sweeps31 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %70, i32 0, i32 43
  %71 = load ptr, ptr %num_grid_sweeps31, align 8, !tbaa !50
  store ptr %71, ptr %num_grid_sweeps, align 8, !tbaa !4
  %72 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_type32 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %72, i32 0, i32 44
  %73 = load ptr, ptr %grid_relax_type32, align 8, !tbaa !51
  store ptr %73, ptr %grid_relax_type, align 8, !tbaa !4
  %74 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %grid_relax_points33 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %74, i32 0, i32 45
  %75 = load ptr, ptr %grid_relax_points33, align 8, !tbaa !52
  store ptr %75, ptr %grid_relax_points, align 8, !tbaa !4
  %76 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_weight34 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %76, i32 0, i32 46
  %77 = load ptr, ptr %relax_weight34, align 8, !tbaa !53
  store ptr %77, ptr %relax_weight, align 8, !tbaa !4
  %78 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %relax_order35 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %78, i32 0, i32 38
  %79 = load i32, ptr %relax_order35, align 4, !tbaa !45
  store i32 %79, ptr %relax_order, align 4, !tbaa !62
  %80 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %keepT36 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %80, i32 0, i32 39
  %81 = load i32, ptr %keepT36, align 8, !tbaa !46
  store i32 %81, ptr %keepT, align 4, !tbaa !62
  %82 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %omega37 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %82, i32 0, i32 47
  %83 = load ptr, ptr %omega37, align 8, !tbaa !54
  store ptr %83, ptr %omega, align 8, !tbaa !4
  %84 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %max_coarse_size38 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %84, i32 0, i32 40
  %85 = load i32, ptr %max_coarse_size38, align 4, !tbaa !47
  store i32 %85, ptr %max_coarse_size, align 4, !tbaa !62
  %86 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %min_coarse_size39 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %86, i32 0, i32 41
  %87 = load i32, ptr %min_coarse_size39, align 8, !tbaa !48
  store i32 %87, ptr %min_coarse_size, align 4, !tbaa !62
  %88 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %seq_threshold40 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %88, i32 0, i32 42
  %89 = load i32, ptr %seq_threshold40, align 4, !tbaa !49
  store i32 %89, ptr %seq_threshold, align 4, !tbaa !62
  %90 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dof_func41 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %90, i32 0, i32 52
  %91 = load ptr, ptr %dof_func41, align 8, !tbaa !59
  store ptr %91, ptr %dof_func, align 8, !tbaa !4
  %92 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_default42 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %92, i32 0, i32 12
  %93 = load i32, ptr %pcg_default42, align 4, !tbaa !20
  store i32 %93, ptr %pcg_default, align 4, !tbaa !62
  %94 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerk_num_tol43 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %94, i32 0, i32 53
  %95 = load i32, ptr %nongalerk_num_tol43, align 8, !tbaa !60
  store i32 %95, ptr %nongalerk_num_tol, align 4, !tbaa !62
  %96 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %nongalerkin_tol44 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %96, i32 0, i32 54
  %97 = load ptr, ptr %nongalerkin_tol44, align 8, !tbaa !61
  store ptr %97, ptr %nongalerkin_tol, align 8, !tbaa !4
  %98 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %tobool45 = icmp ne ptr %98, null
  br i1 %tobool45, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1812, i32 noundef 28, ptr noundef null)
  %99 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %99, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end
  %100 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %local_vector48 = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %100, i32 0, i32 6
  %101 = load ptr, ptr %local_vector48, align 8, !tbaa !77
  %size49 = getelementptr inbounds %struct.hypre_Vector, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %size49, align 8, !tbaa !79
  store i32 %102, ptr %num_variables, align 4, !tbaa !62
  %103 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %tobool50 = icmp ne ptr %103, null
  br i1 %tobool50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end47
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1818, i32 noundef 20, ptr noundef null)
  %104 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %104, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %105 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %tobool53 = icmp ne ptr %105, null
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 1823, i32 noundef 36, ptr noundef null)
  %106 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %106, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  %107 = load i32, ptr %print_level, align 4, !tbaa !62
  %div = sdiv i32 %107, 10
  store i32 %div, ptr %pre_print_level, align 4, !tbaa !62
  %108 = load i32, ptr %print_level, align 4, !tbaa !62
  %109 = load i32, ptr %pre_print_level, align 4, !tbaa !62
  %mul = mul nsw i32 %109, 10
  %sub = sub nsw i32 %108, %mul
  store i32 %sub, ptr %sol_print_level, align 4, !tbaa !62
  %110 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver56 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %110, i32 0, i32 16
  %111 = load ptr, ptr %pcg_solver56, align 8, !tbaa !25
  store ptr %111, ptr %pcg_solver, align 8, !tbaa !4
  %112 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond57 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %112, i32 0, i32 15
  %113 = load ptr, ptr %pcg_precond57, align 8, !tbaa !24
  store ptr %113, ptr %pcg_precond, align 8, !tbaa !4
  %114 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its58 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %114, i32 0, i32 17
  store i32 0, ptr %dscg_num_its58, align 8, !tbaa !30
  %115 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its59 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %115, i32 0, i32 18
  store i32 0, ptr %pcg_num_its59, align 4, !tbaa !31
  %116 = load i32, ptr %setup_type, align 4, !tbaa !62
  %tobool60 = icmp ne i32 %116, 0
  br i1 %tobool60, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end55
  %117 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %cmp = icmp eq ptr %117, null
  br i1 %cmp, label %if.then61, label %if.end166

if.then61:                                        ; preds = %lor.lhs.false, %if.end55
  %118 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %tobool62 = icmp ne ptr %118, null
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then61
  %119 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call = call i32 @hypre_BoomerAMGDestroy(ptr noundef %119)
  store ptr null, ptr %pcg_precond, align 8, !tbaa !4
  %120 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond64 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %120, i32 0, i32 15
  store ptr null, ptr %pcg_precond64, align 8, !tbaa !24
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then61
  %121 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp66 = icmp eq i32 %121, 1
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end65
  %call68 = call double @hypre_MPI_Wtime()
  store double %call68, ptr %tt1, align 8, !tbaa !65
  %122 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %cmp69 = icmp eq ptr %122, null
  br i1 %cmp69, label %if.then70, label %if.end83

if.then70:                                        ; preds = %if.then67
  %call71 = call ptr @hypre_PCGFunctionsCreate(ptr noundef @hypre_CAlloc, ptr noundef @hypre_ParKrylovFree, ptr noundef @hypre_ParKrylovCommInfo, ptr noundef @hypre_ParKrylovCreateVector, ptr noundef @hypre_ParKrylovDestroyVector, ptr noundef @hypre_ParKrylovMatvecCreate, ptr noundef @hypre_ParKrylovMatvec, ptr noundef @hypre_ParKrylovMatvecDestroy, ptr noundef @hypre_ParKrylovInnerProd, ptr noundef @hypre_ParKrylovCopyVector, ptr noundef @hypre_ParKrylovClearVector, ptr noundef @hypre_ParKrylovScaleVector, ptr noundef @hypre_ParKrylovAxpy, ptr noundef @hypre_ParKrylovIdentitySetup, ptr noundef @hypre_ParKrylovIdentity)
  store ptr %call71, ptr %pcg_functions, align 8, !tbaa !4
  %123 = load ptr, ptr %pcg_functions, align 8, !tbaa !4
  %call72 = call ptr @hypre_PCGCreate(ptr noundef %123)
  store ptr %call72, ptr %pcg_solver, align 8, !tbaa !4
  %124 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %125 = load double, ptr %tol, align 8, !tbaa !65
  %call73 = call i32 @hypre_PCGSetTol(ptr noundef %124, double noundef %125)
  %126 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %127 = load double, ptr %a_tol, align 8, !tbaa !65
  %call74 = call i32 @hypre_PCGSetAbsoluteTol(ptr noundef %126, double noundef %127)
  %128 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %129 = load i32, ptr %two_norm, align 4, !tbaa !62
  %call75 = call i32 @hypre_PCGSetTwoNorm(ptr noundef %128, i32 noundef %129)
  %130 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %131 = load i32, ptr %stop_crit, align 4, !tbaa !62
  %call76 = call i32 @hypre_PCGSetStopCrit(ptr noundef %130, i32 noundef %131)
  %132 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %133 = load i32, ptr %rel_change, align 4, !tbaa !62
  %call77 = call i32 @hypre_PCGSetRelChange(ptr noundef %132, i32 noundef %133)
  %134 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %135 = load i32, ptr %recompute_residual, align 4, !tbaa !62
  %call78 = call i32 @hypre_PCGSetRecomputeResidual(ptr noundef %134, i32 noundef %135)
  %136 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %137 = load i32, ptr %recompute_residual_p, align 4, !tbaa !62
  %call79 = call i32 @hypre_PCGSetRecomputeResidualP(ptr noundef %136, i32 noundef %137)
  %138 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %139 = load i32, ptr %logging, align 4, !tbaa !62
  %call80 = call i32 @hypre_PCGSetLogging(ptr noundef %138, i32 noundef %139)
  %140 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %141 = load i32, ptr %sol_print_level, align 4, !tbaa !62
  %call81 = call i32 @hypre_PCGSetPrintLevel(ptr noundef %140, i32 noundef %141)
  %142 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call82 = call i32 @hypre_PCGSetHybrid(ptr noundef %142, i32 noundef -1)
  store ptr null, ptr %pcg_precond, align 8, !tbaa !4
  br label %if.end83

if.end83:                                         ; preds = %if.then70, %if.then67
  %143 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %144 = load i32, ptr %dscg_max_its, align 4, !tbaa !62
  %call84 = call i32 @hypre_PCGSetMaxIter(ptr noundef %143, i32 noundef %144)
  %145 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %146 = load double, ptr %cf_tol, align 8, !tbaa !65
  %call85 = call i32 @hypre_PCGSetConvergenceFactorTol(ptr noundef %145, double noundef %146)
  %147 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %148 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call86 = call i32 @hypre_PCGSetPrecond(ptr noundef %147, ptr noundef @HYPRE_ParCSRDiagScale, ptr noundef @HYPRE_ParCSRDiagScaleSetup, ptr noundef %148)
  %149 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %150 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %152 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call87 = call i32 @hypre_PCGSetup(ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152)
  %153 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %154 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver88 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %154, i32 0, i32 16
  store ptr %153, ptr %pcg_solver88, align 8, !tbaa !25
  %call89 = call double @hypre_MPI_Wtime()
  store double %call89, ptr %tt2, align 8, !tbaa !65
  %155 = load double, ptr %tt2, align 8, !tbaa !65
  %156 = load double, ptr %tt1, align 8, !tbaa !65
  %sub90 = fsub double %155, %156
  %157 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time191 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %157, i32 0, i32 21
  store double %sub90, ptr %setup_time191, align 8, !tbaa !26
  %158 = load double, ptr %tt2, align 8, !tbaa !65
  store double %158, ptr %tt1, align 8, !tbaa !65
  %159 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %160 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call92 = call i32 @hypre_PCGSolve(ptr noundef %159, ptr noundef %160, ptr noundef %161, ptr noundef %162)
  %163 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call93 = call i32 @hypre_PCGGetNumIterations(ptr noundef %163, ptr noundef %dscg_num_its)
  %164 = load i32, ptr %dscg_num_its, align 4, !tbaa !62
  %165 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its94 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %165, i32 0, i32 17
  store i32 %164, ptr %dscg_num_its94, align 8, !tbaa !30
  %166 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call95 = call i32 @hypre_PCGGetFinalRelativeResidualNorm(ptr noundef %166, ptr noundef %res_norm)
  %167 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call96 = call i32 @hypre_PCGGetConverged(ptr noundef %167, ptr noundef %converged)
  %call97 = call double @hypre_MPI_Wtime()
  store double %call97, ptr %tt2, align 8, !tbaa !65
  %168 = load double, ptr %tt2, align 8, !tbaa !65
  %169 = load double, ptr %tt1, align 8, !tbaa !65
  %sub98 = fsub double %168, %169
  %170 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time199 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %170, i32 0, i32 23
  store double %sub98, ptr %solve_time199, align 8, !tbaa !28
  br label %if.end165

if.else:                                          ; preds = %if.end65
  %171 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp100 = icmp eq i32 %171, 2
  br i1 %cmp100, label %if.then101, label %if.else132

if.then101:                                       ; preds = %if.else
  %call102 = call double @hypre_MPI_Wtime()
  store double %call102, ptr %tt1, align 8, !tbaa !65
  %172 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %cmp103 = icmp eq ptr %172, null
  br i1 %cmp103, label %if.then104, label %if.end115

if.then104:                                       ; preds = %if.then101
  %call105 = call ptr @hypre_GMRESFunctionsCreate(ptr noundef @hypre_CAlloc, ptr noundef @hypre_ParKrylovFree, ptr noundef @hypre_ParKrylovCommInfo, ptr noundef @hypre_ParKrylovCreateVector, ptr noundef @hypre_ParKrylovCreateVectorArray, ptr noundef @hypre_ParKrylovDestroyVector, ptr noundef @hypre_ParKrylovMatvecCreate, ptr noundef @hypre_ParKrylovMatvec, ptr noundef @hypre_ParKrylovMatvecDestroy, ptr noundef @hypre_ParKrylovInnerProd, ptr noundef @hypre_ParKrylovCopyVector, ptr noundef @hypre_ParKrylovClearVector, ptr noundef @hypre_ParKrylovScaleVector, ptr noundef @hypre_ParKrylovAxpy, ptr noundef @hypre_ParKrylovIdentitySetup, ptr noundef @hypre_ParKrylovIdentity)
  store ptr %call105, ptr %gmres_functions, align 8, !tbaa !4
  %173 = load ptr, ptr %gmres_functions, align 8, !tbaa !4
  %call106 = call ptr @hypre_GMRESCreate(ptr noundef %173)
  store ptr %call106, ptr %pcg_solver, align 8, !tbaa !4
  %174 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %175 = load double, ptr %tol, align 8, !tbaa !65
  %call107 = call i32 @hypre_GMRESSetTol(ptr noundef %174, double noundef %175)
  %176 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %177 = load double, ptr %a_tol, align 8, !tbaa !65
  %call108 = call i32 @hypre_GMRESSetAbsoluteTol(ptr noundef %176, double noundef %177)
  %178 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %179 = load i32, ptr %k_dim, align 4, !tbaa !62
  %call109 = call i32 @hypre_GMRESSetKDim(ptr noundef %178, i32 noundef %179)
  %180 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %181 = load i32, ptr %stop_crit, align 4, !tbaa !62
  %call110 = call i32 @hypre_GMRESSetStopCrit(ptr noundef %180, i32 noundef %181)
  %182 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %183 = load i32, ptr %rel_change, align 4, !tbaa !62
  %call111 = call i32 @hypre_GMRESSetRelChange(ptr noundef %182, i32 noundef %183)
  %184 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %185 = load i32, ptr %logging, align 4, !tbaa !62
  %call112 = call i32 @hypre_GMRESSetLogging(ptr noundef %184, i32 noundef %185)
  %186 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %187 = load i32, ptr %sol_print_level, align 4, !tbaa !62
  %call113 = call i32 @hypre_GMRESSetPrintLevel(ptr noundef %186, i32 noundef %187)
  %188 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call114 = call i32 @hypre_GMRESSetHybrid(ptr noundef %188, i32 noundef -1)
  store ptr null, ptr %pcg_precond, align 8, !tbaa !4
  br label %if.end115

if.end115:                                        ; preds = %if.then104, %if.then101
  %189 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %190 = load i32, ptr %dscg_max_its, align 4, !tbaa !62
  %call116 = call i32 @hypre_GMRESSetMaxIter(ptr noundef %189, i32 noundef %190)
  %191 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %192 = load double, ptr %cf_tol, align 8, !tbaa !65
  %call117 = call i32 @hypre_GMRESSetConvergenceFactorTol(ptr noundef %191, double noundef %192)
  %193 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %194 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call118 = call i32 @hypre_GMRESSetPrecond(ptr noundef %193, ptr noundef @HYPRE_ParCSRDiagScale, ptr noundef @HYPRE_ParCSRDiagScaleSetup, ptr noundef %194)
  %195 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %196 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %197 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %198 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call119 = call i32 @hypre_GMRESSetup(ptr noundef %195, ptr noundef %196, ptr noundef %197, ptr noundef %198)
  %199 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %200 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver120 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %200, i32 0, i32 16
  store ptr %199, ptr %pcg_solver120, align 8, !tbaa !25
  %call121 = call double @hypre_MPI_Wtime()
  store double %call121, ptr %tt2, align 8, !tbaa !65
  %201 = load double, ptr %tt2, align 8, !tbaa !65
  %202 = load double, ptr %tt1, align 8, !tbaa !65
  %sub122 = fsub double %201, %202
  %203 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time1123 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %203, i32 0, i32 21
  store double %sub122, ptr %setup_time1123, align 8, !tbaa !26
  %204 = load double, ptr %tt2, align 8, !tbaa !65
  store double %204, ptr %tt1, align 8, !tbaa !65
  %205 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %206 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %207 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %208 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call124 = call i32 @hypre_GMRESSolve(ptr noundef %205, ptr noundef %206, ptr noundef %207, ptr noundef %208)
  %209 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call125 = call i32 @hypre_GMRESGetNumIterations(ptr noundef %209, ptr noundef %dscg_num_its)
  %210 = load i32, ptr %dscg_num_its, align 4, !tbaa !62
  %211 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its126 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %211, i32 0, i32 17
  store i32 %210, ptr %dscg_num_its126, align 8, !tbaa !30
  %212 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call127 = call i32 @hypre_GMRESGetFinalRelativeResidualNorm(ptr noundef %212, ptr noundef %res_norm)
  %213 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call128 = call i32 @hypre_GMRESGetConverged(ptr noundef %213, ptr noundef %converged)
  %call129 = call double @hypre_MPI_Wtime()
  store double %call129, ptr %tt2, align 8, !tbaa !65
  %214 = load double, ptr %tt2, align 8, !tbaa !65
  %215 = load double, ptr %tt1, align 8, !tbaa !65
  %sub130 = fsub double %214, %215
  %216 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time1131 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %216, i32 0, i32 23
  store double %sub130, ptr %solve_time1131, align 8, !tbaa !28
  br label %if.end164

if.else132:                                       ; preds = %if.else
  %217 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp133 = icmp eq i32 %217, 3
  br i1 %cmp133, label %if.then134, label %if.end163

if.then134:                                       ; preds = %if.else132
  %call135 = call double @hypre_MPI_Wtime()
  store double %call135, ptr %tt1, align 8, !tbaa !65
  %218 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %cmp136 = icmp eq ptr %218, null
  br i1 %cmp136, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.then134
  %call138 = call ptr @hypre_BiCGSTABFunctionsCreate(ptr noundef @hypre_ParKrylovCreateVector, ptr noundef @hypre_ParKrylovDestroyVector, ptr noundef @hypre_ParKrylovMatvecCreate, ptr noundef @hypre_ParKrylovMatvec, ptr noundef @hypre_ParKrylovMatvecDestroy, ptr noundef @hypre_ParKrylovInnerProd, ptr noundef @hypre_ParKrylovCopyVector, ptr noundef @hypre_ParKrylovClearVector, ptr noundef @hypre_ParKrylovScaleVector, ptr noundef @hypre_ParKrylovAxpy, ptr noundef @hypre_ParKrylovCommInfo, ptr noundef @hypre_ParKrylovIdentitySetup, ptr noundef @hypre_ParKrylovIdentity)
  store ptr %call138, ptr %bicgstab_functions, align 8, !tbaa !4
  %219 = load ptr, ptr %bicgstab_functions, align 8, !tbaa !4
  %call139 = call ptr @hypre_BiCGSTABCreate(ptr noundef %219)
  store ptr %call139, ptr %pcg_solver, align 8, !tbaa !4
  %220 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %221 = load double, ptr %tol, align 8, !tbaa !65
  %call140 = call i32 @hypre_BiCGSTABSetTol(ptr noundef %220, double noundef %221)
  %222 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %223 = load double, ptr %a_tol, align 8, !tbaa !65
  %call141 = call i32 @hypre_BiCGSTABSetAbsoluteTol(ptr noundef %222, double noundef %223)
  %224 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %225 = load i32, ptr %stop_crit, align 4, !tbaa !62
  %call142 = call i32 @hypre_BiCGSTABSetStopCrit(ptr noundef %224, i32 noundef %225)
  %226 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %227 = load i32, ptr %logging, align 4, !tbaa !62
  %call143 = call i32 @hypre_BiCGSTABSetLogging(ptr noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %229 = load i32, ptr %sol_print_level, align 4, !tbaa !62
  %call144 = call i32 @hypre_BiCGSTABSetPrintLevel(ptr noundef %228, i32 noundef %229)
  %230 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call145 = call i32 @hypre_BiCGSTABSetHybrid(ptr noundef %230, i32 noundef -1)
  store ptr null, ptr %pcg_precond, align 8, !tbaa !4
  br label %if.end146

if.end146:                                        ; preds = %if.then137, %if.then134
  %231 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %232 = load i32, ptr %dscg_max_its, align 4, !tbaa !62
  %call147 = call i32 @hypre_BiCGSTABSetMaxIter(ptr noundef %231, i32 noundef %232)
  %233 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %234 = load double, ptr %cf_tol, align 8, !tbaa !65
  %call148 = call i32 @hypre_BiCGSTABSetConvergenceFactorTol(ptr noundef %233, double noundef %234)
  %235 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %236 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call149 = call i32 @hypre_BiCGSTABSetPrecond(ptr noundef %235, ptr noundef @HYPRE_ParCSRDiagScale, ptr noundef @HYPRE_ParCSRDiagScaleSetup, ptr noundef %236)
  %237 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %238 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %239 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call150 = call i32 @hypre_BiCGSTABSetup(ptr noundef %237, ptr noundef %238, ptr noundef %239, ptr noundef %240)
  %241 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %242 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_solver151 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %242, i32 0, i32 16
  store ptr %241, ptr %pcg_solver151, align 8, !tbaa !25
  %call152 = call double @hypre_MPI_Wtime()
  store double %call152, ptr %tt2, align 8, !tbaa !65
  %243 = load double, ptr %tt2, align 8, !tbaa !65
  %244 = load double, ptr %tt1, align 8, !tbaa !65
  %sub153 = fsub double %243, %244
  %245 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time1154 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %245, i32 0, i32 21
  store double %sub153, ptr %setup_time1154, align 8, !tbaa !26
  %246 = load double, ptr %tt2, align 8, !tbaa !65
  store double %246, ptr %tt1, align 8, !tbaa !65
  %247 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %248 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %249 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call155 = call i32 @hypre_BiCGSTABSolve(ptr noundef %247, ptr noundef %248, ptr noundef %249, ptr noundef %250)
  %251 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call156 = call i32 @hypre_BiCGSTABGetNumIterations(ptr noundef %251, ptr noundef %dscg_num_its)
  %252 = load i32, ptr %dscg_num_its, align 4, !tbaa !62
  %253 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %dscg_num_its157 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %253, i32 0, i32 17
  store i32 %252, ptr %dscg_num_its157, align 8, !tbaa !30
  %254 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call158 = call i32 @hypre_BiCGSTABGetFinalRelativeResidualNorm(ptr noundef %254, ptr noundef %res_norm)
  %255 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call159 = call i32 @hypre_BiCGSTABGetConverged(ptr noundef %255, ptr noundef %converged)
  %call160 = call double @hypre_MPI_Wtime()
  store double %call160, ptr %tt2, align 8, !tbaa !65
  %256 = load double, ptr %tt2, align 8, !tbaa !65
  %257 = load double, ptr %tt1, align 8, !tbaa !65
  %sub161 = fsub double %256, %257
  %258 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time1162 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %258, i32 0, i32 23
  store double %sub161, ptr %solve_time1162, align 8, !tbaa !28
  br label %if.end163

if.end163:                                        ; preds = %if.end146, %if.else132
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end115
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end83
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %lor.lhs.false
  %259 = load i32, ptr %converged, align 4, !tbaa !62
  %tobool167 = icmp ne i32 %259, 0
  br i1 %tobool167, label %if.then168, label %if.else172

if.then168:                                       ; preds = %if.end166
  %260 = load i32, ptr %logging, align 4, !tbaa !62
  %tobool169 = icmp ne i32 %260, 0
  br i1 %tobool169, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.then168
  %261 = load double, ptr %res_norm, align 8, !tbaa !65
  %262 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %final_rel_res_norm = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %262, i32 0, i32 19
  store double %261, ptr %final_rel_res_norm, align 8, !tbaa !76
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.then168
  br label %if.end410

if.else172:                                       ; preds = %if.end166
  %call173 = call double @hypre_MPI_Wtime()
  store double %call173, ptr %tt1, align 8, !tbaa !65
  %263 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp174 = icmp eq i32 %263, 1
  br i1 %cmp174, label %if.then175, label %if.else179

if.then175:                                       ; preds = %if.else172
  %264 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %265 = load i32, ptr %pcg_max_its, align 4, !tbaa !62
  %call176 = call i32 @hypre_PCGSetMaxIter(ptr noundef %264, i32 noundef %265)
  %266 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call177 = call i32 @hypre_PCGSetConvergenceFactorTol(ptr noundef %266, double noundef 0.000000e+00)
  %267 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call178 = call i32 @hypre_PCGSetHybrid(ptr noundef %267, i32 noundef 0)
  br label %if.end193

if.else179:                                       ; preds = %if.else172
  %268 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp180 = icmp eq i32 %268, 2
  br i1 %cmp180, label %if.then181, label %if.else185

if.then181:                                       ; preds = %if.else179
  %269 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %270 = load i32, ptr %pcg_max_its, align 4, !tbaa !62
  %call182 = call i32 @hypre_GMRESSetMaxIter(ptr noundef %269, i32 noundef %270)
  %271 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call183 = call i32 @hypre_GMRESSetConvergenceFactorTol(ptr noundef %271, double noundef 0.000000e+00)
  %272 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call184 = call i32 @hypre_GMRESSetHybrid(ptr noundef %272, i32 noundef 0)
  br label %if.end192

if.else185:                                       ; preds = %if.else179
  %273 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp186 = icmp eq i32 %273, 3
  br i1 %cmp186, label %if.then187, label %if.end191

if.then187:                                       ; preds = %if.else185
  %274 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %275 = load i32, ptr %pcg_max_its, align 4, !tbaa !62
  %call188 = call i32 @hypre_BiCGSTABSetMaxIter(ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call189 = call i32 @hypre_BiCGSTABSetConvergenceFactorTol(ptr noundef %276, double noundef 0.000000e+00)
  %277 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call190 = call i32 @hypre_BiCGSTABSetHybrid(ptr noundef %277, i32 noundef 0)
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %if.else185
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then181
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then175
  %278 = load i32, ptr %setup_type, align 4, !tbaa !62
  %tobool194 = icmp ne i32 %278, 0
  br i1 %tobool194, label %land.lhs.true, label %if.else342

land.lhs.true:                                    ; preds = %if.end193
  %279 = load i32, ptr %pcg_default, align 4, !tbaa !62
  %tobool195 = icmp ne i32 %279, 0
  br i1 %tobool195, label %if.then196, label %if.else342

if.then196:                                       ; preds = %land.lhs.true
  %call197 = call ptr @hypre_BoomerAMGCreate()
  store ptr %call197, ptr %pcg_precond, align 8, !tbaa !4
  %280 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call198 = call i32 @hypre_BoomerAMGSetMaxIter(ptr noundef %280, i32 noundef 1)
  %281 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call199 = call i32 @hypre_BoomerAMGSetTol(ptr noundef %281, double noundef 0.000000e+00)
  %282 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %283 = load i32, ptr %coarsen_type, align 4, !tbaa !62
  %call200 = call i32 @hypre_BoomerAMGSetCoarsenType(ptr noundef %282, i32 noundef %283)
  %284 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %285 = load i32, ptr %interp_type, align 4, !tbaa !62
  %call201 = call i32 @hypre_BoomerAMGSetInterpType(ptr noundef %284, i32 noundef %285)
  %286 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %287 = load i32, ptr %setup_type, align 4, !tbaa !62
  %call202 = call i32 @hypre_BoomerAMGSetSetupType(ptr noundef %286, i32 noundef %287)
  %288 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %289 = load i32, ptr %measure_type, align 4, !tbaa !62
  %call203 = call i32 @hypre_BoomerAMGSetMeasureType(ptr noundef %288, i32 noundef %289)
  %290 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %291 = load double, ptr %strong_threshold, align 8, !tbaa !65
  %call204 = call i32 @hypre_BoomerAMGSetStrongThreshold(ptr noundef %290, double noundef %291)
  %292 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %293 = load double, ptr %trunc_factor, align 8, !tbaa !65
  %call205 = call i32 @hypre_BoomerAMGSetTruncFactor(ptr noundef %292, double noundef %293)
  %294 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %295 = load i32, ptr %pmax, align 4, !tbaa !62
  %call206 = call i32 @hypre_BoomerAMGSetPMaxElmts(ptr noundef %294, i32 noundef %295)
  %296 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %297 = load i32, ptr %cycle_type, align 4, !tbaa !62
  %call207 = call i32 @hypre_BoomerAMGSetCycleType(ptr noundef %296, i32 noundef %297)
  %298 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %299 = load i32, ptr %pre_print_level, align 4, !tbaa !62
  %call208 = call i32 @hypre_BoomerAMGSetPrintLevel(ptr noundef %298, i32 noundef %299)
  %300 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %301 = load i32, ptr %max_levels, align 4, !tbaa !62
  %call209 = call i32 @hypre_BoomerAMGSetMaxLevels(ptr noundef %300, i32 noundef %301)
  %302 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %303 = load double, ptr %max_row_sum, align 8, !tbaa !65
  %call210 = call i32 @hypre_BoomerAMGSetMaxRowSum(ptr noundef %302, double noundef %303)
  %304 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %305 = load i32, ptr %max_coarse_size, align 4, !tbaa !62
  %call211 = call i32 @hypre_BoomerAMGSetMaxCoarseSize(ptr noundef %304, i32 noundef %305)
  %306 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %307 = load i32, ptr %min_coarse_size, align 4, !tbaa !62
  %call212 = call i32 @hypre_BoomerAMGSetMinCoarseSize(ptr noundef %306, i32 noundef %307)
  %308 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %309 = load i32, ptr %seq_threshold, align 4, !tbaa !62
  %call213 = call i32 @hypre_BoomerAMGSetSeqThreshold(ptr noundef %308, i32 noundef %309)
  %310 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %311 = load i32, ptr %agg_num_levels, align 4, !tbaa !62
  %call214 = call i32 @hypre_BoomerAMGSetAggNumLevels(ptr noundef %310, i32 noundef %311)
  %312 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %313 = load i32, ptr %num_paths, align 4, !tbaa !62
  %call215 = call i32 @hypre_BoomerAMGSetNumPaths(ptr noundef %312, i32 noundef %313)
  %314 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %315 = load i32, ptr %num_functions, align 4, !tbaa !62
  %call216 = call i32 @hypre_BoomerAMGSetNumFunctions(ptr noundef %314, i32 noundef %315)
  %316 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %317 = load i32, ptr %nodal, align 4, !tbaa !62
  %call217 = call i32 @hypre_BoomerAMGSetNodal(ptr noundef %316, i32 noundef %317)
  %318 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %319 = load i32, ptr %relax_order, align 4, !tbaa !62
  %call218 = call i32 @hypre_BoomerAMGSetRelaxOrder(ptr noundef %318, i32 noundef %319)
  %320 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %321 = load i32, ptr %keepT, align 4, !tbaa !62
  %call219 = call i32 @hypre_BoomerAMGSetKeepTranspose(ptr noundef %320, i32 noundef %321)
  %322 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %323 = load i32, ptr %nongalerk_num_tol, align 4, !tbaa !62
  %324 = load ptr, ptr %nongalerkin_tol, align 8, !tbaa !4
  %call220 = call i32 @hypre_BoomerAMGSetNonGalerkTol(ptr noundef %322, i32 noundef %323, ptr noundef %324)
  %325 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %tobool221 = icmp ne ptr %325, null
  br i1 %tobool221, label %if.then222, label %if.else228

if.then222:                                       ; preds = %if.then196
  %call223 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  store ptr %call223, ptr %boom_grt, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then222
  %326 = load i32, ptr %i, align 4, !tbaa !62
  %cmp224 = icmp slt i32 %326, 4
  br i1 %cmp224, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %327 = load ptr, ptr %grid_relax_type, align 8, !tbaa !4
  %328 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom = sext i32 %328 to i64
  %arrayidx = getelementptr inbounds i32, ptr %327, i64 %idxprom
  %329 = load i32, ptr %arrayidx, align 4, !tbaa !62
  %330 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %331 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom225 = sext i32 %331 to i64
  %arrayidx226 = getelementptr inbounds i32, ptr %330, i64 %idxprom225
  store i32 %329, ptr %arrayidx226, align 4, !tbaa !62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %332 = load i32, ptr %i, align 4, !tbaa !62
  %inc = add nsw i32 %332, 1
  store i32 %inc, ptr %i, align 4, !tbaa !62
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %333 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %334 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %call227 = call i32 @hypre_BoomerAMGSetGridRelaxType(ptr noundef %333, ptr noundef %334)
  br label %if.end235

if.else228:                                       ; preds = %if.then196
  %call229 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  store ptr %call229, ptr %boom_grt, align 8, !tbaa !4
  %335 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx230 = getelementptr inbounds i32, ptr %335, i64 0
  store i32 3, ptr %arrayidx230, align 4, !tbaa !62
  %336 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx231 = getelementptr inbounds i32, ptr %336, i64 1
  store i32 13, ptr %arrayidx231, align 4, !tbaa !62
  %337 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx232 = getelementptr inbounds i32, ptr %337, i64 2
  store i32 14, ptr %arrayidx232, align 4, !tbaa !62
  %338 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx233 = getelementptr inbounds i32, ptr %338, i64 3
  store i32 9, ptr %arrayidx233, align 4, !tbaa !62
  %339 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %340 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %call234 = call i32 @hypre_BoomerAMGSetGridRelaxType(ptr noundef %339, ptr noundef %340)
  br label %if.end235

if.end235:                                        ; preds = %if.else228, %for.end
  %341 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx236 = getelementptr inbounds i32, ptr %341, i64 3
  %342 = load i32, ptr %arrayidx236, align 4, !tbaa !62
  %343 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %user_coarse_relax_type = getelementptr inbounds %struct.hypre_ParAMGData, ptr %343, i32 0, i32 49
  store i32 %342, ptr %user_coarse_relax_type, align 4, !tbaa !84
  %344 = load ptr, ptr %boom_grt, align 8, !tbaa !4
  %arrayidx237 = getelementptr inbounds i32, ptr %344, i64 0
  %345 = load i32, ptr %arrayidx237, align 4, !tbaa !62
  %346 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %user_relax_type = getelementptr inbounds %struct.hypre_ParAMGData, ptr %346, i32 0, i32 50
  store i32 %345, ptr %user_relax_type, align 8, !tbaa !86
  %347 = load ptr, ptr %relax_weight, align 8, !tbaa !4
  %tobool238 = icmp ne ptr %347, null
  br i1 %tobool238, label %if.then239, label %if.end253

if.then239:                                       ; preds = %if.end235
  %348 = load i32, ptr %max_levels, align 4, !tbaa !62
  %conv = sext i32 %348 to i64
  %call240 = call ptr @hypre_CAlloc(i64 noundef %conv, i64 noundef 8, i32 noundef 0)
  store ptr %call240, ptr %boom_rlxw, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond241

for.cond241:                                      ; preds = %for.inc249, %if.then239
  %349 = load i32, ptr %i, align 4, !tbaa !62
  %350 = load i32, ptr %max_levels, align 4, !tbaa !62
  %cmp242 = icmp slt i32 %349, %350
  br i1 %cmp242, label %for.body244, label %for.end251

for.body244:                                      ; preds = %for.cond241
  %351 = load ptr, ptr %relax_weight, align 8, !tbaa !4
  %352 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom245 = sext i32 %352 to i64
  %arrayidx246 = getelementptr inbounds double, ptr %351, i64 %idxprom245
  %353 = load double, ptr %arrayidx246, align 8, !tbaa !65
  %354 = load ptr, ptr %boom_rlxw, align 8, !tbaa !4
  %355 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom247 = sext i32 %355 to i64
  %arrayidx248 = getelementptr inbounds double, ptr %354, i64 %idxprom247
  store double %353, ptr %arrayidx248, align 8, !tbaa !65
  br label %for.inc249

for.inc249:                                       ; preds = %for.body244
  %356 = load i32, ptr %i, align 4, !tbaa !62
  %inc250 = add nsw i32 %356, 1
  store i32 %inc250, ptr %i, align 4, !tbaa !62
  br label %for.cond241, !llvm.loop !87

for.end251:                                       ; preds = %for.cond241
  %357 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %358 = load ptr, ptr %boom_rlxw, align 8, !tbaa !4
  %call252 = call i32 @hypre_BoomerAMGSetRelaxWeight(ptr noundef %357, ptr noundef %358)
  br label %if.end253

if.end253:                                        ; preds = %for.end251, %if.end235
  %359 = load ptr, ptr %omega, align 8, !tbaa !4
  %tobool254 = icmp ne ptr %359, null
  br i1 %tobool254, label %if.then255, label %if.end270

if.then255:                                       ; preds = %if.end253
  %360 = load i32, ptr %max_levels, align 4, !tbaa !62
  %conv256 = sext i32 %360 to i64
  %call257 = call ptr @hypre_CAlloc(i64 noundef %conv256, i64 noundef 8, i32 noundef 0)
  store ptr %call257, ptr %boom_omega, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc266, %if.then255
  %361 = load i32, ptr %i, align 4, !tbaa !62
  %362 = load i32, ptr %max_levels, align 4, !tbaa !62
  %cmp259 = icmp slt i32 %361, %362
  br i1 %cmp259, label %for.body261, label %for.end268

for.body261:                                      ; preds = %for.cond258
  %363 = load ptr, ptr %omega, align 8, !tbaa !4
  %364 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom262 = sext i32 %364 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %363, i64 %idxprom262
  %365 = load double, ptr %arrayidx263, align 8, !tbaa !65
  %366 = load ptr, ptr %boom_omega, align 8, !tbaa !4
  %367 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom264 = sext i32 %367 to i64
  %arrayidx265 = getelementptr inbounds double, ptr %366, i64 %idxprom264
  store double %365, ptr %arrayidx265, align 8, !tbaa !65
  br label %for.inc266

for.inc266:                                       ; preds = %for.body261
  %368 = load i32, ptr %i, align 4, !tbaa !62
  %inc267 = add nsw i32 %368, 1
  store i32 %inc267, ptr %i, align 4, !tbaa !62
  br label %for.cond258, !llvm.loop !88

for.end268:                                       ; preds = %for.cond258
  %369 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %370 = load ptr, ptr %boom_omega, align 8, !tbaa !4
  %call269 = call i32 @hypre_BoomerAMGSetOmega(ptr noundef %369, ptr noundef %370)
  br label %if.end270

if.end270:                                        ; preds = %for.end268, %if.end253
  %371 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %tobool271 = icmp ne ptr %371, null
  br i1 %tobool271, label %if.then272, label %if.end321

if.then272:                                       ; preds = %if.end270
  %call273 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 4, i32 noundef 0)
  store ptr %call273, ptr %boom_ngs, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc282, %if.then272
  %372 = load i32, ptr %i, align 4, !tbaa !62
  %cmp275 = icmp slt i32 %372, 4
  br i1 %cmp275, label %for.body277, label %for.end284

for.body277:                                      ; preds = %for.cond274
  %373 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %374 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom278 = sext i32 %374 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %373, i64 %idxprom278
  %375 = load i32, ptr %arrayidx279, align 4, !tbaa !62
  %376 = load ptr, ptr %boom_ngs, align 8, !tbaa !4
  %377 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom280 = sext i32 %377 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %376, i64 %idxprom280
  store i32 %375, ptr %arrayidx281, align 4, !tbaa !62
  br label %for.inc282

for.inc282:                                       ; preds = %for.body277
  %378 = load i32, ptr %i, align 4, !tbaa !62
  %inc283 = add nsw i32 %378, 1
  store i32 %inc283, ptr %i, align 4, !tbaa !62
  br label %for.cond274, !llvm.loop !89

for.end284:                                       ; preds = %for.cond274
  %379 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %380 = load ptr, ptr %boom_ngs, align 8, !tbaa !4
  %call285 = call i32 @hypre_BoomerAMGSetNumGridSweeps(ptr noundef %379, ptr noundef %380)
  %381 = load ptr, ptr %grid_relax_points, align 8, !tbaa !4
  %tobool286 = icmp ne ptr %381, null
  br i1 %tobool286, label %if.then287, label %if.end320

if.then287:                                       ; preds = %for.end284
  %call288 = call ptr @hypre_CAlloc(i64 noundef 4, i64 noundef 8, i32 noundef 0)
  store ptr %call288, ptr %boom_grp, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc316, %if.then287
  %382 = load i32, ptr %i, align 4, !tbaa !62
  %cmp290 = icmp slt i32 %382, 4
  br i1 %cmp290, label %for.body292, label %for.end318

for.body292:                                      ; preds = %for.cond289
  %383 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %384 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom293 = sext i32 %384 to i64
  %arrayidx294 = getelementptr inbounds i32, ptr %383, i64 %idxprom293
  %385 = load i32, ptr %arrayidx294, align 4, !tbaa !62
  %conv295 = sext i32 %385 to i64
  %call296 = call ptr @hypre_CAlloc(i64 noundef %conv295, i64 noundef 4, i32 noundef 0)
  %386 = load ptr, ptr %boom_grp, align 8, !tbaa !4
  %387 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom297 = sext i32 %387 to i64
  %arrayidx298 = getelementptr inbounds ptr, ptr %386, i64 %idxprom297
  store ptr %call296, ptr %arrayidx298, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !62
  br label %for.cond299

for.cond299:                                      ; preds = %for.inc313, %for.body292
  %388 = load i32, ptr %j, align 4, !tbaa !62
  %389 = load ptr, ptr %num_grid_sweeps, align 8, !tbaa !4
  %390 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom300 = sext i32 %390 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %389, i64 %idxprom300
  %391 = load i32, ptr %arrayidx301, align 4, !tbaa !62
  %cmp302 = icmp slt i32 %388, %391
  br i1 %cmp302, label %for.body304, label %for.end315

for.body304:                                      ; preds = %for.cond299
  %392 = load ptr, ptr %grid_relax_points, align 8, !tbaa !4
  %393 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom305 = sext i32 %393 to i64
  %arrayidx306 = getelementptr inbounds ptr, ptr %392, i64 %idxprom305
  %394 = load ptr, ptr %arrayidx306, align 8, !tbaa !4
  %395 = load i32, ptr %j, align 4, !tbaa !62
  %idxprom307 = sext i32 %395 to i64
  %arrayidx308 = getelementptr inbounds i32, ptr %394, i64 %idxprom307
  %396 = load i32, ptr %arrayidx308, align 4, !tbaa !62
  %397 = load ptr, ptr %boom_grp, align 8, !tbaa !4
  %398 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom309 = sext i32 %398 to i64
  %arrayidx310 = getelementptr inbounds ptr, ptr %397, i64 %idxprom309
  %399 = load ptr, ptr %arrayidx310, align 8, !tbaa !4
  %400 = load i32, ptr %j, align 4, !tbaa !62
  %idxprom311 = sext i32 %400 to i64
  %arrayidx312 = getelementptr inbounds i32, ptr %399, i64 %idxprom311
  store i32 %396, ptr %arrayidx312, align 4, !tbaa !62
  br label %for.inc313

for.inc313:                                       ; preds = %for.body304
  %401 = load i32, ptr %j, align 4, !tbaa !62
  %inc314 = add nsw i32 %401, 1
  store i32 %inc314, ptr %j, align 4, !tbaa !62
  br label %for.cond299, !llvm.loop !90

for.end315:                                       ; preds = %for.cond299
  br label %for.inc316

for.inc316:                                       ; preds = %for.end315
  %402 = load i32, ptr %i, align 4, !tbaa !62
  %inc317 = add nsw i32 %402, 1
  store i32 %inc317, ptr %i, align 4, !tbaa !62
  br label %for.cond289, !llvm.loop !91

for.end318:                                       ; preds = %for.cond289
  %403 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %404 = load ptr, ptr %boom_grp, align 8, !tbaa !4
  %call319 = call i32 @hypre_BoomerAMGSetGridRelaxPoints(ptr noundef %403, ptr noundef %404)
  br label %if.end320

if.end320:                                        ; preds = %for.end318, %for.end284
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %if.end270
  %405 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %tobool322 = icmp ne ptr %405, null
  br i1 %tobool322, label %if.then323, label %if.end338

if.then323:                                       ; preds = %if.end321
  %406 = load i32, ptr %num_variables, align 4, !tbaa !62
  %conv324 = sext i32 %406 to i64
  %call325 = call ptr @hypre_CAlloc(i64 noundef %conv324, i64 noundef 4, i32 noundef 0)
  store ptr %call325, ptr %boom_dof_func, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !62
  br label %for.cond326

for.cond326:                                      ; preds = %for.inc334, %if.then323
  %407 = load i32, ptr %i, align 4, !tbaa !62
  %408 = load i32, ptr %num_variables, align 4, !tbaa !62
  %cmp327 = icmp slt i32 %407, %408
  br i1 %cmp327, label %for.body329, label %for.end336

for.body329:                                      ; preds = %for.cond326
  %409 = load ptr, ptr %dof_func, align 8, !tbaa !4
  %410 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom330 = sext i32 %410 to i64
  %arrayidx331 = getelementptr inbounds i32, ptr %409, i64 %idxprom330
  %411 = load i32, ptr %arrayidx331, align 4, !tbaa !62
  %412 = load ptr, ptr %boom_dof_func, align 8, !tbaa !4
  %413 = load i32, ptr %i, align 4, !tbaa !62
  %idxprom332 = sext i32 %413 to i64
  %arrayidx333 = getelementptr inbounds i32, ptr %412, i64 %idxprom332
  store i32 %411, ptr %arrayidx333, align 4, !tbaa !62
  br label %for.inc334

for.inc334:                                       ; preds = %for.body329
  %414 = load i32, ptr %i, align 4, !tbaa !62
  %inc335 = add nsw i32 %414, 1
  store i32 %inc335, ptr %i, align 4, !tbaa !62
  br label %for.cond326, !llvm.loop !92

for.end336:                                       ; preds = %for.cond326
  %415 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %416 = load ptr, ptr %boom_dof_func, align 8, !tbaa !4
  %call337 = call i32 @hypre_BoomerAMGSetDofFunc(ptr noundef %415, ptr noundef %416)
  br label %if.end338

if.end338:                                        ; preds = %for.end336, %if.end321
  store ptr @hypre_BoomerAMGSolve, ptr %pcg_precond_solve, align 8, !tbaa !4
  store ptr @hypre_BoomerAMGSetup, ptr %pcg_precond_setup, align 8, !tbaa !4
  %417 = load ptr, ptr %pcg_precond_setup, align 8, !tbaa !4
  %418 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_setup339 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %418, i32 0, i32 14
  store ptr %417, ptr %pcg_precond_setup339, align 8, !tbaa !23
  %419 = load ptr, ptr %pcg_precond_solve, align 8, !tbaa !4
  %420 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_solve340 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %420, i32 0, i32 13
  store ptr %419, ptr %pcg_precond_solve340, align 8, !tbaa !22
  %421 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %422 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond341 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %422, i32 0, i32 15
  store ptr %421, ptr %pcg_precond341, align 8, !tbaa !24
  br label %if.end347

if.else342:                                       ; preds = %land.lhs.true, %if.end193
  %423 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond343 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %423, i32 0, i32 15
  %424 = load ptr, ptr %pcg_precond343, align 8, !tbaa !24
  store ptr %424, ptr %pcg_precond, align 8, !tbaa !4
  %425 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_solve344 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %425, i32 0, i32 13
  %426 = load ptr, ptr %pcg_precond_solve344, align 8, !tbaa !22
  store ptr %426, ptr %pcg_precond_solve, align 8, !tbaa !4
  %427 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_precond_setup345 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %427, i32 0, i32 14
  %428 = load ptr, ptr %pcg_precond_setup345, align 8, !tbaa !23
  store ptr %428, ptr %pcg_precond_setup, align 8, !tbaa !4
  %429 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %430 = load i32, ptr %setup_type, align 4, !tbaa !62
  %call346 = call i32 @hypre_BoomerAMGSetSetupType(ptr noundef %429, i32 noundef %430)
  br label %if.end347

if.end347:                                        ; preds = %if.else342, %if.end338
  %431 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp348 = icmp eq i32 %431, 1
  br i1 %cmp348, label %if.then350, label %if.else367

if.then350:                                       ; preds = %if.end347
  %432 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %433 = load ptr, ptr %pcg_precond_solve, align 8, !tbaa !4
  %434 = load ptr, ptr %pcg_precond_setup, align 8, !tbaa !4
  %435 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call351 = call i32 @hypre_PCGSetPrecond(ptr noundef %432, ptr noundef %433, ptr noundef %434, ptr noundef %435)
  %436 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %437 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %438 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %439 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call352 = call i32 @hypre_PCGSetup(ptr noundef %436, ptr noundef %437, ptr noundef %438, ptr noundef %439)
  %call353 = call double @hypre_MPI_Wtime()
  store double %call353, ptr %tt2, align 8, !tbaa !65
  %440 = load double, ptr %tt2, align 8, !tbaa !65
  %441 = load double, ptr %tt1, align 8, !tbaa !65
  %sub354 = fsub double %440, %441
  %442 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2355 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %442, i32 0, i32 22
  store double %sub354, ptr %setup_time2355, align 8, !tbaa !27
  %443 = load double, ptr %tt2, align 8, !tbaa !65
  store double %443, ptr %tt1, align 8, !tbaa !65
  %444 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %445 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %446 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %447 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call356 = call i32 @hypre_PCGSolve(ptr noundef %444, ptr noundef %445, ptr noundef %446, ptr noundef %447)
  %448 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call357 = call i32 @hypre_PCGGetNumIterations(ptr noundef %448, ptr noundef %pcg_num_its)
  %449 = load i32, ptr %pcg_num_its, align 4, !tbaa !62
  %450 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its358 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %450, i32 0, i32 18
  store i32 %449, ptr %pcg_num_its358, align 4, !tbaa !31
  %451 = load i32, ptr %logging, align 4, !tbaa !62
  %tobool359 = icmp ne i32 %451, 0
  br i1 %tobool359, label %if.then360, label %if.end363

if.then360:                                       ; preds = %if.then350
  %452 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call361 = call i32 @hypre_PCGGetFinalRelativeResidualNorm(ptr noundef %452, ptr noundef %res_norm)
  %453 = load double, ptr %res_norm, align 8, !tbaa !65
  %454 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %final_rel_res_norm362 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %454, i32 0, i32 19
  store double %453, ptr %final_rel_res_norm362, align 8, !tbaa !76
  br label %if.end363

if.end363:                                        ; preds = %if.then360, %if.then350
  %call364 = call double @hypre_MPI_Wtime()
  store double %call364, ptr %tt2, align 8, !tbaa !65
  %455 = load double, ptr %tt2, align 8, !tbaa !65
  %456 = load double, ptr %tt1, align 8, !tbaa !65
  %sub365 = fsub double %455, %456
  %457 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2366 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %457, i32 0, i32 24
  store double %sub365, ptr %solve_time2366, align 8, !tbaa !29
  br label %if.end409

if.else367:                                       ; preds = %if.end347
  %458 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp368 = icmp eq i32 %458, 2
  br i1 %cmp368, label %if.then370, label %if.else387

if.then370:                                       ; preds = %if.else367
  %459 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %460 = load ptr, ptr %pcg_precond_solve, align 8, !tbaa !4
  %461 = load ptr, ptr %pcg_precond_setup, align 8, !tbaa !4
  %462 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call371 = call i32 @hypre_GMRESSetPrecond(ptr noundef %459, ptr noundef %460, ptr noundef %461, ptr noundef %462)
  %463 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %464 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %465 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %466 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call372 = call i32 @hypre_GMRESSetup(ptr noundef %463, ptr noundef %464, ptr noundef %465, ptr noundef %466)
  %call373 = call double @hypre_MPI_Wtime()
  store double %call373, ptr %tt2, align 8, !tbaa !65
  %467 = load double, ptr %tt2, align 8, !tbaa !65
  %468 = load double, ptr %tt1, align 8, !tbaa !65
  %sub374 = fsub double %467, %468
  %469 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2375 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %469, i32 0, i32 22
  store double %sub374, ptr %setup_time2375, align 8, !tbaa !27
  %470 = load double, ptr %tt2, align 8, !tbaa !65
  store double %470, ptr %tt1, align 8, !tbaa !65
  %471 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %472 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %473 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %474 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call376 = call i32 @hypre_GMRESSolve(ptr noundef %471, ptr noundef %472, ptr noundef %473, ptr noundef %474)
  %475 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call377 = call i32 @hypre_GMRESGetNumIterations(ptr noundef %475, ptr noundef %pcg_num_its)
  %476 = load i32, ptr %pcg_num_its, align 4, !tbaa !62
  %477 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its378 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %477, i32 0, i32 18
  store i32 %476, ptr %pcg_num_its378, align 4, !tbaa !31
  %478 = load i32, ptr %logging, align 4, !tbaa !62
  %tobool379 = icmp ne i32 %478, 0
  br i1 %tobool379, label %if.then380, label %if.end383

if.then380:                                       ; preds = %if.then370
  %479 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call381 = call i32 @hypre_GMRESGetFinalRelativeResidualNorm(ptr noundef %479, ptr noundef %res_norm)
  %480 = load double, ptr %res_norm, align 8, !tbaa !65
  %481 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %final_rel_res_norm382 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %481, i32 0, i32 19
  store double %480, ptr %final_rel_res_norm382, align 8, !tbaa !76
  br label %if.end383

if.end383:                                        ; preds = %if.then380, %if.then370
  %call384 = call double @hypre_MPI_Wtime()
  store double %call384, ptr %tt2, align 8, !tbaa !65
  %482 = load double, ptr %tt2, align 8, !tbaa !65
  %483 = load double, ptr %tt1, align 8, !tbaa !65
  %sub385 = fsub double %482, %483
  %484 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2386 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %484, i32 0, i32 24
  store double %sub385, ptr %solve_time2386, align 8, !tbaa !29
  br label %if.end408

if.else387:                                       ; preds = %if.else367
  %485 = load i32, ptr %solver_type, align 4, !tbaa !62
  %cmp388 = icmp eq i32 %485, 3
  br i1 %cmp388, label %if.then390, label %if.end407

if.then390:                                       ; preds = %if.else387
  %486 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %487 = load ptr, ptr %pcg_precond_solve, align 8, !tbaa !4
  %488 = load ptr, ptr %pcg_precond_setup, align 8, !tbaa !4
  %489 = load ptr, ptr %pcg_precond, align 8, !tbaa !4
  %call391 = call i32 @hypre_BiCGSTABSetPrecond(ptr noundef %486, ptr noundef %487, ptr noundef %488, ptr noundef %489)
  %490 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %491 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %492 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %493 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call392 = call i32 @hypre_BiCGSTABSetup(ptr noundef %490, ptr noundef %491, ptr noundef %492, ptr noundef %493)
  %call393 = call double @hypre_MPI_Wtime()
  store double %call393, ptr %tt2, align 8, !tbaa !65
  %494 = load double, ptr %tt2, align 8, !tbaa !65
  %495 = load double, ptr %tt1, align 8, !tbaa !65
  %sub394 = fsub double %494, %495
  %496 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %setup_time2395 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %496, i32 0, i32 22
  store double %sub394, ptr %setup_time2395, align 8, !tbaa !27
  %497 = load double, ptr %tt2, align 8, !tbaa !65
  store double %497, ptr %tt1, align 8, !tbaa !65
  %498 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %499 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %501 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %call396 = call i32 @hypre_BiCGSTABSolve(ptr noundef %498, ptr noundef %499, ptr noundef %500, ptr noundef %501)
  %502 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call397 = call i32 @hypre_BiCGSTABGetNumIterations(ptr noundef %502, ptr noundef %pcg_num_its)
  %503 = load i32, ptr %pcg_num_its, align 4, !tbaa !62
  %504 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %pcg_num_its398 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %504, i32 0, i32 18
  store i32 %503, ptr %pcg_num_its398, align 4, !tbaa !31
  %505 = load i32, ptr %logging, align 4, !tbaa !62
  %tobool399 = icmp ne i32 %505, 0
  br i1 %tobool399, label %if.then400, label %if.end403

if.then400:                                       ; preds = %if.then390
  %506 = load ptr, ptr %pcg_solver, align 8, !tbaa !4
  %call401 = call i32 @hypre_BiCGSTABGetFinalRelativeResidualNorm(ptr noundef %506, ptr noundef %res_norm)
  %507 = load double, ptr %res_norm, align 8, !tbaa !65
  %508 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %final_rel_res_norm402 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %508, i32 0, i32 19
  store double %507, ptr %final_rel_res_norm402, align 8, !tbaa !76
  br label %if.end403

if.end403:                                        ; preds = %if.then400, %if.then390
  %call404 = call double @hypre_MPI_Wtime()
  store double %call404, ptr %tt2, align 8, !tbaa !65
  %509 = load double, ptr %tt2, align 8, !tbaa !65
  %510 = load double, ptr %tt1, align 8, !tbaa !65
  %sub405 = fsub double %509, %510
  %511 = load ptr, ptr %AMGhybrid_data, align 8, !tbaa !4
  %solve_time2406 = getelementptr inbounds %struct.hypre_AMGHybridData, ptr %511, i32 0, i32 24
  store double %sub405, ptr %solve_time2406, align 8, !tbaa !29
  br label %if.end407

if.end407:                                        ; preds = %if.end403, %if.else387
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.end383
  br label %if.end409

if.end409:                                        ; preds = %if.end408, %if.end363
  br label %if.end410

if.end410:                                        ; preds = %if.end409, %if.end171
  %512 = load i32, ptr @hypre__global_error, align 4, !tbaa !62
  store i32 %512, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end410, %if.then54, %if.then51, %if.then46
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #3
  br label %cleanup411

cleanup411:                                       ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tt1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nongalerkin_tol) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nongalerk_num_tol) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_coarse_size) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq_threshold) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_coarse_size) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pre_print_level) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sol_print_level) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_norm) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_variables) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %converged) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcg_num_its) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dscg_num_its) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bicgstab_functions) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gmres_functions) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_functions) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_solver) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_precond) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_precond_setup) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcg_precond_solve) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcg_default) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_omega) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_rlxw) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_grp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_dof_func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_grt) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %boom_ngs) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %dof_func) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %omega) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %relax_weight) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %grid_relax_points) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %grid_relax_type) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_grid_sweeps) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %keepT) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %relax_order) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nodal) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_functions) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %agg_num_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_paths) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %cycle_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %interp_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %coarsen_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %measure_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_levels) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pmax) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %trunc_factor) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_row_sum) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %strong_threshold) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k_dim) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %solver_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %setup_type) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %print_level) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %logging) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %recompute_residual_p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %recompute_residual) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rel_change) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %stop_crit) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %two_norm) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %pcg_max_its) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dscg_max_its) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cf_tol) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_tol) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tol) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %AMGhybrid_data) #3
  %513 = load i32, ptr %retval, align 4
  ret i32 %513
}

declare double @hypre_MPI_Wtime() #2

declare ptr @hypre_PCGFunctionsCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovFree(ptr noundef) #2

declare i32 @hypre_ParKrylovCommInfo(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_ParKrylovCreateVector(ptr noundef) #2

declare i32 @hypre_ParKrylovDestroyVector(ptr noundef) #2

declare ptr @hypre_ParKrylovMatvecCreate(ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovMatvec(ptr noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovMatvecDestroy(ptr noundef) #2

declare double @hypre_ParKrylovInnerProd(ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovCopyVector(ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovClearVector(ptr noundef) #2

declare i32 @hypre_ParKrylovScaleVector(double noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovAxpy(double noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovIdentitySetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParKrylovIdentity(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_PCGCreate(ptr noundef) #2

declare i32 @hypre_PCGSetTol(ptr noundef, double noundef) #2

declare i32 @hypre_PCGSetAbsoluteTol(ptr noundef, double noundef) #2

declare i32 @hypre_PCGSetTwoNorm(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetStopCrit(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetRelChange(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetRecomputeResidual(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetRecomputeResidualP(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetLogging(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetPrintLevel(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetHybrid(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @hypre_PCGSetConvergenceFactorTol(ptr noundef, double noundef) #2

declare i32 @hypre_PCGSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRDiagScale(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRDiagScaleSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_PCGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_PCGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_PCGGetNumIterations(ptr noundef, ptr noundef) #2

declare i32 @hypre_PCGGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #2

declare i32 @hypre_PCGGetConverged(ptr noundef, ptr noundef) #2

declare ptr @hypre_GMRESFunctionsCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_ParKrylovCreateVectorArray(i32 noundef, ptr noundef) #2

declare ptr @hypre_GMRESCreate(ptr noundef) #2

declare i32 @hypre_GMRESSetTol(ptr noundef, double noundef) #2

declare i32 @hypre_GMRESSetAbsoluteTol(ptr noundef, double noundef) #2

declare i32 @hypre_GMRESSetKDim(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetStopCrit(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetRelChange(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetLogging(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetPrintLevel(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetHybrid(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @hypre_GMRESSetConvergenceFactorTol(ptr noundef, double noundef) #2

declare i32 @hypre_GMRESSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_GMRESSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_GMRESSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_GMRESGetNumIterations(ptr noundef, ptr noundef) #2

declare i32 @hypre_GMRESGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #2

declare i32 @hypre_GMRESGetConverged(ptr noundef, ptr noundef) #2

declare ptr @hypre_BiCGSTABFunctionsCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hypre_BiCGSTABCreate(ptr noundef) #2

declare i32 @hypre_BiCGSTABSetTol(ptr noundef, double noundef) #2

declare i32 @hypre_BiCGSTABSetAbsoluteTol(ptr noundef, double noundef) #2

declare i32 @hypre_BiCGSTABSetStopCrit(ptr noundef, i32 noundef) #2

declare i32 @hypre_BiCGSTABSetLogging(ptr noundef, i32 noundef) #2

declare i32 @hypre_BiCGSTABSetPrintLevel(ptr noundef, i32 noundef) #2

declare i32 @hypre_BiCGSTABSetHybrid(ptr noundef, i32 noundef) #2

declare i32 @hypre_BiCGSTABSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @hypre_BiCGSTABSetConvergenceFactorTol(ptr noundef, double noundef) #2

declare i32 @hypre_BiCGSTABSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BiCGSTABSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BiCGSTABSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BiCGSTABGetNumIterations(ptr noundef, ptr noundef) #2

declare i32 @hypre_BiCGSTABGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #2

declare i32 @hypre_BiCGSTABGetConverged(ptr noundef, ptr noundef) #2

declare ptr @hypre_BoomerAMGCreate() #2

declare i32 @hypre_BoomerAMGSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetTol(ptr noundef, double noundef) #2

declare i32 @hypre_BoomerAMGSetCoarsenType(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetInterpType(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetSetupType(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetMeasureType(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetStrongThreshold(ptr noundef, double noundef) #2

declare i32 @hypre_BoomerAMGSetTruncFactor(ptr noundef, double noundef) #2

declare i32 @hypre_BoomerAMGSetPMaxElmts(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetCycleType(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetPrintLevel(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetMaxLevels(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetMaxRowSum(ptr noundef, double noundef) #2

declare i32 @hypre_BoomerAMGSetMaxCoarseSize(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetMinCoarseSize(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetSeqThreshold(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetAggNumLevels(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetNumPaths(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetNumFunctions(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetNodal(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetRelaxOrder(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetKeepTranspose(ptr noundef, i32 noundef) #2

declare i32 @hypre_BoomerAMGSetNonGalerkTol(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetGridRelaxType(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetRelaxWeight(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetOmega(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetNumGridSweeps(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetGridRelaxPoints(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetDofFunc(ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_BoomerAMGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !11, i64 112}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !11, i64 96, !11, i64 100, !10, i64 104, !11, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !5, i64 152, !11, i64 160, !11, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !5, i64 296, !11, i64 304, !5, i64 312}
!10 = !{!"double", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!9, !10, i64 16}
!15 = !{!9, !11, i64 24}
!16 = !{!9, !11, i64 28}
!17 = !{!9, !11, i64 32}
!18 = !{!9, !11, i64 36}
!19 = !{!9, !11, i64 40}
!20 = !{!9, !11, i64 60}
!21 = !{!9, !11, i64 52}
!22 = !{!9, !5, i64 64}
!23 = !{!9, !5, i64 72}
!24 = !{!9, !5, i64 80}
!25 = !{!9, !5, i64 88}
!26 = !{!9, !10, i64 120}
!27 = !{!9, !10, i64 128}
!28 = !{!9, !10, i64 136}
!29 = !{!9, !10, i64 144}
!30 = !{!9, !11, i64 96}
!31 = !{!9, !11, i64 100}
!32 = !{!9, !11, i64 160}
!33 = !{!9, !11, i64 164}
!34 = !{!9, !11, i64 56}
!35 = !{!9, !11, i64 196}
!36 = !{!9, !10, i64 168}
!37 = !{!9, !10, i64 176}
!38 = !{!9, !10, i64 184}
!39 = !{!9, !11, i64 192}
!40 = !{!9, !11, i64 200}
!41 = !{!9, !11, i64 204}
!42 = !{!9, !11, i64 208}
!43 = !{!9, !11, i64 212}
!44 = !{!9, !11, i64 216}
!45 = !{!9, !11, i64 220}
!46 = !{!9, !11, i64 224}
!47 = !{!9, !11, i64 228}
!48 = !{!9, !11, i64 232}
!49 = !{!9, !11, i64 236}
!50 = !{!9, !5, i64 240}
!51 = !{!9, !5, i64 248}
!52 = !{!9, !5, i64 256}
!53 = !{!9, !5, i64 264}
!54 = !{!9, !5, i64 272}
!55 = !{!9, !11, i64 284}
!56 = !{!9, !11, i64 280}
!57 = !{!9, !11, i64 288}
!58 = !{!9, !11, i64 292}
!59 = !{!9, !5, i64 296}
!60 = !{!9, !11, i64 304}
!61 = !{!9, !5, i64 312}
!62 = !{!11, !11, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!10, !10, i64 0}
!66 = !{!9, !11, i64 44}
!67 = !{!9, !11, i64 48}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !64}
!70 = distinct !{!70, !64}
!71 = distinct !{!71, !64}
!72 = distinct !{!72, !64}
!73 = distinct !{!73, !64}
!74 = distinct !{!74, !64}
!75 = !{!9, !5, i64 152}
!76 = !{!9, !10, i64 104}
!77 = !{!78, !5, i64 40}
!78 = !{!"hypre_ParVector_struct", !5, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !5, i64 24, !11, i64 32, !5, i64 40, !11, i64 48, !11, i64 52, !5, i64 56}
!79 = !{!80, !11, i64 8}
!80 = !{!"", !5, i64 0, !11, i64 8, !11, i64 12, !6, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32}
!81 = !{!82, !5, i64 0}
!82 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !5, i64 136, !5, i64 144, !11, i64 152, !5, i64 160, !11, i64 168, !5, i64 176, !11, i64 184, !5, i64 192, !5, i64 200}
!83 = distinct !{!83, !64}
!84 = !{!85, !11, i64 260}
!85 = !{!"", !6, i64 0, !11, i64 4, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !5, i64 232, !5, i64 240, !5, i64 248, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !10, i64 272, !10, i64 280, !5, i64 288, !5, i64 296, !11, i64 304, !10, i64 312, !11, i64 320, !11, i64 324, !5, i64 328, !11, i64 336, !11, i64 340, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !11, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !11, i64 496, !11, i64 500, !11, i64 504, !5, i64 512, !11, i64 520, !11, i64 524, !11, i64 528, !11, i64 532, !10, i64 536, !11, i64 544, !11, i64 548, !11, i64 552, !11, i64 556, !11, i64 560, !11, i64 564, !10, i64 568, !10, i64 576, !10, i64 584, !10, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !11, i64 624, !11, i64 628, !11, i64 632, !11, i64 636, !10, i64 640, !5, i64 648, !5, i64 656, !11, i64 664, !5, i64 672, !10, i64 680, !5, i64 688, !5, i64 696, !5, i64 704, !5, i64 712, !10, i64 720, !5, i64 728, !5, i64 736, !5, i64 744, !11, i64 752, !11, i64 756, !11, i64 760, !11, i64 764, !11, i64 768, !10, i64 776, !5, i64 784, !11, i64 792, !6, i64 796, !11, i64 1052, !11, i64 1056, !6, i64 1060, !11, i64 1312, !5, i64 1320, !11, i64 1328, !11, i64 1332, !5, i64 1336, !5, i64 1344, !11, i64 1352, !11, i64 1356, !10, i64 1360, !11, i64 1368, !11, i64 1372, !11, i64 1376, !5, i64 1384, !5, i64 1392, !5, i64 1400, !5, i64 1408, !5, i64 1416, !5, i64 1424, !11, i64 1432, !5, i64 1440, !5, i64 1448, !5, i64 1456, !5, i64 1464, !11, i64 1472, !11, i64 1476, !11, i64 1480, !11, i64 1484, !11, i64 1488, !10, i64 1496, !11, i64 1504, !10, i64 1512, !5, i64 1520, !5, i64 1528, !5, i64 1536, !5, i64 1544, !5, i64 1552, !11, i64 1560, !11, i64 1564, !11, i64 1568, !11, i64 1572, !11, i64 1576, !5, i64 1584, !5, i64 1592, !11, i64 1600, !5, i64 1608, !11, i64 1616, !5, i64 1624}
!86 = !{!85, !11, i64 264}
!87 = distinct !{!87, !64}
!88 = distinct !{!88, !64}
!89 = distinct !{!89, !64}
!90 = distinct !{!90, !64}
!91 = distinct !{!91, !64}
!92 = distinct !{!92, !64}
