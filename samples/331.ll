; ModuleID = 'samples/331.bc'
source_filename = "HYPRE_ConvertParCSRMatrixToDistributedMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"HYPRE_ConvertParCSRMatrixToDistributedMatrix.c\00", align 1
@hypre__global_error = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @HYPRE_ConvertParCSRMatrixToDistributedMatrix(ptr noundef %parcsr_matrix, ptr noundef %DistributedMatrix) #0 {
entry:
  %retval = alloca i32, align 4
  %parcsr_matrix.addr = alloca ptr, align 8
  %DistributedMatrix.addr = alloca ptr, align 8
  %comm = alloca ptr, align 8
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parcsr_matrix, ptr %parcsr_matrix.addr, align 8, !tbaa !4
  store ptr %DistributedMatrix, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %comm) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %M) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #3
  %0 = load ptr, ptr %parcsr_matrix.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @hypre_error_handler(ptr noundef @.str, i32 noundef 53, i32 noundef 4, ptr noundef null)
  %1 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %parcsr_matrix.addr, align 8, !tbaa !4
  %call = call i32 @HYPRE_ParCSRMatrixGetComm(ptr noundef %2, ptr noundef %comm)
  %3 = load ptr, ptr %comm, align 8, !tbaa !4
  %4 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %call1 = call i32 @HYPRE_DistributedMatrixCreate(ptr noundef %3, ptr noundef %4)
  %5 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %5, align 8, !tbaa !4
  %call2 = call i32 @HYPRE_DistributedMatrixSetLocalStorageType(ptr noundef %6, i32 noundef 5555)
  %7 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %7, align 8, !tbaa !4
  %call3 = call i32 @HYPRE_DistributedMatrixInitialize(ptr noundef %8)
  %9 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %11 = load ptr, ptr %parcsr_matrix.addr, align 8, !tbaa !4
  %call4 = call i32 @HYPRE_DistributedMatrixSetLocalStorage(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %parcsr_matrix.addr, align 8, !tbaa !4
  %call5 = call i32 @HYPRE_ParCSRMatrixGetDims(ptr noundef %12, ptr noundef %M, ptr noundef %N)
  %13 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %13, align 8, !tbaa !4
  %15 = load i32, ptr %M, align 4, !tbaa !8
  %16 = load i32, ptr %N, align 4, !tbaa !8
  %call6 = call i32 @HYPRE_DistributedMatrixSetDims(ptr noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %DistributedMatrix.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %17, align 8, !tbaa !4
  %call7 = call i32 @HYPRE_DistributedMatrixAssemble(ptr noundef %18)
  %19 = load i32, ptr @hypre__global_error, align 4, !tbaa !8
  store i32 %19, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %M) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %comm) #3
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @hypre_error_handler(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRMatrixGetComm(ptr noundef, ptr noundef) #2

declare i32 @HYPRE_DistributedMatrixCreate(ptr noundef, ptr noundef) #2

declare i32 @HYPRE_DistributedMatrixSetLocalStorageType(ptr noundef, i32 noundef) #2

declare i32 @HYPRE_DistributedMatrixInitialize(ptr noundef) #2

declare i32 @HYPRE_DistributedMatrixSetLocalStorage(ptr noundef, ptr noundef) #2

declare i32 @HYPRE_ParCSRMatrixGetDims(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @HYPRE_DistributedMatrixSetDims(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @HYPRE_DistributedMatrixAssemble(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
