; ModuleID = 'samples/305.bc'
source_filename = "frame/compat/cblas/src/cblas_csyrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RowMajorStrg = external global i32, align 4
@CBLAS_CallFromC = external global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cblas_csyrk\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal Uplo setting, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Illegal Trans setting, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Illegal Order setting, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @cblas_csyrk(i32 noundef %Order, i32 noundef %Uplo, i32 noundef %Trans, i32 noundef %N, i32 noundef %K, ptr noundef %alpha, ptr noundef %A, i32 noundef %lda, ptr noundef %beta, ptr noundef %C, i32 noundef %ldc) #0 {
entry:
  %Order.addr = alloca i32, align 4
  %Uplo.addr = alloca i32, align 4
  %Trans.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %K.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %lda.addr = alloca i32, align 4
  %beta.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %ldc.addr = alloca i32, align 4
  %UL = alloca i8, align 1
  %TR = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %Order, ptr %Order.addr, align 4, !tbaa !4
  store i32 %Uplo, ptr %Uplo.addr, align 4, !tbaa !4
  store i32 %Trans, ptr %Trans.addr, align 4, !tbaa !4
  store i32 %N, ptr %N.addr, align 4, !tbaa !7
  store i32 %K, ptr %K.addr, align 4, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %A, ptr %A.addr, align 8, !tbaa !9
  store i32 %lda, ptr %lda.addr, align 4, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %C, ptr %C.addr, align 8, !tbaa !9
  store i32 %ldc, ptr %ldc.addr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1, ptr %UL) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %TR) #3
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  %0 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 102
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp1 = icmp eq i32 %1, 121
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end6

if.else:                                          ; preds = %if.then
  %2 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp3 = icmp eq i32 %2, 122
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i8 76, ptr %UL, align 1, !tbaa !4
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
  %4 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp7 = icmp eq i32 %4, 112
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end6
  store i8 84, ptr %TR, align 1, !tbaa !4
  br label %if.end18

if.else9:                                         ; preds = %if.end6
  %5 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp10 = icmp eq i32 %5, 113
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  store i8 67, ptr %TR, align 1, !tbaa !4
  br label %if.end17

if.else12:                                        ; preds = %if.else9
  %6 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp13 = icmp eq i32 %6, 111
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else12
  store i8 78, ptr %TR, align 1, !tbaa !4
  br label %if.end16

if.else15:                                        ; preds = %if.else12
  %7 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %7)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  %8 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %10 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %C.addr, align 8, !tbaa !9
  call void @csyrk_(ptr noundef %UL, ptr noundef %TR, ptr noundef %N.addr, ptr noundef %K.addr, ptr noundef %8, ptr noundef %9, ptr noundef %lda.addr, ptr noundef %10, ptr noundef %11, ptr noundef %ldc.addr)
  br label %if.end44

if.else19:                                        ; preds = %entry
  %12 = load i32, ptr %Order.addr, align 4, !tbaa !4
  %cmp20 = icmp eq i32 %12, 101
  br i1 %cmp20, label %if.then21, label %if.else42

if.then21:                                        ; preds = %if.else19
  store i32 1, ptr @RowMajorStrg, align 4, !tbaa !7
  %13 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp22 = icmp eq i32 %13, 121
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then21
  store i8 76, ptr %UL, align 1, !tbaa !4
  br label %if.end29

if.else24:                                        ; preds = %if.then21
  %14 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  %cmp25 = icmp eq i32 %14, 122
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else24
  store i8 85, ptr %UL, align 1, !tbaa !4
  br label %if.end28

if.else27:                                        ; preds = %if.else24
  %15 = load i32, ptr %Uplo.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.1, i32 noundef %15)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.then26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then23
  %16 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp30 = icmp eq i32 %16, 112
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end29
  store i8 78, ptr %TR, align 1, !tbaa !4
  br label %if.end41

if.else32:                                        ; preds = %if.end29
  %17 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp33 = icmp eq i32 %17, 113
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else32
  store i8 78, ptr %TR, align 1, !tbaa !4
  br label %if.end40

if.else35:                                        ; preds = %if.else32
  %18 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  %cmp36 = icmp eq i32 %18, 111
  br i1 %cmp36, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.else35
  store i8 84, ptr %TR, align 1, !tbaa !4
  br label %if.end39

if.else38:                                        ; preds = %if.else35
  %19 = load i32, ptr %Trans.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 3, ptr noundef @.str, ptr noundef @.str.2, i32 noundef %19)
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.then37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then31
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %A.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %23 = load ptr, ptr %C.addr, align 8, !tbaa !9
  call void @csyrk_(ptr noundef %UL, ptr noundef %TR, ptr noundef %N.addr, ptr noundef %K.addr, ptr noundef %20, ptr noundef %21, ptr noundef %lda.addr, ptr noundef %22, ptr noundef %23, ptr noundef %ldc.addr)
  br label %if.end43

if.else42:                                        ; preds = %if.else19
  %24 = load i32, ptr %Order.addr, align 4, !tbaa !4
  call void (i32, ptr, ptr, ...) @cblas_xerbla(i32 noundef 1, ptr noundef @.str, ptr noundef @.str.3, i32 noundef %24)
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.end41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end18
  store i32 0, ptr @CBLAS_CallFromC, align 4, !tbaa !7
  store i32 0, ptr @RowMajorStrg, align 4, !tbaa !7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.else38, %if.else27, %if.else15, %if.else5
  call void @llvm.lifetime.end.p0(i64 1, ptr %TR) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %UL) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @cblas_xerbla(i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @csyrk_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
