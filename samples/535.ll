; ModuleID = 'samples/535.bc'
source_filename = "F90_HYPRE_sstruct_pcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgcreate_(ptr noundef %comm, ptr noundef %solver, ptr noundef %ierr) #0 {
entry:
  %comm.addr = alloca ptr, align 8
  %solver.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %comm, ptr %comm.addr, align 8, !tbaa !4
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %comm.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  %call = call ptr @hypre_MPI_Comm_f2c(i32 noundef %1)
  %2 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %call1 = call i64 @HYPRE_SStructPCGCreate(ptr noundef %call, ptr noundef %2)
  %3 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call1, ptr %3, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGCreate(ptr noundef, ptr noundef) #1

declare ptr @hypre_MPI_Comm_f2c(i32 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgdestroy_(ptr noundef %solver, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGDestroy(ptr noundef %1)
  %2 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %2, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGDestroy(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetup_(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGSetup(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %8, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsolve_(ptr noundef %solver, ptr noundef %A, ptr noundef %b, ptr noundef %x, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGSolve(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %8, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsettol_(ptr noundef %solver, ptr noundef %tol, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %tol.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %tol, ptr %tol.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %tol.addr, align 8, !tbaa !4
  %3 = load double, ptr %2, align 8, !tbaa !12
  %call = call i64 @HYPRE_SStructPCGSetTol(ptr noundef %1, double noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetTol(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetabsolutetol_(ptr noundef %solver, ptr noundef %tol, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %tol.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %tol, ptr %tol.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %tol.addr, align 8, !tbaa !4
  %3 = load double, ptr %2, align 8, !tbaa !12
  %call = call i64 @HYPRE_SStructPCGSetAbsoluteTol(ptr noundef %1, double noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetAbsoluteTol(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetmaxiter_(ptr noundef %solver, ptr noundef %max_iter, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %max_iter.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %max_iter, ptr %max_iter.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %max_iter.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %call = call i64 @HYPRE_SStructPCGSetMaxIter(ptr noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetMaxIter(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsettwonorm_(ptr noundef %solver, ptr noundef %two_norm, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %two_norm.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %two_norm, ptr %two_norm.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %two_norm.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %call = call i64 @HYPRE_SStructPCGSetTwoNorm(ptr noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetTwoNorm(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetrelchange_(ptr noundef %solver, ptr noundef %rel_change, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %rel_change.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %rel_change, ptr %rel_change.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %rel_change.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %call = call i64 @HYPRE_SStructPCGSetRelChange(ptr noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetRelChange(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetprecond_(ptr noundef %solver, ptr noundef %precond_id, ptr noundef %precond_solver, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %precond_id.addr = alloca ptr, align 8
  %precond_solver.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %precond_id, ptr %precond_id.addr, align 8, !tbaa !4
  store ptr %precond_solver, ptr %precond_solver.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %precond_id.addr, align 8, !tbaa !4
  %1 = load i64, ptr %0, align 8, !tbaa !10
  %cmp = icmp eq i64 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %precond_solver.addr, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGSetPrecond(ptr noundef %3, ptr noundef @HYPRE_SStructSplitSolve, ptr noundef @HYPRE_SStructSplitSetup, ptr noundef %4)
  %5 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %5, align 8, !tbaa !10
  br label %if.end14

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %precond_id.addr, align 8, !tbaa !4
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %cmp1 = icmp eq i64 %7, 3
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %8, align 8, !tbaa !4
  %10 = load ptr, ptr %precond_solver.addr, align 8, !tbaa !4
  %call3 = call i64 @HYPRE_SStructPCGSetPrecond(ptr noundef %9, ptr noundef @HYPRE_SStructSysPFMGSolve, ptr noundef @HYPRE_SStructSysPFMGSetup, ptr noundef %10)
  %11 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call3, ptr %11, align 8, !tbaa !10
  br label %if.end13

if.else4:                                         ; preds = %if.else
  %12 = load ptr, ptr %precond_id.addr, align 8, !tbaa !4
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %cmp5 = icmp eq i64 %13, 8
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %14 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %14, align 8, !tbaa !4
  %16 = load ptr, ptr %precond_solver.addr, align 8, !tbaa !4
  %call7 = call i64 @HYPRE_SStructPCGSetPrecond(ptr noundef %15, ptr noundef @HYPRE_SStructDiagScale, ptr noundef @HYPRE_SStructDiagScaleSetup, ptr noundef %16)
  %17 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call7, ptr %17, align 8, !tbaa !10
  br label %if.end12

if.else8:                                         ; preds = %if.else4
  %18 = load ptr, ptr %precond_id.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !10
  %cmp9 = icmp eq i64 %19, 9
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %20 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 0, ptr %20, align 8, !tbaa !10
  br label %if.end

if.else11:                                        ; preds = %if.else8
  %21 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 -1, ptr %21, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then2
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  ret void
}

declare i64 @HYPRE_SStructPCGSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructSplitSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructSplitSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructSysPFMGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructSysPFMGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructDiagScale(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i64 @HYPRE_SStructDiagScaleSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetlogging_(ptr noundef %solver, ptr noundef %logging, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %logging.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %logging, ptr %logging.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %logging.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %call = call i64 @HYPRE_SStructPCGSetLogging(ptr noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetLogging(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcgsetprintlevel_(ptr noundef %solver, ptr noundef %level, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %level.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %level, ptr %level.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %level.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %call = call i64 @HYPRE_SStructPCGSetPrintLevel(ptr noundef %1, i64 noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGSetPrintLevel(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcggetnumiteration_(ptr noundef %solver, ptr noundef %num_iterations, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %num_iterations.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %num_iterations, ptr %num_iterations.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %num_iterations.addr, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGGetNumIterations(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %3, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGGetNumIterations(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcggetfinalrelativ_(ptr noundef %solver, ptr noundef %norm, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %norm.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %norm, ptr %norm.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGGetFinalRelativeResidualNorm(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %3, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGGetFinalRelativeResidualNorm(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructpcggetresidual_(ptr noundef %solver, ptr noundef %residual, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %residual.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %residual, ptr %residual.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %residual.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructPCGGetResidual(ptr noundef %1, ptr noundef %3)
  %4 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %4, align 8, !tbaa !10
  ret void
}

declare i64 @HYPRE_SStructPCGGetResidual(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @hypre_sstructdiagscalesetup_(ptr noundef %solver, ptr noundef %A, ptr noundef %y, ptr noundef %x, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructDiagScaleSetup(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %8, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define void @hypre_sstructdiagscale_(ptr noundef %solver, ptr noundef %A, ptr noundef %y, ptr noundef %x, ptr noundef %ierr) #0 {
entry:
  %solver.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ierr.addr = alloca ptr, align 8
  store ptr %solver, ptr %solver.addr, align 8, !tbaa !4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ierr, ptr %ierr.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %solver.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %2, align 8, !tbaa !4
  %4 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %4, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %call = call i64 @HYPRE_SStructDiagScale(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %ierr.addr, align 8, !tbaa !4
  store i64 %call, ptr %8, align 8, !tbaa !10
  ret void
}

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
!11 = !{!"long long", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
