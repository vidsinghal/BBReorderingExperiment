; ModuleID = 'samples/474.bc'
source_filename = "ame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_AMEData = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, double, double, i32, ptr, ptr, ptr, ptr }
%struct.hypre_AMSData = type { i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, double, i32, i32, i32, i32, ptr, double, double, double, double, i32, double, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, double }
%struct.hypre_ParCSRMatrix_struct = type { ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct._hypre_ParCSRCommPkg = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mv_TempMultiVector = type { i32, ptr, ptr, i32, i32, ptr }
%struct.hypre_ParVector_struct = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_InterfaceInterpreter = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lobpcg_BLASLAPACKFunctions = type { ptr, ptr }
%struct.lobpcg_Tolerance = type { double, double }

@.str = private unnamed_addr constant [6 x i8] c"ame.c\00", align 1
@hypre__global_error = external global i32, align 4

; Function Attrs: nounwind uwtable
define ptr @hypre_AMECreate() #0 {
entry:
  %ame_data = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %call = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 136, i32 noundef 0)
  store ptr %call, ptr %ame_data, align 8, !tbaa !4
  %0 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.hypre_AMEData, ptr %0, i32 0, i32 6
  store i32 1, ptr %block_size, align 8, !tbaa !8
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %maxit = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 9
  store i32 100, ptr %maxit, align 8, !tbaa !12
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %atol = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 10
  store double 0x3EB0C6F7A0B5ED8D, ptr %atol, align 8, !tbaa !13
  %3 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %rtol = getelementptr inbounds %struct.hypre_AMEData, ptr %3, i32 0, i32 11
  store double 0x3EB0C6F7A0B5ED8D, ptr %rtol, align 8, !tbaa !14
  %4 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMEData, ptr %4, i32 0, i32 12
  store i32 1, ptr %print_level, align 8, !tbaa !15
  %5 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors = getelementptr inbounds %struct.hypre_AMEData, ptr %5, i32 0, i32 7
  store ptr null, ptr %eigenvectors, align 8, !tbaa !16
  %6 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues = getelementptr inbounds %struct.hypre_AMEData, ptr %6, i32 0, i32 8
  store ptr null, ptr %eigenvalues, align 8, !tbaa !17
  %7 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter = getelementptr inbounds %struct.hypre_AMEData, ptr %7, i32 0, i32 13
  store ptr null, ptr %interpreter, align 8, !tbaa !18
  %8 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.hypre_AMEData, ptr %8, i32 0, i32 2
  store ptr null, ptr %G, align 8, !tbaa !19
  %9 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G = getelementptr inbounds %struct.hypre_AMEData, ptr %9, i32 0, i32 3
  store ptr null, ptr %A_G, align 8, !tbaa !20
  %10 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G = getelementptr inbounds %struct.hypre_AMEData, ptr %10, i32 0, i32 4
  store ptr null, ptr %B1_G, align 8, !tbaa !21
  %11 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G = getelementptr inbounds %struct.hypre_AMEData, ptr %11, i32 0, i32 5
  store ptr null, ptr %B2_G, align 8, !tbaa !22
  %12 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t1 = getelementptr inbounds %struct.hypre_AMEData, ptr %12, i32 0, i32 14
  store ptr null, ptr %t1, align 8, !tbaa !23
  %13 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t2 = getelementptr inbounds %struct.hypre_AMEData, ptr %13, i32 0, i32 15
  store ptr null, ptr %t2, align 8, !tbaa !24
  %14 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t3 = getelementptr inbounds %struct.hypre_AMEData, ptr %14, i32 0, i32 16
  store ptr null, ptr %t3, align 8, !tbaa !25
  %15 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %15, i32 0, i32 0
  store ptr null, ptr %precond, align 8, !tbaa !26
  %16 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.hypre_AMEData, ptr %16, i32 0, i32 1
  store ptr null, ptr %M, align 8, !tbaa !27
  %17 = load ptr, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @hypre_CAlloc(i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_AMEDestroy(ptr noundef %esolver) #0 {
entry:
  %retval = alloca i32, align 4
  %esolver.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %ams_data = alloca ptr, align 8
  %interpreter = alloca ptr, align 8
  %eigenvectors = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ams_data) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eigenvectors) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 73, i32 noundef 12, ptr noundef null)
  %2 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %precond, align 8, !tbaa !26
  store ptr %4, ptr %ams_data, align 8, !tbaa !4
  %5 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter1 = getelementptr inbounds %struct.hypre_AMEData, ptr %5, i32 0, i32 13
  %6 = load ptr, ptr %interpreter1, align 8, !tbaa !18
  store ptr %6, ptr %interpreter, align 8, !tbaa !4
  %7 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors2 = getelementptr inbounds %struct.hypre_AMEData, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %eigenvectors2, align 8, !tbaa !16
  store ptr %8, ptr %eigenvectors, align 8, !tbaa !4
  %9 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %10 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %10, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then7

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %11 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 82, i32 noundef 12, ptr noundef null)
  %12 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %13 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.hypre_AMEData, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %G, align 8, !tbaa !19
  %tobool9 = icmp ne ptr %14, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %15 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G11 = getelementptr inbounds %struct.hypre_AMEData, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %G11, align 8, !tbaa !19
  %call = call i32 @hypre_ParCSRMatrixDestroy(ptr noundef %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %17 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G = getelementptr inbounds %struct.hypre_AMEData, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %A_G, align 8, !tbaa !20
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %19 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G15 = getelementptr inbounds %struct.hypre_AMEData, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %A_G15, align 8, !tbaa !20
  %call16 = call i32 @hypre_ParCSRMatrixDestroy(ptr noundef %20)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %21 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G = getelementptr inbounds %struct.hypre_AMEData, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %B1_G, align 8, !tbaa !21
  %tobool18 = icmp ne ptr %22, null
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end17
  %23 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G20 = getelementptr inbounds %struct.hypre_AMEData, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %B1_G20, align 8, !tbaa !21
  %call21 = call i32 @HYPRE_BoomerAMGDestroy(ptr noundef %24)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17
  %25 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G = getelementptr inbounds %struct.hypre_AMEData, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %B2_G, align 8, !tbaa !22
  %tobool23 = icmp ne ptr %26, null
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end22
  %27 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G25 = getelementptr inbounds %struct.hypre_AMEData, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %B2_G25, align 8, !tbaa !22
  %call26 = call i32 @HYPRE_ParCSRPCGDestroy(ptr noundef %28)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %29 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues = getelementptr inbounds %struct.hypre_AMEData, ptr %29, i32 0, i32 8
  %30 = load ptr, ptr %eigenvalues, align 8, !tbaa !17
  %tobool28 = icmp ne ptr %30, null
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end27
  %31 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues30 = getelementptr inbounds %struct.hypre_AMEData, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %eigenvalues30, align 8, !tbaa !17
  call void @hypre_Free(ptr noundef %32, i32 noundef 0)
  %33 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues31 = getelementptr inbounds %struct.hypre_AMEData, ptr %33, i32 0, i32 8
  store ptr null, ptr %eigenvalues31, align 8, !tbaa !17
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end27
  %34 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  %tobool33 = icmp ne ptr %34, null
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  %35 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  call void @mv_MultiVectorDestroy(ptr noundef %35)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %36 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %tobool36 = icmp ne ptr %36, null
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  %37 = load ptr, ptr %interpreter, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %37, i32 noundef 0)
  store ptr null, ptr %interpreter, align 8, !tbaa !4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  %38 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %beta_is_zero = getelementptr inbounds %struct.hypre_AMSData, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %beta_is_zero, align 8, !tbaa !29
  %tobool39 = icmp ne i32 %39, 0
  br i1 %tobool39, label %if.then40, label %if.end51

if.then40:                                        ; preds = %if.end38
  %40 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t1 = getelementptr inbounds %struct.hypre_AMEData, ptr %40, i32 0, i32 14
  %41 = load ptr, ptr %t1, align 8, !tbaa !23
  %tobool41 = icmp ne ptr %41, null
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then40
  %42 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t143 = getelementptr inbounds %struct.hypre_AMEData, ptr %42, i32 0, i32 14
  %43 = load ptr, ptr %t143, align 8, !tbaa !23
  %call44 = call i32 @hypre_ParVectorDestroy(ptr noundef %43)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then40
  %44 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t2 = getelementptr inbounds %struct.hypre_AMEData, ptr %44, i32 0, i32 15
  %45 = load ptr, ptr %t2, align 8, !tbaa !24
  %tobool46 = icmp ne ptr %45, null
  br i1 %tobool46, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end45
  %46 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t248 = getelementptr inbounds %struct.hypre_AMEData, ptr %46, i32 0, i32 15
  %47 = load ptr, ptr %t248, align 8, !tbaa !24
  %call49 = call i32 @hypre_ParVectorDestroy(ptr noundef %47)
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end38
  %48 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %tobool52 = icmp ne ptr %48, null
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end51
  %49 = load ptr, ptr %ame_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %49, i32 noundef 0)
  store ptr null, ptr %ame_data, align 8, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51
  %50 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  store i32 %50, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %eigenvectors) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ams_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @hypre_ParCSRMatrixDestroy(ptr noundef) #2

declare i32 @HYPRE_BoomerAMGDestroy(ptr noundef) #2

declare i32 @HYPRE_ParCSRPCGDestroy(ptr noundef) #2

declare void @hypre_Free(ptr noundef, i32 noundef) #2

declare void @mv_MultiVectorDestroy(ptr noundef) #2

declare i32 @hypre_ParVectorDestroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetAMSSolver(ptr noundef %esolver, ptr noundef %ams_solver) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %ams_solver.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %ams_solver, ptr %ams_solver.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load ptr, ptr %ams_solver.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 0
  store ptr %1, ptr %precond, align 8, !tbaa !26
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetMassMatrix(ptr noundef %esolver, ptr noundef %M) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %M.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %M, ptr %M.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M1 = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 1
  store ptr %1, ptr %M1, align 8, !tbaa !27
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetBlockSize(ptr noundef %esolver, i32 noundef %block_size) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %block_size.addr = alloca i32, align 4
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store i32 %block_size, ptr %block_size.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load i32, ptr %block_size.addr, align 4, !tbaa !28
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size1 = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 6
  store i32 %1, ptr %block_size1, align 8, !tbaa !8
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetMaxIter(ptr noundef %esolver, i32 noundef %maxit) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %maxit.addr = alloca i32, align 4
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store i32 %maxit, ptr %maxit.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load i32, ptr %maxit.addr, align 4, !tbaa !28
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %maxit1 = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 9
  store i32 %1, ptr %maxit1, align 8, !tbaa !12
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetTol(ptr noundef %esolver, double noundef %tol) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load double, ptr %tol.addr, align 8, !tbaa !31
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %atol = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 10
  store double %1, ptr %atol, align 8, !tbaa !13
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetRTol(ptr noundef %esolver, double noundef %tol) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %tol.addr = alloca double, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store double %tol, ptr %tol.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load double, ptr %tol.addr, align 8, !tbaa !31
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %rtol = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 11
  store double %1, ptr %rtol, align 8, !tbaa !14
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetPrintLevel(ptr noundef %esolver, i32 noundef %print_level) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %print_level.addr = alloca i32, align 4
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store i32 %print_level, ptr %print_level.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load i32, ptr %print_level.addr, align 4, !tbaa !28
  %2 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %print_level1 = getelementptr inbounds %struct.hypre_AMEData, ptr %2, i32 0, i32 12
  store i32 %1, ptr %print_level1, align 8, !tbaa !15
  %3 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESetup(ptr noundef %esolver) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %ne = alloca i32, align 4
  %edge_bc = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %ams_data = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nv = alloca i32, align 4
  %offd_edge_bc = alloca ptr, align 8
  %Gt = alloca ptr, align 8
  %Ad = alloca ptr, align 8
  %AdI = alloca ptr, align 8
  %AdJ = alloca ptr, align 8
  %AdA = alloca ptr, align 8
  %Ao = alloca ptr, align 8
  %AoI = alloca ptr, align 8
  %AoA = alloca ptr, align 8
  %l1_norm = alloca double, align 8
  %eps = alloca double, align 8
  %comm_handle = alloca ptr, align 8
  %comm_pkg = alloca ptr, align 8
  %num_sends = alloca i32, align 4
  %int_buf_data = alloca ptr, align 8
  %index = alloca i32, align 4
  %start = alloca i32, align 4
  %Gtd = alloca ptr, align 8
  %GtdI = alloca ptr, align 8
  %GtdJ = alloca ptr, align 8
  %GtdA = alloca ptr, align 8
  %Gto = alloca ptr, align 8
  %GtoI = alloca ptr, align 8
  %GtoJ = alloca ptr, align 8
  %GtoA = alloca ptr, align 8
  %bdr = alloca i32, align 4
  %seed = alloca i32, align 4
  %interpreter = alloca ptr, align 8
  %eigenvectors = alloca ptr, align 8
  %i270 = alloca i32, align 4
  %j271 = alloca i32, align 4
  %data272 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %v = alloca ptr, align 8
  %vi = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ne) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %edge_bc) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ams_data) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %precond, align 8, !tbaa !26
  store ptr %2, ptr %ams_data, align 8, !tbaa !4
  %3 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %beta_is_zero = getelementptr inbounds %struct.hypre_AMSData, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %beta_is_zero, align 8, !tbaa !29
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.hypre_AMSData, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %G, align 8, !tbaa !32
  %call = call ptr @hypre_ParVectorInDomainOf(ptr noundef %6)
  %7 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t1 = getelementptr inbounds %struct.hypre_AMEData, ptr %7, i32 0, i32 14
  store ptr %call, ptr %t1, align 8, !tbaa !23
  %8 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %G1 = getelementptr inbounds %struct.hypre_AMSData, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %G1, align 8, !tbaa !32
  %call2 = call ptr @hypre_ParVectorInDomainOf(ptr noundef %9)
  %10 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t2 = getelementptr inbounds %struct.hypre_AMEData, ptr %10, i32 0, i32 15
  store ptr %call2, ptr %t2, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %r1 = getelementptr inbounds %struct.hypre_AMSData, ptr %11, i32 0, i32 62
  %12 = load ptr, ptr %r1, align 8, !tbaa !33
  %13 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t13 = getelementptr inbounds %struct.hypre_AMEData, ptr %13, i32 0, i32 14
  store ptr %12, ptr %t13, align 8, !tbaa !23
  %14 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %g1 = getelementptr inbounds %struct.hypre_AMSData, ptr %14, i32 0, i32 63
  %15 = load ptr, ptr %g1, align 8, !tbaa !34
  %16 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t24 = getelementptr inbounds %struct.hypre_AMEData, ptr %16, i32 0, i32 15
  store ptr %15, ptr %t24, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %r0 = getelementptr inbounds %struct.hypre_AMSData, ptr %17, i32 0, i32 60
  %18 = load ptr, ptr %r0, align 8, !tbaa !35
  %19 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t3 = getelementptr inbounds %struct.hypre_AMEData, ptr %19, i32 0, i32 16
  store ptr %18, ptr %t3, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nv) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %offd_edge_bc) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gt) #4
  %20 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %G5 = getelementptr inbounds %struct.hypre_AMSData, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %G5, align 8, !tbaa !32
  %diag = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %diag, align 8, !tbaa !36
  %num_cols = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %num_cols, align 4, !tbaa !38
  store i32 %23, ptr %nv, align 4, !tbaa !28
  %24 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %G6 = getelementptr inbounds %struct.hypre_AMSData, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %G6, align 8, !tbaa !32
  %diag7 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %25, i32 0, i32 7
  %26 = load ptr, ptr %diag7, align 8, !tbaa !36
  %num_rows = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %num_rows, align 8, !tbaa !40
  store i32 %27, ptr %ne, align 4, !tbaa !28
  %28 = load i32, ptr %ne, align 4, !tbaa !28
  %conv = sext i32 %28 to i64
  %mul = mul i64 4, %conv
  %call8 = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call8, ptr %edge_bc, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, ptr %i, align 4, !tbaa !28
  %30 = load i32, ptr %ne, align 4, !tbaa !28
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  %32 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds i32, ptr %31, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4, !tbaa !28
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !28
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ad) #4
  %34 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.hypre_AMSData, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %A, align 8, !tbaa !43
  %diag10 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %diag10, align 8, !tbaa !36
  store ptr %36, ptr %Ad, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AdI) #4
  %37 = load ptr, ptr %Ad, align 8, !tbaa !4
  %i11 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %i11, align 8, !tbaa !44
  store ptr %38, ptr %AdI, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AdJ) #4
  %39 = load ptr, ptr %Ad, align 8, !tbaa !4
  %j12 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %j12, align 8, !tbaa !45
  store ptr %40, ptr %AdJ, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AdA) #4
  %41 = load ptr, ptr %Ad, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %data, align 8, !tbaa !46
  store ptr %42, ptr %AdA, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ao) #4
  %43 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %A13 = getelementptr inbounds %struct.hypre_AMSData, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %A13, align 8, !tbaa !43
  %offd = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %44, i32 0, i32 8
  %45 = load ptr, ptr %offd, align 8, !tbaa !47
  store ptr %45, ptr %Ao, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AoI) #4
  %46 = load ptr, ptr %Ao, align 8, !tbaa !4
  %i14 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %i14, align 8, !tbaa !44
  store ptr %47, ptr %AoI, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %AoA) #4
  %48 = load ptr, ptr %Ao, align 8, !tbaa !4
  %data15 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %data15, align 8, !tbaa !46
  store ptr %49, ptr %AoA, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %l1_norm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eps) #4
  store double 0x3D83880000000000, ptr %eps, align 8, !tbaa !31
  store i32 0, ptr %i, align 4, !tbaa !28
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc64, %for.end
  %50 = load i32, ptr %i, align 4, !tbaa !28
  %51 = load i32, ptr %ne, align 4, !tbaa !28
  %cmp17 = icmp slt i32 %50, %51
  br i1 %cmp17, label %for.body19, label %for.end66

for.body19:                                       ; preds = %for.cond16
  store double 0.000000e+00, ptr %l1_norm, align 8, !tbaa !31
  %52 = load ptr, ptr %AdI, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom20 = sext i32 %53 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %52, i64 %idxprom20
  %54 = load i32, ptr %arrayidx21, align 4, !tbaa !28
  store i32 %54, ptr %j, align 4, !tbaa !28
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc37, %for.body19
  %55 = load i32, ptr %j, align 4, !tbaa !28
  %56 = load ptr, ptr %AdI, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !28
  %add = add nsw i32 %57, 1
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %56, i64 %idxprom23
  %58 = load i32, ptr %arrayidx24, align 4, !tbaa !28
  %cmp25 = icmp slt i32 %55, %58
  br i1 %cmp25, label %for.body27, label %for.end39

for.body27:                                       ; preds = %for.cond22
  %59 = load ptr, ptr %AdJ, align 8, !tbaa !4
  %60 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom28 = sext i32 %60 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %59, i64 %idxprom28
  %61 = load i32, ptr %arrayidx29, align 4, !tbaa !28
  %62 = load i32, ptr %i, align 4, !tbaa !28
  %cmp30 = icmp ne i32 %61, %62
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %for.body27
  %63 = load ptr, ptr %AdA, align 8, !tbaa !4
  %64 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom33 = sext i32 %64 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %63, i64 %idxprom33
  %65 = load double, ptr %arrayidx34, align 8, !tbaa !31
  %66 = call double @llvm.fabs.f64(double %65)
  %67 = load double, ptr %l1_norm, align 8, !tbaa !31
  %add35 = fadd double %67, %66
  store double %add35, ptr %l1_norm, align 8, !tbaa !31
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.body27
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %68 = load i32, ptr %j, align 4, !tbaa !28
  %inc38 = add nsw i32 %68, 1
  store i32 %inc38, ptr %j, align 4, !tbaa !28
  br label %for.cond22, !llvm.loop !48

for.end39:                                        ; preds = %for.cond22
  %69 = load ptr, ptr %AoI, align 8, !tbaa !4
  %tobool40 = icmp ne ptr %69, null
  br i1 %tobool40, label %if.then41, label %if.end57

if.then41:                                        ; preds = %for.end39
  %70 = load ptr, ptr %AoI, align 8, !tbaa !4
  %71 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom42 = sext i32 %71 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %70, i64 %idxprom42
  %72 = load i32, ptr %arrayidx43, align 4, !tbaa !28
  store i32 %72, ptr %j, align 4, !tbaa !28
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc54, %if.then41
  %73 = load i32, ptr %j, align 4, !tbaa !28
  %74 = load ptr, ptr %AoI, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !28
  %add45 = add nsw i32 %75, 1
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %74, i64 %idxprom46
  %76 = load i32, ptr %arrayidx47, align 4, !tbaa !28
  %cmp48 = icmp slt i32 %73, %76
  br i1 %cmp48, label %for.body50, label %for.end56

for.body50:                                       ; preds = %for.cond44
  %77 = load ptr, ptr %AoA, align 8, !tbaa !4
  %78 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom51 = sext i32 %78 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %77, i64 %idxprom51
  %79 = load double, ptr %arrayidx52, align 8, !tbaa !31
  %80 = call double @llvm.fabs.f64(double %79)
  %81 = load double, ptr %l1_norm, align 8, !tbaa !31
  %add53 = fadd double %81, %80
  store double %add53, ptr %l1_norm, align 8, !tbaa !31
  br label %for.inc54

for.inc54:                                        ; preds = %for.body50
  %82 = load i32, ptr %j, align 4, !tbaa !28
  %inc55 = add nsw i32 %82, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !28
  br label %for.cond44, !llvm.loop !49

for.end56:                                        ; preds = %for.cond44
  br label %if.end57

if.end57:                                         ; preds = %for.end56, %for.end39
  %83 = load double, ptr %l1_norm, align 8, !tbaa !31
  %84 = load double, ptr %eps, align 8, !tbaa !31
  %cmp58 = fcmp olt double %83, %84
  br i1 %cmp58, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end57
  %85 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  %86 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom61 = sext i32 %86 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %85, i64 %idxprom61
  store i32 1, ptr %arrayidx62, align 4, !tbaa !28
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end57
  br label %for.inc64

for.inc64:                                        ; preds = %if.end63
  %87 = load i32, ptr %i, align 4, !tbaa !28
  %inc65 = add nsw i32 %87, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !28
  br label %for.cond16, !llvm.loop !50

for.end66:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %eps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %l1_norm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AoA) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AoI) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ao) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AdA) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AdJ) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %AdI) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ad) #4
  %88 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %G67 = getelementptr inbounds %struct.hypre_AMSData, ptr %88, i32 0, i32 2
  %89 = load ptr, ptr %G67, align 8, !tbaa !32
  %call68 = call i32 @hypre_ParCSRMatrixTranspose(ptr noundef %89, ptr noundef %Gt, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_handle) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm_pkg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_sends) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #4
  %90 = load ptr, ptr %Gt, align 8, !tbaa !4
  %offd69 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %90, i32 0, i32 8
  %91 = load ptr, ptr %offd69, align 8, !tbaa !47
  %num_cols70 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %91, i32 0, i32 4
  %92 = load i32, ptr %num_cols70, align 4, !tbaa !38
  %conv71 = sext i32 %92 to i64
  %call72 = call ptr @hypre_CAlloc(i64 noundef %conv71, i64 noundef 4, i32 noundef 0)
  store ptr %call72, ptr %offd_edge_bc, align 8, !tbaa !4
  %93 = load ptr, ptr %Gt, align 8, !tbaa !4
  %call73 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %93)
  %94 = load ptr, ptr %Gt, align 8, !tbaa !4
  %comm_pkg74 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %94, i32 0, i32 15
  %95 = load ptr, ptr %comm_pkg74, align 8, !tbaa !51
  store ptr %95, ptr %comm_pkg, align 8, !tbaa !4
  %96 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %num_sends75 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %num_sends75, align 8, !tbaa !52
  store i32 %97, ptr %num_sends, align 4, !tbaa !28
  %98 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %98, i32 0, i32 3
  %99 = load ptr, ptr %send_map_starts, align 8, !tbaa !54
  %100 = load i32, ptr %num_sends, align 4, !tbaa !28
  %idxprom76 = sext i32 %100 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %99, i64 %idxprom76
  %101 = load i32, ptr %arrayidx77, align 4, !tbaa !28
  %conv78 = sext i32 %101 to i64
  %call79 = call ptr @hypre_CAlloc(i64 noundef %conv78, i64 noundef 4, i32 noundef 0)
  store ptr %call79, ptr %int_buf_data, align 8, !tbaa !4
  store i32 0, ptr %index, align 4, !tbaa !28
  store i32 0, ptr %i, align 4, !tbaa !28
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc105, %for.end66
  %102 = load i32, ptr %i, align 4, !tbaa !28
  %103 = load i32, ptr %num_sends, align 4, !tbaa !28
  %cmp81 = icmp slt i32 %102, %103
  br i1 %cmp81, label %for.body83, label %for.end107

for.body83:                                       ; preds = %for.cond80
  %104 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts84 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %send_map_starts84, align 8, !tbaa !54
  %106 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom85 = sext i32 %106 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %105, i64 %idxprom85
  %107 = load i32, ptr %arrayidx86, align 4, !tbaa !28
  store i32 %107, ptr %start, align 4, !tbaa !28
  %108 = load i32, ptr %start, align 4, !tbaa !28
  store i32 %108, ptr %j, align 4, !tbaa !28
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc102, %for.body83
  %109 = load i32, ptr %j, align 4, !tbaa !28
  %110 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_starts88 = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %110, i32 0, i32 3
  %111 = load ptr, ptr %send_map_starts88, align 8, !tbaa !54
  %112 = load i32, ptr %i, align 4, !tbaa !28
  %add89 = add nsw i32 %112, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %111, i64 %idxprom90
  %113 = load i32, ptr %arrayidx91, align 4, !tbaa !28
  %cmp92 = icmp slt i32 %109, %113
  br i1 %cmp92, label %for.body94, label %for.end104

for.body94:                                       ; preds = %for.cond87
  %114 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %send_map_elmts = getelementptr inbounds %struct._hypre_ParCSRCommPkg, ptr %114, i32 0, i32 4
  %115 = load ptr, ptr %send_map_elmts, align 8, !tbaa !55
  %116 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom95 = sext i32 %116 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %115, i64 %idxprom95
  %117 = load i32, ptr %arrayidx96, align 4, !tbaa !28
  store i32 %117, ptr %k, align 4, !tbaa !28
  %118 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  %119 = load i32, ptr %k, align 4, !tbaa !28
  %idxprom97 = sext i32 %119 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %118, i64 %idxprom97
  %120 = load i32, ptr %arrayidx98, align 4, !tbaa !28
  %121 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %122 = load i32, ptr %index, align 4, !tbaa !28
  %inc99 = add nsw i32 %122, 1
  store i32 %inc99, ptr %index, align 4, !tbaa !28
  %idxprom100 = sext i32 %122 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %121, i64 %idxprom100
  store i32 %120, ptr %arrayidx101, align 4, !tbaa !28
  br label %for.inc102

for.inc102:                                       ; preds = %for.body94
  %123 = load i32, ptr %j, align 4, !tbaa !28
  %inc103 = add nsw i32 %123, 1
  store i32 %inc103, ptr %j, align 4, !tbaa !28
  br label %for.cond87, !llvm.loop !56

for.end104:                                       ; preds = %for.cond87
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %124 = load i32, ptr %i, align 4, !tbaa !28
  %inc106 = add nsw i32 %124, 1
  store i32 %inc106, ptr %i, align 4, !tbaa !28
  br label %for.cond80, !llvm.loop !57

for.end107:                                       ; preds = %for.cond80
  %125 = load ptr, ptr %comm_pkg, align 8, !tbaa !4
  %126 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  %127 = load ptr, ptr %offd_edge_bc, align 8, !tbaa !4
  %call108 = call ptr @hypre_ParCSRCommHandleCreate(i32 noundef 11, ptr noundef %125, ptr noundef %126, ptr noundef %127)
  store ptr %call108, ptr %comm_handle, align 8, !tbaa !4
  %128 = load ptr, ptr %comm_handle, align 8, !tbaa !4
  %call109 = call i32 @hypre_ParCSRCommHandleDestroy(ptr noundef %128)
  %129 = load ptr, ptr %int_buf_data, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %129, i32 noundef 0)
  store ptr null, ptr %int_buf_data, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %int_buf_data) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_sends) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_pkg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm_handle) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gtd) #4
  %130 = load ptr, ptr %Gt, align 8, !tbaa !4
  %diag110 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %130, i32 0, i32 7
  %131 = load ptr, ptr %diag110, align 8, !tbaa !36
  store ptr %131, ptr %Gtd, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtdI) #4
  %132 = load ptr, ptr %Gtd, align 8, !tbaa !4
  %i111 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %i111, align 8, !tbaa !44
  store ptr %133, ptr %GtdI, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtdJ) #4
  %134 = load ptr, ptr %Gtd, align 8, !tbaa !4
  %j112 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %j112, align 8, !tbaa !45
  store ptr %135, ptr %GtdJ, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtdA) #4
  %136 = load ptr, ptr %Gtd, align 8, !tbaa !4
  %data113 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %136, i32 0, i32 9
  %137 = load ptr, ptr %data113, align 8, !tbaa !46
  store ptr %137, ptr %GtdA, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gto) #4
  %138 = load ptr, ptr %Gt, align 8, !tbaa !4
  %offd114 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %138, i32 0, i32 8
  %139 = load ptr, ptr %offd114, align 8, !tbaa !47
  store ptr %139, ptr %Gto, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtoI) #4
  %140 = load ptr, ptr %Gto, align 8, !tbaa !4
  %i115 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %i115, align 8, !tbaa !44
  store ptr %141, ptr %GtoI, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtoJ) #4
  %142 = load ptr, ptr %Gto, align 8, !tbaa !4
  %j116 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %142, i32 0, i32 1
  %143 = load ptr, ptr %j116, align 8, !tbaa !45
  store ptr %143, ptr %GtoJ, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %GtoA) #4
  %144 = load ptr, ptr %Gto, align 8, !tbaa !4
  %data117 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %144, i32 0, i32 9
  %145 = load ptr, ptr %data117, align 8, !tbaa !46
  store ptr %145, ptr %GtoA, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bdr) #4
  store i32 0, ptr %i, align 4, !tbaa !28
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc198, %for.end107
  %146 = load i32, ptr %i, align 4, !tbaa !28
  %147 = load i32, ptr %nv, align 4, !tbaa !28
  %cmp119 = icmp slt i32 %146, %147
  br i1 %cmp119, label %for.body121, label %for.end200

for.body121:                                      ; preds = %for.cond118
  store i32 0, ptr %bdr, align 4, !tbaa !28
  %148 = load ptr, ptr %GtdI, align 8, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom122 = sext i32 %149 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %148, i64 %idxprom122
  %150 = load i32, ptr %arrayidx123, align 4, !tbaa !28
  store i32 %150, ptr %j, align 4, !tbaa !28
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc138, %for.body121
  %151 = load i32, ptr %j, align 4, !tbaa !28
  %152 = load ptr, ptr %GtdI, align 8, !tbaa !4
  %153 = load i32, ptr %i, align 4, !tbaa !28
  %add125 = add nsw i32 %153, 1
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %152, i64 %idxprom126
  %154 = load i32, ptr %arrayidx127, align 4, !tbaa !28
  %cmp128 = icmp slt i32 %151, %154
  br i1 %cmp128, label %for.body130, label %for.end140

for.body130:                                      ; preds = %for.cond124
  %155 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  %156 = load ptr, ptr %GtdJ, align 8, !tbaa !4
  %157 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom131 = sext i32 %157 to i64
  %arrayidx132 = getelementptr inbounds i32, ptr %156, i64 %idxprom131
  %158 = load i32, ptr %arrayidx132, align 4, !tbaa !28
  %idxprom133 = sext i32 %158 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %155, i64 %idxprom133
  %159 = load i32, ptr %arrayidx134, align 4, !tbaa !28
  %tobool135 = icmp ne i32 %159, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %for.body130
  store i32 1, ptr %bdr, align 4, !tbaa !28
  br label %for.end140

if.end137:                                        ; preds = %for.body130
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %160 = load i32, ptr %j, align 4, !tbaa !28
  %inc139 = add nsw i32 %160, 1
  store i32 %inc139, ptr %j, align 4, !tbaa !28
  br label %for.cond124, !llvm.loop !58

for.end140:                                       ; preds = %if.then136, %for.cond124
  %161 = load i32, ptr %bdr, align 4, !tbaa !28
  %tobool141 = icmp ne i32 %161, 0
  br i1 %tobool141, label %if.end163, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end140
  %162 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %tobool142 = icmp ne ptr %162, null
  br i1 %tobool142, label %if.then143, label %if.end163

if.then143:                                       ; preds = %land.lhs.true
  %163 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %164 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom144 = sext i32 %164 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %163, i64 %idxprom144
  %165 = load i32, ptr %arrayidx145, align 4, !tbaa !28
  store i32 %165, ptr %j, align 4, !tbaa !28
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc160, %if.then143
  %166 = load i32, ptr %j, align 4, !tbaa !28
  %167 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !28
  %add147 = add nsw i32 %168, 1
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds i32, ptr %167, i64 %idxprom148
  %169 = load i32, ptr %arrayidx149, align 4, !tbaa !28
  %cmp150 = icmp slt i32 %166, %169
  br i1 %cmp150, label %for.body152, label %for.end162

for.body152:                                      ; preds = %for.cond146
  %170 = load ptr, ptr %offd_edge_bc, align 8, !tbaa !4
  %171 = load ptr, ptr %GtoJ, align 8, !tbaa !4
  %172 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom153 = sext i32 %172 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %171, i64 %idxprom153
  %173 = load i32, ptr %arrayidx154, align 4, !tbaa !28
  %idxprom155 = sext i32 %173 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %170, i64 %idxprom155
  %174 = load i32, ptr %arrayidx156, align 4, !tbaa !28
  %tobool157 = icmp ne i32 %174, 0
  br i1 %tobool157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %for.body152
  store i32 1, ptr %bdr, align 4, !tbaa !28
  br label %for.end162

if.end159:                                        ; preds = %for.body152
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159
  %175 = load i32, ptr %j, align 4, !tbaa !28
  %inc161 = add nsw i32 %175, 1
  store i32 %inc161, ptr %j, align 4, !tbaa !28
  br label %for.cond146, !llvm.loop !59

for.end162:                                       ; preds = %if.then158, %for.cond146
  br label %if.end163

if.end163:                                        ; preds = %for.end162, %land.lhs.true, %for.end140
  %176 = load i32, ptr %bdr, align 4, !tbaa !28
  %tobool164 = icmp ne i32 %176, 0
  br i1 %tobool164, label %if.then165, label %if.end197

if.then165:                                       ; preds = %if.end163
  %177 = load ptr, ptr %GtdI, align 8, !tbaa !4
  %178 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom166 = sext i32 %178 to i64
  %arrayidx167 = getelementptr inbounds i32, ptr %177, i64 %idxprom166
  %179 = load i32, ptr %arrayidx167, align 4, !tbaa !28
  store i32 %179, ptr %j, align 4, !tbaa !28
  br label %for.cond168

for.cond168:                                      ; preds = %for.inc177, %if.then165
  %180 = load i32, ptr %j, align 4, !tbaa !28
  %181 = load ptr, ptr %GtdI, align 8, !tbaa !4
  %182 = load i32, ptr %i, align 4, !tbaa !28
  %add169 = add nsw i32 %182, 1
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %181, i64 %idxprom170
  %183 = load i32, ptr %arrayidx171, align 4, !tbaa !28
  %cmp172 = icmp slt i32 %180, %183
  br i1 %cmp172, label %for.body174, label %for.end179

for.body174:                                      ; preds = %for.cond168
  %184 = load ptr, ptr %GtdA, align 8, !tbaa !4
  %185 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom175 = sext i32 %185 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %184, i64 %idxprom175
  store double 0.000000e+00, ptr %arrayidx176, align 8, !tbaa !31
  br label %for.inc177

for.inc177:                                       ; preds = %for.body174
  %186 = load i32, ptr %j, align 4, !tbaa !28
  %inc178 = add nsw i32 %186, 1
  store i32 %inc178, ptr %j, align 4, !tbaa !28
  br label %for.cond168, !llvm.loop !60

for.end179:                                       ; preds = %for.cond168
  %187 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %tobool180 = icmp ne ptr %187, null
  br i1 %tobool180, label %if.then181, label %if.end196

if.then181:                                       ; preds = %for.end179
  %188 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %189 = load i32, ptr %i, align 4, !tbaa !28
  %idxprom182 = sext i32 %189 to i64
  %arrayidx183 = getelementptr inbounds i32, ptr %188, i64 %idxprom182
  %190 = load i32, ptr %arrayidx183, align 4, !tbaa !28
  store i32 %190, ptr %j, align 4, !tbaa !28
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc193, %if.then181
  %191 = load i32, ptr %j, align 4, !tbaa !28
  %192 = load ptr, ptr %GtoI, align 8, !tbaa !4
  %193 = load i32, ptr %i, align 4, !tbaa !28
  %add185 = add nsw i32 %193, 1
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %192, i64 %idxprom186
  %194 = load i32, ptr %arrayidx187, align 4, !tbaa !28
  %cmp188 = icmp slt i32 %191, %194
  br i1 %cmp188, label %for.body190, label %for.end195

for.body190:                                      ; preds = %for.cond184
  %195 = load ptr, ptr %GtoA, align 8, !tbaa !4
  %196 = load i32, ptr %j, align 4, !tbaa !28
  %idxprom191 = sext i32 %196 to i64
  %arrayidx192 = getelementptr inbounds double, ptr %195, i64 %idxprom191
  store double 0.000000e+00, ptr %arrayidx192, align 8, !tbaa !31
  br label %for.inc193

for.inc193:                                       ; preds = %for.body190
  %197 = load i32, ptr %j, align 4, !tbaa !28
  %inc194 = add nsw i32 %197, 1
  store i32 %inc194, ptr %j, align 4, !tbaa !28
  br label %for.cond184, !llvm.loop !61

for.end195:                                       ; preds = %for.cond184
  br label %if.end196

if.end196:                                        ; preds = %for.end195, %for.end179
  br label %if.end197

if.end197:                                        ; preds = %if.end196, %if.end163
  br label %for.inc198

for.inc198:                                       ; preds = %if.end197
  %198 = load i32, ptr %i, align 4, !tbaa !28
  %inc199 = add nsw i32 %198, 1
  store i32 %inc199, ptr %i, align 4, !tbaa !28
  br label %for.cond118, !llvm.loop !62

for.end200:                                       ; preds = %for.cond118
  call void @llvm.lifetime.end.p0(i64 4, ptr %bdr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtoA) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtoJ) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtoI) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gto) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtdA) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtdJ) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %GtdI) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gtd) #4
  %199 = load ptr, ptr %Gt, align 8, !tbaa !4
  %200 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G201 = getelementptr inbounds %struct.hypre_AMEData, ptr %200, i32 0, i32 2
  %call202 = call i32 @hypre_ParCSRMatrixTranspose(ptr noundef %199, ptr noundef %G201, i32 noundef 1)
  %201 = load ptr, ptr %Gt, align 8, !tbaa !4
  %call203 = call i32 @hypre_ParCSRMatrixDestroy(ptr noundef %201)
  %202 = load ptr, ptr %offd_edge_bc, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %202, i32 noundef 0)
  store ptr null, ptr %offd_edge_bc, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gt) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %offd_edge_bc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nv) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %203 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G204 = getelementptr inbounds %struct.hypre_AMEData, ptr %203, i32 0, i32 2
  %204 = load ptr, ptr %G204, align 8, !tbaa !19
  %comm_pkg205 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %204, i32 0, i32 15
  %205 = load ptr, ptr %comm_pkg205, align 8, !tbaa !51
  %tobool206 = icmp ne ptr %205, null
  br i1 %tobool206, label %if.end210, label %if.then207

if.then207:                                       ; preds = %for.end200
  %206 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G208 = getelementptr inbounds %struct.hypre_AMEData, ptr %206, i32 0, i32 2
  %207 = load ptr, ptr %G208, align 8, !tbaa !19
  %call209 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %207)
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %for.end200
  %208 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.hypre_AMEData, ptr %208, i32 0, i32 1
  %209 = load ptr, ptr %M, align 8, !tbaa !27
  %comm_pkg211 = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %209, i32 0, i32 15
  %210 = load ptr, ptr %comm_pkg211, align 8, !tbaa !51
  %tobool212 = icmp ne ptr %210, null
  br i1 %tobool212, label %if.end216, label %if.then213

if.then213:                                       ; preds = %if.end210
  %211 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M214 = getelementptr inbounds %struct.hypre_AMEData, ptr %211, i32 0, i32 1
  %212 = load ptr, ptr %M214, align 8, !tbaa !27
  %call215 = call i32 @hypre_MatvecCommPkgCreate(ptr noundef %212)
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %if.end210
  %213 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G217 = getelementptr inbounds %struct.hypre_AMEData, ptr %213, i32 0, i32 2
  %214 = load ptr, ptr %G217, align 8, !tbaa !19
  %215 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M218 = getelementptr inbounds %struct.hypre_AMEData, ptr %215, i32 0, i32 1
  %216 = load ptr, ptr %M218, align 8, !tbaa !27
  %217 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G219 = getelementptr inbounds %struct.hypre_AMEData, ptr %217, i32 0, i32 2
  %218 = load ptr, ptr %G219, align 8, !tbaa !19
  %219 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G = getelementptr inbounds %struct.hypre_AMEData, ptr %219, i32 0, i32 3
  %call220 = call i32 @hypre_BoomerAMGBuildCoarseOperator(ptr noundef %214, ptr noundef %216, ptr noundef %218, ptr noundef %A_G)
  %220 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G221 = getelementptr inbounds %struct.hypre_AMEData, ptr %220, i32 0, i32 3
  %221 = load ptr, ptr %A_G221, align 8, !tbaa !20
  %call222 = call i32 @hypre_ParCSRMatrixFixZeroRows(ptr noundef %221)
  %222 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G = getelementptr inbounds %struct.hypre_AMEData, ptr %222, i32 0, i32 4
  %call223 = call i32 @HYPRE_BoomerAMGCreate(ptr noundef %B1_G)
  %223 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G224 = getelementptr inbounds %struct.hypre_AMEData, ptr %223, i32 0, i32 4
  %224 = load ptr, ptr %B1_G224, align 8, !tbaa !21
  %225 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %B_G_coarsen_type = getelementptr inbounds %struct.hypre_AMSData, ptr %225, i32 0, i32 46
  %226 = load i32, ptr %B_G_coarsen_type, align 8, !tbaa !63
  %call225 = call i32 @HYPRE_BoomerAMGSetCoarsenType(ptr noundef %224, i32 noundef %226)
  %227 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G226 = getelementptr inbounds %struct.hypre_AMEData, ptr %227, i32 0, i32 4
  %228 = load ptr, ptr %B1_G226, align 8, !tbaa !21
  %229 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %B_G_agg_levels = getelementptr inbounds %struct.hypre_AMSData, ptr %229, i32 0, i32 47
  %230 = load i32, ptr %B_G_agg_levels, align 4, !tbaa !64
  %call227 = call i32 @HYPRE_BoomerAMGSetAggNumLevels(ptr noundef %228, i32 noundef %230)
  %231 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G228 = getelementptr inbounds %struct.hypre_AMEData, ptr %231, i32 0, i32 4
  %232 = load ptr, ptr %B1_G228, align 8, !tbaa !21
  %233 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %B_G_relax_type = getelementptr inbounds %struct.hypre_AMSData, ptr %233, i32 0, i32 48
  %234 = load i32, ptr %B_G_relax_type, align 8, !tbaa !65
  %call229 = call i32 @HYPRE_BoomerAMGSetRelaxType(ptr noundef %232, i32 noundef %234)
  %235 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G230 = getelementptr inbounds %struct.hypre_AMEData, ptr %235, i32 0, i32 4
  %236 = load ptr, ptr %B1_G230, align 8, !tbaa !21
  %call231 = call i32 @HYPRE_BoomerAMGSetNumSweeps(ptr noundef %236, i32 noundef 1)
  %237 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G232 = getelementptr inbounds %struct.hypre_AMEData, ptr %237, i32 0, i32 4
  %238 = load ptr, ptr %B1_G232, align 8, !tbaa !21
  %call233 = call i32 @HYPRE_BoomerAMGSetMaxLevels(ptr noundef %238, i32 noundef 25)
  %239 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G234 = getelementptr inbounds %struct.hypre_AMEData, ptr %239, i32 0, i32 4
  %240 = load ptr, ptr %B1_G234, align 8, !tbaa !21
  %call235 = call i32 @HYPRE_BoomerAMGSetTol(ptr noundef %240, double noundef 0.000000e+00)
  %241 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G236 = getelementptr inbounds %struct.hypre_AMEData, ptr %241, i32 0, i32 4
  %242 = load ptr, ptr %B1_G236, align 8, !tbaa !21
  %call237 = call i32 @HYPRE_BoomerAMGSetMaxIter(ptr noundef %242, i32 noundef 1)
  %243 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G238 = getelementptr inbounds %struct.hypre_AMEData, ptr %243, i32 0, i32 4
  %244 = load ptr, ptr %B1_G238, align 8, !tbaa !21
  %245 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %B_G_theta = getelementptr inbounds %struct.hypre_AMSData, ptr %245, i32 0, i32 50
  %246 = load double, ptr %B_G_theta, align 8, !tbaa !66
  %call239 = call i32 @HYPRE_BoomerAMGSetStrongThreshold(ptr noundef %244, double noundef %246)
  %247 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G240 = getelementptr inbounds %struct.hypre_AMEData, ptr %247, i32 0, i32 4
  %248 = load ptr, ptr %B1_G240, align 8, !tbaa !21
  %249 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %B_G_relax_type241 = getelementptr inbounds %struct.hypre_AMSData, ptr %249, i32 0, i32 48
  %250 = load i32, ptr %B_G_relax_type241, align 8, !tbaa !65
  %call242 = call i32 @HYPRE_BoomerAMGSetCycleRelaxType(ptr noundef %248, i32 noundef %250, i32 noundef 3)
  %251 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G243 = getelementptr inbounds %struct.hypre_AMEData, ptr %251, i32 0, i32 3
  %252 = load ptr, ptr %A_G243, align 8, !tbaa !20
  %comm = getelementptr inbounds %struct.hypre_ParCSRMatrix_struct, ptr %252, i32 0, i32 0
  %253 = load ptr, ptr %comm, align 8, !tbaa !67
  %254 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G = getelementptr inbounds %struct.hypre_AMEData, ptr %254, i32 0, i32 5
  %call244 = call i32 @HYPRE_ParCSRPCGCreate(ptr noundef %253, ptr noundef %B2_G)
  %255 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G245 = getelementptr inbounds %struct.hypre_AMEData, ptr %255, i32 0, i32 5
  %256 = load ptr, ptr %B2_G245, align 8, !tbaa !22
  %call246 = call i32 @HYPRE_PCGSetPrintLevel(ptr noundef %256, i32 noundef 0)
  %257 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G247 = getelementptr inbounds %struct.hypre_AMEData, ptr %257, i32 0, i32 5
  %258 = load ptr, ptr %B2_G247, align 8, !tbaa !22
  %call248 = call i32 @HYPRE_PCGSetTol(ptr noundef %258, double noundef 0x3D719799812DEA11)
  %259 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G249 = getelementptr inbounds %struct.hypre_AMEData, ptr %259, i32 0, i32 5
  %260 = load ptr, ptr %B2_G249, align 8, !tbaa !22
  %call250 = call i32 @HYPRE_PCGSetMaxIter(ptr noundef %260, i32 noundef 20)
  %261 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G251 = getelementptr inbounds %struct.hypre_AMEData, ptr %261, i32 0, i32 5
  %262 = load ptr, ptr %B2_G251, align 8, !tbaa !22
  %263 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B1_G252 = getelementptr inbounds %struct.hypre_AMEData, ptr %263, i32 0, i32 4
  %264 = load ptr, ptr %B1_G252, align 8, !tbaa !21
  %call253 = call i32 @HYPRE_PCGSetPrecond(ptr noundef %262, ptr noundef @HYPRE_BoomerAMGSolve, ptr noundef @HYPRE_BoomerAMGSetup, ptr noundef %264)
  %265 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G254 = getelementptr inbounds %struct.hypre_AMEData, ptr %265, i32 0, i32 5
  %266 = load ptr, ptr %B2_G254, align 8, !tbaa !22
  %267 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G255 = getelementptr inbounds %struct.hypre_AMEData, ptr %267, i32 0, i32 3
  %268 = load ptr, ptr %A_G255, align 8, !tbaa !20
  %269 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t1256 = getelementptr inbounds %struct.hypre_AMEData, ptr %269, i32 0, i32 14
  %270 = load ptr, ptr %t1256, align 8, !tbaa !23
  %271 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t2257 = getelementptr inbounds %struct.hypre_AMEData, ptr %271, i32 0, i32 15
  %272 = load ptr, ptr %t2257, align 8, !tbaa !24
  %call258 = call i32 @HYPRE_ParCSRPCGSetup(ptr noundef %266, ptr noundef %268, ptr noundef %270, ptr noundef %272)
  call void @llvm.lifetime.start.p0(i64 4, ptr %seed) #4
  store i32 75, ptr %seed, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eigenvectors) #4
  %call259 = call ptr @hypre_CAlloc(i64 noundef 1, i64 noundef 200, i32 noundef 0)
  %273 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter260 = getelementptr inbounds %struct.hypre_AMEData, ptr %273, i32 0, i32 13
  store ptr %call259, ptr %interpreter260, align 8, !tbaa !18
  %274 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter261 = getelementptr inbounds %struct.hypre_AMEData, ptr %274, i32 0, i32 13
  %275 = load ptr, ptr %interpreter261, align 8, !tbaa !18
  store ptr %275, ptr %interpreter, align 8, !tbaa !4
  %276 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %call262 = call i32 @HYPRE_ParCSRSetupInterpreter(ptr noundef %276)
  %277 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.hypre_AMEData, ptr %277, i32 0, i32 6
  %278 = load i32, ptr %block_size, align 8, !tbaa !8
  %conv263 = sext i32 %278 to i64
  %call264 = call ptr @hypre_CAlloc(i64 noundef %conv263, i64 noundef 8, i32 noundef 0)
  %279 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues = getelementptr inbounds %struct.hypre_AMEData, ptr %279, i32 0, i32 8
  store ptr %call264, ptr %eigenvalues, align 8, !tbaa !17
  %280 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %281 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size265 = getelementptr inbounds %struct.hypre_AMEData, ptr %281, i32 0, i32 6
  %282 = load i32, ptr %block_size265, align 8, !tbaa !8
  %283 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t3266 = getelementptr inbounds %struct.hypre_AMEData, ptr %283, i32 0, i32 16
  %284 = load ptr, ptr %t3266, align 8, !tbaa !25
  %call267 = call ptr @mv_MultiVectorCreateFromSampleVector(ptr noundef %280, i32 noundef %282, ptr noundef %284)
  %285 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors268 = getelementptr inbounds %struct.hypre_AMEData, ptr %285, i32 0, i32 7
  store ptr %call267, ptr %eigenvectors268, align 8, !tbaa !16
  %286 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors269 = getelementptr inbounds %struct.hypre_AMEData, ptr %286, i32 0, i32 7
  %287 = load ptr, ptr %eigenvectors269, align 8, !tbaa !16
  store ptr %287, ptr %eigenvectors, align 8, !tbaa !4
  %288 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  %289 = load i32, ptr %seed, align 4, !tbaa !28
  call void @mv_MultiVectorSetRandom(ptr noundef %288, i32 noundef %289)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i270) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j271) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data272) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  %290 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  %call273 = call ptr @mv_MultiVectorGetData(ptr noundef %290)
  store ptr %call273, ptr %tmp, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #4
  %291 = load ptr, ptr %tmp, align 8, !tbaa !4
  %vector = getelementptr inbounds %struct.mv_TempMultiVector, ptr %291, i32 0, i32 2
  %292 = load ptr, ptr %vector, align 8, !tbaa !68
  store ptr %292, ptr %v, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #4
  store i32 0, ptr %i270, align 4, !tbaa !28
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc297, %if.end216
  %293 = load i32, ptr %i270, align 4, !tbaa !28
  %294 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size275 = getelementptr inbounds %struct.hypre_AMEData, ptr %294, i32 0, i32 6
  %295 = load i32, ptr %block_size275, align 8, !tbaa !8
  %cmp276 = icmp slt i32 %293, %295
  br i1 %cmp276, label %for.body278, label %for.end299

for.body278:                                      ; preds = %for.cond274
  %296 = load ptr, ptr %v, align 8, !tbaa !4
  %297 = load i32, ptr %i270, align 4, !tbaa !28
  %idxprom279 = sext i32 %297 to i64
  %arrayidx280 = getelementptr inbounds ptr, ptr %296, i64 %idxprom279
  %298 = load ptr, ptr %arrayidx280, align 8, !tbaa !4
  store ptr %298, ptr %vi, align 8, !tbaa !4
  %299 = load ptr, ptr %vi, align 8, !tbaa !4
  %local_vector = getelementptr inbounds %struct.hypre_ParVector_struct, ptr %299, i32 0, i32 6
  %300 = load ptr, ptr %local_vector, align 8, !tbaa !70
  %data281 = getelementptr inbounds %struct.hypre_Vector, ptr %300, i32 0, i32 0
  %301 = load ptr, ptr %data281, align 8, !tbaa !72
  store ptr %301, ptr %data272, align 8, !tbaa !4
  store i32 0, ptr %j271, align 4, !tbaa !28
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc293, %for.body278
  %302 = load i32, ptr %j271, align 4, !tbaa !28
  %303 = load i32, ptr %ne, align 4, !tbaa !28
  %cmp283 = icmp slt i32 %302, %303
  br i1 %cmp283, label %for.body285, label %for.end295

for.body285:                                      ; preds = %for.cond282
  %304 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  %305 = load i32, ptr %j271, align 4, !tbaa !28
  %idxprom286 = sext i32 %305 to i64
  %arrayidx287 = getelementptr inbounds i32, ptr %304, i64 %idxprom286
  %306 = load i32, ptr %arrayidx287, align 4, !tbaa !28
  %tobool288 = icmp ne i32 %306, 0
  br i1 %tobool288, label %if.then289, label %if.end292

if.then289:                                       ; preds = %for.body285
  %307 = load ptr, ptr %data272, align 8, !tbaa !4
  %308 = load i32, ptr %j271, align 4, !tbaa !28
  %idxprom290 = sext i32 %308 to i64
  %arrayidx291 = getelementptr inbounds double, ptr %307, i64 %idxprom290
  store double 0.000000e+00, ptr %arrayidx291, align 8, !tbaa !31
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %for.body285
  br label %for.inc293

for.inc293:                                       ; preds = %if.end292
  %309 = load i32, ptr %j271, align 4, !tbaa !28
  %inc294 = add nsw i32 %309, 1
  store i32 %inc294, ptr %j271, align 4, !tbaa !28
  br label %for.cond282, !llvm.loop !74

for.end295:                                       ; preds = %for.cond282
  %310 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  %311 = load ptr, ptr %vi, align 8, !tbaa !4
  %call296 = call i32 @hypre_AMEDiscrDivFreeComponent(ptr noundef %310, ptr noundef %311)
  br label %for.inc297

for.inc297:                                       ; preds = %for.end295
  %312 = load i32, ptr %i270, align 4, !tbaa !28
  %inc298 = add nsw i32 %312, 1
  store i32 %inc298, ptr %i270, align 4, !tbaa !28
  br label %for.cond274, !llvm.loop !75

for.end299:                                       ; preds = %for.cond274
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %data272) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j271) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i270) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %eigenvectors) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %seed) #4
  %313 = load ptr, ptr %edge_bc, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %313, i32 noundef 0)
  store ptr null, ptr %edge_bc, align 8, !tbaa !4
  %314 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ams_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %edge_bc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ne) #4
  ret i32 %314
}

declare ptr @hypre_ParVectorInDomainOf(ptr noundef) #2

declare ptr @hypre_MAlloc(i64 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare i32 @hypre_ParCSRMatrixTranspose(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @hypre_MatvecCommPkgCreate(ptr noundef) #2

declare ptr @hypre_ParCSRCommHandleCreate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParCSRCommHandleDestroy(ptr noundef) #2

declare i32 @hypre_BoomerAMGBuildCoarseOperator(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @hypre_ParCSRMatrixFixZeroRows(ptr noundef) #2

declare i32 @HYPRE_BoomerAMGCreate(ptr noundef) #2

declare i32 @HYPRE_BoomerAMGSetCoarsenType(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetAggNumLevels(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetRelaxType(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetNumSweeps(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetMaxLevels(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetTol(ptr noundef, double noundef) #2

declare i32 @HYPRE_BoomerAMGSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_BoomerAMGSetStrongThreshold(ptr noundef, double noundef) #2

declare i32 @HYPRE_BoomerAMGSetCycleRelaxType(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @HYPRE_ParCSRPCGCreate(ptr noundef, ptr noundef) #2

declare i32 @HYPRE_PCGSetPrintLevel(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_PCGSetTol(ptr noundef, double noundef) #2

declare i32 @HYPRE_PCGSetMaxIter(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_PCGSetPrecond(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_BoomerAMGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_BoomerAMGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRPCGSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRSetupInterpreter(ptr noundef) #2

declare ptr @mv_MultiVectorCreateFromSampleVector(ptr noundef, i32 noundef, ptr noundef) #2

declare void @mv_MultiVectorSetRandom(ptr noundef, i32 noundef) #2

declare ptr @mv_MultiVectorGetData(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMEDiscrDivFreeComponent(ptr noundef %esolver, ptr noundef %b) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %M, align 8, !tbaa !27
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t3 = getelementptr inbounds %struct.hypre_AMEData, ptr %4, i32 0, i32 16
  %5 = load ptr, ptr %t3, align 8, !tbaa !25
  %call = call i32 @hypre_ParCSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %3, double noundef 0.000000e+00, ptr noundef %5)
  %6 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.hypre_AMEData, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %G, align 8, !tbaa !19
  %8 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t31 = getelementptr inbounds %struct.hypre_AMEData, ptr %8, i32 0, i32 16
  %9 = load ptr, ptr %t31, align 8, !tbaa !25
  %10 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t1 = getelementptr inbounds %struct.hypre_AMEData, ptr %10, i32 0, i32 14
  %11 = load ptr, ptr %t1, align 8, !tbaa !23
  %call2 = call i32 @hypre_ParCSRMatrixMatvecT(double noundef 1.000000e+00, ptr noundef %7, ptr noundef %9, double noundef 0.000000e+00, ptr noundef %11)
  %12 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t2 = getelementptr inbounds %struct.hypre_AMEData, ptr %12, i32 0, i32 15
  %13 = load ptr, ptr %t2, align 8, !tbaa !24
  %call3 = call i32 @hypre_ParVectorSetConstantValues(ptr noundef %13, double noundef 0.000000e+00)
  %14 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %B2_G = getelementptr inbounds %struct.hypre_AMEData, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %B2_G, align 8, !tbaa !22
  %16 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %A_G = getelementptr inbounds %struct.hypre_AMEData, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %A_G, align 8, !tbaa !20
  %18 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t14 = getelementptr inbounds %struct.hypre_AMEData, ptr %18, i32 0, i32 14
  %19 = load ptr, ptr %t14, align 8, !tbaa !23
  %20 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t25 = getelementptr inbounds %struct.hypre_AMEData, ptr %20, i32 0, i32 15
  %21 = load ptr, ptr %t25, align 8, !tbaa !24
  %call6 = call i32 @HYPRE_ParCSRPCGSolve(ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %G7 = getelementptr inbounds %struct.hypre_AMEData, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %G7, align 8, !tbaa !19
  %24 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %t28 = getelementptr inbounds %struct.hypre_AMEData, ptr %24, i32 0, i32 15
  %25 = load ptr, ptr %t28, align 8, !tbaa !24
  %26 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call9 = call i32 @hypre_ParCSRMatrixMatvec(double noundef -1.000000e+00, ptr noundef %23, ptr noundef %25, double noundef 1.000000e+00, ptr noundef %26)
  %27 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %27
}

declare i32 @hypre_ParCSRMatrixMatvec(double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) #2

declare i32 @hypre_ParCSRMatrixMatvecT(double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) #2

declare i32 @hypre_ParVectorSetConstantValues(ptr noundef, double noundef) #2

declare i32 @HYPRE_ParCSRPCGSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @hypre_AMEOperatorA(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %ams_data = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ams_data) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %precond, align 8, !tbaa !26
  store ptr %2, ptr %ams_data, align 8, !tbaa !4
  %3 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.hypre_AMSData, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %A, align 8, !tbaa !43
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %4, ptr noundef %5, double noundef 0.000000e+00, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ams_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hypre_AMEMultiOperatorA(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %interpreter = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %interpreter) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter1 = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %interpreter1, align 8, !tbaa !18
  store ptr %2, ptr %interpreter, align 8, !tbaa !4
  %3 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %Eval = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %3, i32 0, i32 24
  %4 = load ptr, ptr %Eval, align 8, !tbaa !76
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !4
  call void %4(ptr noundef @hypre_AMEOperatorA, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hypre_AMEOperatorM(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %M = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %M, align 8, !tbaa !27
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParCSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %3, double noundef 0.000000e+00, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hypre_AMEMultiOperatorM(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %interpreter = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %interpreter) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter1 = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %interpreter1, align 8, !tbaa !18
  store ptr %2, ptr %interpreter, align 8, !tbaa !4
  %3 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %Eval = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %3, i32 0, i32 24
  %4 = load ptr, ptr %Eval, align 8, !tbaa !76
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !4
  call void %4(ptr noundef @hypre_AMEOperatorM, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @hypre_AMEOperatorB(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %ams_data = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ams_data) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %precond, align 8, !tbaa !26
  store ptr %2, ptr %ams_data, align 8, !tbaa !4
  %3 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call = call i32 @hypre_ParVectorSetConstantValues(ptr noundef %3, double noundef 0.000000e+00)
  %4 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %precond1 = getelementptr inbounds %struct.hypre_AMEData, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %precond1, align 8, !tbaa !26
  %6 = load ptr, ptr %ams_data, align 8, !tbaa !4
  %A = getelementptr inbounds %struct.hypre_AMSData, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %A, align 8, !tbaa !43
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call2 = call i32 @hypre_AMSSolve(ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %call3 = call i32 @hypre_AMEDiscrDivFreeComponent(ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %ams_data) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

declare i32 @hypre_AMSSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @hypre_AMEMultiOperatorB(ptr noundef %data, ptr noundef %x, ptr noundef %y) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %interpreter = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %interpreter) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %interpreter1 = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %interpreter1, align 8, !tbaa !18
  store ptr %2, ptr %interpreter, align 8, !tbaa !4
  %3 = load ptr, ptr %interpreter, align 8, !tbaa !4
  %Eval = getelementptr inbounds %struct.mv_InterfaceInterpreter, ptr %3, i32 0, i32 24
  %4 = load ptr, ptr %Eval, align 8, !tbaa !76
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !4
  call void %4(ptr noundef @hypre_AMEOperatorB, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %interpreter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMESolve(ptr noundef %esolver) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %nit = alloca i32, align 4
  %blap_fn = alloca %struct.lobpcg_BLASLAPACKFunctions, align 8
  %lobpcg_tol = alloca %struct.lobpcg_Tolerance, align 8
  %residuals = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nit) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %blap_fn) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %lobpcg_tol) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %residuals) #4
  %dsygv = getelementptr inbounds %struct.lobpcg_BLASLAPACKFunctions, ptr %blap_fn, i32 0, i32 1
  store ptr @dsygv_, ptr %dsygv, align 8, !tbaa !78
  %dpotrf = getelementptr inbounds %struct.lobpcg_BLASLAPACKFunctions, ptr %blap_fn, i32 0, i32 0
  store ptr @dpotrf_, ptr %dpotrf, align 8, !tbaa !80
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %rtol = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 11
  %2 = load double, ptr %rtol, align 8, !tbaa !14
  %relative = getelementptr inbounds %struct.lobpcg_Tolerance, ptr %lobpcg_tol, i32 0, i32 1
  store double %2, ptr %relative, align 8, !tbaa !81
  %3 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %atol = getelementptr inbounds %struct.hypre_AMEData, ptr %3, i32 0, i32 10
  %4 = load double, ptr %atol, align 8, !tbaa !13
  %absolute = getelementptr inbounds %struct.lobpcg_Tolerance, ptr %lobpcg_tol, i32 0, i32 0
  store double %4, ptr %absolute, align 8, !tbaa !83
  %5 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size = getelementptr inbounds %struct.hypre_AMEData, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %block_size, align 8, !tbaa !8
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @hypre_MAlloc(i64 noundef %mul, i32 noundef 0)
  store ptr %call, ptr %residuals, align 8, !tbaa !4
  %7 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors = getelementptr inbounds %struct.hypre_AMEData, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %eigenvectors, align 8, !tbaa !16
  %9 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %maxit = getelementptr inbounds %struct.hypre_AMEData, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %maxit, align 8, !tbaa !12
  %14 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %print_level = getelementptr inbounds %struct.hypre_AMEData, ptr %14, i32 0, i32 12
  %15 = load i32, ptr %print_level, align 8, !tbaa !15
  %16 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues = getelementptr inbounds %struct.hypre_AMEData, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %eigenvalues, align 8, !tbaa !17
  %18 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size1 = getelementptr inbounds %struct.hypre_AMEData, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %block_size1, align 8, !tbaa !8
  %20 = load ptr, ptr %residuals, align 8, !tbaa !4
  %21 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %block_size2 = getelementptr inbounds %struct.hypre_AMEData, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %block_size2, align 8, !tbaa !8
  %23 = getelementptr inbounds { double, double }, ptr %lobpcg_tol, i32 0, i32 0
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds { double, double }, ptr %lobpcg_tol, i32 0, i32 1
  %26 = load double, ptr %25, align 8
  %call3 = call i32 @lobpcg_solve(ptr noundef %8, ptr noundef %9, ptr noundef @hypre_AMEMultiOperatorA, ptr noundef %10, ptr noundef @hypre_AMEMultiOperatorM, ptr noundef %11, ptr noundef @hypre_AMEMultiOperatorB, ptr noundef null, ptr noundef byval(%struct.lobpcg_BLASLAPACKFunctions) align 8 %blap_fn, double %24, double %26, i32 noundef %13, i32 noundef %15, ptr noundef %nit, ptr noundef %17, ptr noundef null, i32 noundef %19, ptr noundef %20, ptr noundef null, i32 noundef %22)
  %27 = load ptr, ptr %residuals, align 8, !tbaa !4
  call void @hypre_Free(ptr noundef %27, i32 noundef 0)
  store ptr null, ptr %residuals, align 8, !tbaa !4
  %28 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %residuals) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %lobpcg_tol) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %blap_fn) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nit) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %28
}

declare i32 @dsygv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dpotrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lobpcg_solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.lobpcg_BLASLAPACKFunctions) align 8, double, double, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @hypre_AMEGetEigenvectors(ptr noundef %esolver, ptr noundef %eigenvectors_ptr) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %eigenvectors_ptr.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  %eigenvectors = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %eigenvectors_ptr, ptr %eigenvectors_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %eigenvectors) #4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvectors1 = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %eigenvectors1, align 8, !tbaa !16
  store ptr %2, ptr %eigenvectors, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  %3 = load ptr, ptr %eigenvectors, align 8, !tbaa !4
  %call = call ptr @mv_MultiVectorGetData(ptr noundef %3)
  store ptr %call, ptr %tmp, align 8, !tbaa !4
  %4 = load ptr, ptr %tmp, align 8, !tbaa !4
  %vector = getelementptr inbounds %struct.mv_TempMultiVector, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %vector, align 8, !tbaa !68
  %6 = load ptr, ptr %eigenvectors_ptr.addr, align 8, !tbaa !4
  store ptr %5, ptr %6, align 8, !tbaa !4
  %7 = load ptr, ptr %tmp, align 8, !tbaa !4
  %vector2 = getelementptr inbounds %struct.mv_TempMultiVector, ptr %7, i32 0, i32 2
  store ptr null, ptr %vector2, align 8, !tbaa !68
  %8 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %eigenvectors) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @hypre_AMEGetEigenvalues(ptr noundef %esolver, ptr noundef %eigenvalues_ptr) #0 {
entry:
  %esolver.addr = alloca ptr, align 8
  %eigenvalues_ptr.addr = alloca ptr, align 8
  %ame_data = alloca ptr, align 8
  store ptr %esolver, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %eigenvalues_ptr, ptr %eigenvalues_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ame_data) #4
  %0 = load ptr, ptr %esolver.addr, align 8, !tbaa !4
  store ptr %0, ptr %ame_data, align 8, !tbaa !4
  %1 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues = getelementptr inbounds %struct.hypre_AMEData, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %eigenvalues, align 8, !tbaa !17
  %3 = load ptr, ptr %eigenvalues_ptr.addr, align 8, !tbaa !4
  store ptr %2, ptr %3, align 8, !tbaa !4
  %4 = load ptr, ptr %ame_data, align 8, !tbaa !4
  %eigenvalues1 = getelementptr inbounds %struct.hypre_AMEData, ptr %4, i32 0, i32 8
  store ptr null, ptr %eigenvalues1, align 8, !tbaa !17
  %5 = load i32, ptr @hypre__global_error, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ame_data) #4
  ret i32 %5
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 48}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !11, i64 80, !11, i64 88, !10, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!9, !10, i64 72}
!13 = !{!9, !11, i64 80}
!14 = !{!9, !11, i64 88}
!15 = !{!9, !10, i64 96}
!16 = !{!9, !5, i64 56}
!17 = !{!9, !5, i64 64}
!18 = !{!9, !5, i64 104}
!19 = !{!9, !5, i64 16}
!20 = !{!9, !5, i64 24}
!21 = !{!9, !5, i64 32}
!22 = !{!9, !5, i64 40}
!23 = !{!9, !5, i64 112}
!24 = !{!9, !5, i64 120}
!25 = !{!9, !5, i64 128}
!26 = !{!9, !5, i64 0}
!27 = !{!9, !5, i64 8}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !10, i64 40}
!30 = !{!"", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !10, i64 144, !10, i64 148, !10, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !10, i64 240, !10, i64 244, !10, i64 248, !11, i64 256, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !5, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !10, i64 320, !11, i64 328, !10, i64 336, !10, i64 340, !10, i64 344, !10, i64 348, !11, i64 352, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !10, i64 376, !10, i64 380, !11, i64 384, !10, i64 392, !10, i64 396, !5, i64 400, !5, i64 408, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !10, i64 448, !11, i64 456}
!31 = !{!11, !11, i64 0}
!32 = !{!30, !5, i64 16}
!33 = !{!30, !5, i64 416}
!34 = !{!30, !5, i64 424}
!35 = !{!30, !5, i64 400}
!36 = !{!37, !5, i64 32}
!37 = !{!"hypre_ParCSRMatrix_struct", !5, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !11, i64 128, !5, i64 136, !5, i64 144, !10, i64 152, !5, i64 160, !10, i64 168, !5, i64 176, !10, i64 184, !5, i64 192, !5, i64 200}
!38 = !{!39, !10, i64 28}
!39 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !5, i64 40, !5, i64 48, !10, i64 56, !5, i64 64, !5, i64 72, !10, i64 80, !6, i64 84}
!40 = !{!39, !10, i64 24}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!30, !5, i64 8}
!44 = !{!39, !5, i64 0}
!45 = !{!39, !5, i64 8}
!46 = !{!39, !5, i64 64}
!47 = !{!37, !5, i64 40}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = distinct !{!50, !42}
!51 = !{!37, !5, i64 96}
!52 = !{!53, !10, i64 8}
!53 = !{!"_hypre_ParCSRCommPkg", !5, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!54 = !{!53, !5, i64 24}
!55 = !{!53, !5, i64 32}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !42}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = !{!30, !10, i64 336}
!64 = !{!30, !10, i64 340}
!65 = !{!30, !10, i64 344}
!66 = !{!30, !11, i64 352}
!67 = !{!37, !5, i64 0}
!68 = !{!69, !5, i64 16}
!69 = !{!"", !10, i64 0, !5, i64 8, !5, i64 16, !10, i64 24, !10, i64 28, !5, i64 32}
!70 = !{!71, !5, i64 40}
!71 = !{!"hypre_ParVector_struct", !5, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !5, i64 24, !10, i64 32, !5, i64 40, !10, i64 48, !10, i64 52, !5, i64 56}
!72 = !{!73, !5, i64 0}
!73 = !{!"", !5, i64 0, !10, i64 8, !10, i64 12, !6, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = !{!77, !5, i64 192}
!77 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192}
!78 = !{!79, !5, i64 8}
!79 = !{!"", !5, i64 0, !5, i64 8}
!80 = !{!79, !5, i64 0}
!81 = !{!82, !11, i64 8}
!82 = !{!"", !11, i64 0, !11, i64 8}
!83 = !{!82, !11, i64 0}
