; ModuleID = 'samples/995.bc'
source_filename = "frame/compat/cblas/src/cblas_ssyr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_ssyr2\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal Uplo setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_ssyr2(i32 noundef %order, i32 noundef %Uplo, i32 noundef %N, float noundef %alpha, ptr noundef %X, i32 noundef %incX, ptr noundef %Y, i32 noundef %incY, ptr noundef %A, i32 noundef %lda) #0 {
entry:
  %order.addr = alloca i32, align 4
  %Uplo.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %X.addr = alloca ptr, align 8
  %incX.addr = alloca i32, align 4
  %Y.addr = alloca ptr, align 8
  %incY.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %UL = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !4
  store i32 %Uplo, ptr %Uplo.addr, align 4, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !9
  store ptr %X, ptr %X.addr, align 8, !tbaa !11
  store i32 %incX, ptr %incX.addr, align 4, !tbaa !7
  store ptr %Y, ptr %Y.addr, align 8, !tbaa !11
  store i32 %incY, ptr %incY.addr, align 4, !tbaa !7
  store ptr %A, ptr %A.addr, align 8, !tbaa !11
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %UL) #3
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %0 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 102
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 122
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end6

if.else:                                          ; preds = %if.then
  %2 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %2, 121
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %3 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %3)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %4 = load ptr, ptr %X.addr, align 8, !tbaa !11
  %5 = load ptr, ptr %Y.addr, align 8, !tbaa !11
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !11
  call void @ssyr2_blis_impl(ptr noundef %UL, ptr noundef %N.addr, ptr noundef %alpha.addr, ptr noundef %4, ptr noundef %incX.addr, ptr noundef %5, ptr noundef %incY.addr, ptr noundef %6, ptr noundef %lda.addr)
  br label %if.end20

if.else7:                                         ; preds = %entry
  %7 = load i32, ptr %order.addr, align 4, !tbaa !4
  %cmp8 = icmp eq i32 %7, 101
  br i1 %cmp8, label %if.then9, label %if.else18

if.then9:                                         ; preds = %if.else7
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %8 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %8, 122
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.then9
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end17

if.else12:                                        ; preds = %if.then9
  %9 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp13 = icmp eq i32 %9, 121
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end16

if.else15:                                        ; preds = %if.else12
  %10 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %10)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  %11 = load ptr, ptr %X.addr, align 8, !tbaa !11
  %12 = load ptr, ptr %Y.addr, align 8, !tbaa !11
  %13 = load ptr, ptr %A.addr, align 8, !tbaa !11
  call void @ssyr2_blis_impl(ptr noundef %UL, ptr noundef %N.addr, ptr noundef %alpha.addr, ptr noundef %11, ptr noundef %incX.addr, ptr noundef %12, ptr noundef %incY.addr, ptr noundef %13, ptr noundef %lda.addr)
  br label %if.end19

if.else18:                                        ; preds = %if.else7
  %14 = load i32, ptr %order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %14)
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.end17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end6
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.else15, %if.else5
  call void @llvm.lifetime.end.p0(i64 1, ptr %UL) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @ssyr2_blis_impl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
