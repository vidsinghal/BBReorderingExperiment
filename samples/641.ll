; ModuleID = 'samples/641.bc'
source_filename = "frame/compat/cblas/src/cblas_sgemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_sgemm\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Illegal TransA setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Illegal TransB setting, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_sgemm(i32 noundef %Order, i32 noundef %TransA, i32 noundef %TransB, i32 noundef %M, i32 noundef %N, i32 noundef %K, float noundef %alpha, ptr noundef %A, i32 noundef %lda, ptr noundef %B, i32 noundef %ldb, float noundef %beta, ptr noundef %C, i32 noundef %ldc) #0 {
entry:
  %Order.addr = alloca i32, align 4
  %TransA.addr = alloca i32, align 4
  %TransB.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %alpha.addr = alloca float, align 4
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %B.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca float, align 4
  %C.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %TA = alloca i8, align 1
  %TB = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %Order, ptr %Order.addr, align 4, !tbaa !4
  store i32 %TransA, ptr %TransA.addr, align 4, !tbaa !4
  store i32 %TransB, ptr %TransB.addr, align 4, !tbaa !4
  store i32 %M, ptr %M.addr, align 4, !tbaa !7
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store i32 %K, ptr %K.addr, align 4, !tbaa !7
  store float %alpha, ptr %alpha.addr, align 4, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !11
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %B, ptr %B.addr, align 8, !tbaa !11
  store i32 %ldb, ptr %ldb.addr, align 4, !tbaa !7
  store float %beta, ptr %beta.addr, align 4, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !11
  store i32 %ldc, ptr %ldc.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %TA) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %TB) #3
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %0 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 102
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 112
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 84, ptr %TA, align 1, !tbaa !4
  br label %if.end10

if.else:                                          ; preds = %if.then
  %2 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %2, 113
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 67, ptr %TA, align 1, !tbaa !4
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %3 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp6 = icmp eq i32 %3, 111
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  store i8 78, ptr %TA, align 1, !tbaa !4
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
  %5 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp11 = icmp eq i32 %5, 112
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end10
  store i8 84, ptr %TB, align 1, !tbaa !4
  br label %if.end22

if.else13:                                        ; preds = %if.end10
  %6 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp14 = icmp eq i32 %6, 113
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else13
  store i8 67, ptr %TB, align 1, !tbaa !4
  br label %if.end21

if.else16:                                        ; preds = %if.else13
  %7 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp17 = icmp eq i32 %7, 111
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else16
  store i8 78, ptr %TB, align 1, !tbaa !4
  br label %if.end20

if.else19:                                        ; preds = %if.else16
  %8 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %8)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then12
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !11
  %10 = load ptr, ptr %B.addr, align 8, !tbaa !11
  %11 = load ptr, ptr %C.addr, align 8, !tbaa !11
  call void @sgemm_(ptr noundef %TA, ptr noundef %TB, ptr noundef %M.addr, ptr noundef %N.addr, ptr noundef %K.addr, ptr noundef %alpha.addr, ptr noundef %9, ptr noundef %lda.addr, ptr noundef %10, ptr noundef %ldb.addr, ptr noundef %beta.addr, ptr noundef %11, ptr noundef %ldc.addr)
  br label %if.end52

if.else23:                                        ; preds = %entry
  %12 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp24 = icmp eq i32 %12, 101
  br i1 %cmp24, label %if.then25, label %if.else50

if.then25:                                        ; preds = %if.else23
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %13 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp26 = icmp eq i32 %13, 112
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then25
  store i8 84, ptr %TB, align 1, !tbaa !4
  br label %if.end37

if.else28:                                        ; preds = %if.then25
  %14 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp29 = icmp eq i32 %14, 113
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else28
  store i8 67, ptr %TB, align 1, !tbaa !4
  br label %if.end36

if.else31:                                        ; preds = %if.else28
  %15 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  %cmp32 = icmp eq i32 %15, 111
  br i1 %cmp32, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else31
  store i8 78, ptr %TB, align 1, !tbaa !4
  br label %if.end35

if.else34:                                        ; preds = %if.else31
  %16 = load i32, ptr %TransA.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %16)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.then33
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then27
  %17 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp38 = icmp eq i32 %17, 112
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end37
  store i8 84, ptr %TA, align 1, !tbaa !4
  br label %if.end49

if.else40:                                        ; preds = %if.end37
  %18 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp41 = icmp eq i32 %18, 113
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else40
  store i8 67, ptr %TA, align 1, !tbaa !4
  br label %if.end48

if.else43:                                        ; preds = %if.else40
  %19 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  %cmp44 = icmp eq i32 %19, 111
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else43
  store i8 78, ptr %TA, align 1, !tbaa !4
  br label %if.end47

if.else46:                                        ; preds = %if.else43
  %20 = load i32, ptr %TransB.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %20)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.then45
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then42
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then39
  %21 = load ptr, ptr %B.addr, align 8, !tbaa !11
  %22 = load ptr, ptr %A.addr, align 8, !tbaa !11
  %23 = load ptr, ptr %C.addr, align 8, !tbaa !11
  call void @sgemm_(ptr noundef %TA, ptr noundef %TB, ptr noundef %N.addr, ptr noundef %M.addr, ptr noundef %K.addr, ptr noundef %alpha.addr, ptr noundef %21, ptr noundef %ldb.addr, ptr noundef %22, ptr noundef %lda.addr, ptr noundef %beta.addr, ptr noundef %23, ptr noundef %ldc.addr)
  br label %if.end51

if.else50:                                        ; preds = %if.else23
  %24 = load i32, ptr %Order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.3, i32 noundef %24)
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.end49
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end22
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.else46, %if.else34, %if.else19, %if.else8
  call void @llvm.lifetime.end.p0(i64 1, ptr %TB) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %TA) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
