; ModuleID = 'samples/915.bc'
source_filename = "frame/compat/cblas/src/cblas_sgemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_sgemv\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Illegal TransA setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_sgemv(i32 noundef %order, i32 noundef %TransA, i32 noundef %M, i32 noundef %N, float noundef %alpha, ptr noundef %A, i32 noundef %lda, ptr noundef %X, i32 noundef %incX, float noundef %beta, ptr noundef %Y, i32 noundef %incY) #0 {
entry:
  %order.addr = alloca i32, align 4
  %TransA.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %incX.addr = alloca i32, align 4
  %beta.addr = alloca float, align 4
  %Y.addr = alloca ptr, align 8
  %incY.addr = alloca i32, align 4
  %TA = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !4
  store i32 %TransA, ptr %TransA.addr, align 4, !tbaa !4
  store i32 %M, ptr %M.addr, align 4, !tbaa !7
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !11
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %X, ptr %X.addr, align 8, !tbaa !11
  store i32 %incX, ptr %incX.addr, align 4, !tbaa !7
  store float %beta, ptr %beta.addr, align 4, !tbaa !9
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !11
  store i32 %incY, ptr %incY.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %TA) #3
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %0 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 102
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 111
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 78, ptr %TA, align 1, !tbaa !4
  br label %if.end10

if.else:                                          ; preds = %if.then
  %2 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %2, 112
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 84, ptr %TA, align 1, !tbaa !4
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %3 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %3, 113
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  store i8 67, ptr %TA, align 1, !tbaa !4
  br label %if.end

if.else8:                                         ; preds = %if.else5
  %4 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %4)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  %5 = load ptr, ptr %A.addr, align 8, !tbaa !11
  %6 = load ptr, ptr %X.addr, align 8, !tbaa !11
  %7 = load ptr, ptr %Y.addr, align 8, !tbaa !11
  call void @sgemv_blis_impl(ptr noundef %TA, ptr noundef %M.addr, ptr noundef %N.addr, ptr noundef %alpha.addr, ptr noundef %5, ptr noundef %lda.addr, ptr noundef %6, ptr noundef %incX.addr, ptr noundef %beta.addr, ptr noundef %7, ptr noundef %incY.addr)
  br label %if.end28

if.else11:                                        ; preds = %entry
  %8 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp12 = icmp eq i32 %8, 101
  br i1 %cmp12, label %if.then13, label %if.else26

if.then13:                                        ; preds = %if.else11
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %9 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp14 = icmp eq i32 %9, 111
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.then13
  store i8 84, ptr %TA, align 1, !tbaa !4
  br label %if.end25

if.else16:                                        ; preds = %if.then13
  %10 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp17 = icmp eq i32 %10, 112
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else16
  store i8 78, ptr %TA, align 1, !tbaa !4
  br label %if.end24

if.else19:                                        ; preds = %if.else16
  %11 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp20 = icmp eq i32 %11, 113
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else19
  store i8 78, ptr %TA, align 1, !tbaa !4
  br label %if.end23

if.else22:                                        ; preds = %if.else19
  %12 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %12)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  %13 = load ptr, ptr %A.addr, align 8, !tbaa !11
  %14 = load ptr, ptr %X.addr, align 8, !tbaa !11
  %15 = load ptr, ptr %Y.addr, align 8, !tbaa !11
  call void @sgemv_blis_impl(ptr noundef %TA, ptr noundef %N.addr, ptr noundef %M.addr, ptr noundef %alpha.addr, ptr noundef %13, ptr noundef %lda.addr, ptr noundef %14, ptr noundef %incX.addr, ptr noundef %beta.addr, ptr noundef %15, ptr noundef %incY.addr)
  br label %if.end27

if.else26:                                        ; preds = %if.else11
  %16 = load i32, ptr %order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %16)
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.end25
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end10
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else22, %if.else8
  call void @llvm.lifetime.end.p0(i64 1, ptr %TA) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @sgemv_blis_impl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
