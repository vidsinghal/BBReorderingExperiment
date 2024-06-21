; ModuleID = 'samples/677.bc'
source_filename = "frame/compat/cblas/src/cblas_zhemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_zhemm\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal Side setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Illegal Uplo setting, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_zhemm(i32 noundef %Order, i32 noundef %Side, i32 noundef %Uplo, i32 noundef %M, i32 noundef %N, ptr noundef %alpha, ptr noundef %A, i32 noundef %lda, ptr noundef %B, i32 noundef %ldb, ptr noundef %beta, ptr noundef %C, i32 noundef %ldc) #0 {
entry:
  %Order.addr = alloca i32, align 4
  %Side.addr = alloca i32, align 4
  %Uplo.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %B.addr = alloca ptr, align 8
  %ldb.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %SD = alloca i8, align 1
  %UL = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %Order, ptr %Order.addr, align 4, !tbaa !4
  store i32 %Side, ptr %Side.addr, align 4, !tbaa !4
  store i32 %Uplo, ptr %Uplo.addr, align 4, !tbaa !4
  store i32 %M, ptr %M.addr, align 4, !tbaa !7
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %B, ptr %B.addr, align 8, !tbaa !9
  store i32 %ldb, ptr %ldb.addr, align 4, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store i32 %ldc, ptr %ldc.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %SD) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %UL) #3
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %0 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 102
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %Side.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 142
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 82, ptr %SD, align 1, !tbaa !4
  br label %if.end6

if.else:                                          ; preds = %if.then
  %2 = load i32, ptr %Side.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %2, 141
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 76, ptr %SD, align 1, !tbaa !4
  br label %if.end

if.else5:                                         ; preds = %if.else
  %3 = load i32, ptr %Side.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %3)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %4 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp7 = icmp eq i32 %4, 121
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end14

if.else9:                                         ; preds = %if.end6
  %5 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %5, 122
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end13

if.else12:                                        ; preds = %if.else9
  %6 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %6)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  %7 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %C.addr, align 8, !tbaa !9
  call void @zhemm_(ptr noundef %SD, ptr noundef %UL, ptr noundef %M.addr, ptr noundef %N.addr, ptr noundef %7, ptr noundef %8, ptr noundef %lda.addr, ptr noundef %9, ptr noundef %ldb.addr, ptr noundef %10, ptr noundef %11, ptr noundef %ldc.addr)
  br label %if.end36

if.else15:                                        ; preds = %entry
  %12 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp16 = icmp eq i32 %12, 101
  br i1 %cmp16, label %if.then17, label %if.else34

if.then17:                                        ; preds = %if.else15
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %13 = load i32, ptr %Side.addr, align 4, !tbaa !4
  %cmp18 = icmp eq i32 %13, 142
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.then17
  store i8 76, ptr %SD, align 1, !tbaa !4
  br label %if.end25

if.else20:                                        ; preds = %if.then17
  %14 = load i32, ptr %Side.addr, align 4, !tbaa !4
  %cmp21 = icmp eq i32 %14, 141
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else20
  store i8 82, ptr %SD, align 1, !tbaa !4
  br label %if.end24

if.else23:                                        ; preds = %if.else20
  %15 = load i32, ptr %Side.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 2, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %15)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  %16 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp26 = icmp eq i32 %16, 121
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end25
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end33

if.else28:                                        ; preds = %if.end25
  %17 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp29 = icmp eq i32 %17, 122
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else28
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end32

if.else31:                                        ; preds = %if.else28
  %18 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %18)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.then30
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then27
  %19 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %20 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %B.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %23 = load ptr, ptr %C.addr, align 8, !tbaa !9
  call void @zhemm_(ptr noundef %SD, ptr noundef %UL, ptr noundef %N.addr, ptr noundef %M.addr, ptr noundef %19, ptr noundef %20, ptr noundef %lda.addr, ptr noundef %21, ptr noundef %ldb.addr, ptr noundef %22, ptr noundef %23, ptr noundef %ldc.addr)
  br label %if.end35

if.else34:                                        ; preds = %if.else15
  %24 = load i32, ptr %Order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.3, i32 noundef %24)
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.end33
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end14
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.else31, %if.else23, %if.else12, %if.else5
  call void @llvm.lifetime.end.p0(i64 1, ptr %UL) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %SD) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @zhemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!"any pointer", !5, i64 0}
