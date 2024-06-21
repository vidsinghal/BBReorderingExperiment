; ModuleID = 'samples/290.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/sppsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SPPSV \00", align 1

; Function Attrs: nounwind uwtable
define i32 @sppsv_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %ap, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  %0 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %ap.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !8
  store i32 %2, ptr %b_dim1, align 4, !tbaa !8
  %3 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %3
  store i32 %add, ptr %b_offset, align 4, !tbaa !8
  %4 = load i32, ptr %b_offset, align 4, !tbaa !8
  %5 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %6, align 4, !tbaa !8
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %9, align 4, !tbaa !8
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %12, align 4, !tbaa !8
  br label %if.end12

if.else4:                                         ; preds = %if.else
  %13 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %15, align 4, !tbaa !8
  br label %if.end11

if.else7:                                         ; preds = %if.else4
  %16 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  store i32 %19, ptr %_y, align 4, !tbaa !8
  %20 = load i32, ptr %_x, align 4, !tbaa !8
  %21 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp8 = icmp sgt i32 %20, %21
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else7
  %22 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else7
  %23 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %24 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %17, %24
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %cond.end
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %25, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then10, %cond.end
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then3
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %27, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %sub = sub nsw i32 0, %29
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call16 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %30 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float, ptr %32, i64 1
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call18 = call i32 @spptrf_(ptr noundef %30, ptr noundef %31, ptr noundef %arrayidx, ptr noundef %33)
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp19 = icmp eq i32 %35, 0
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end17
  %36 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %37 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %38 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds float, ptr %39, i64 1
  %40 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %41 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom = sext i32 %41 to i64
  %arrayidx22 = getelementptr inbounds float, ptr %40, i64 %idxprom
  %42 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call23 = call i32 @spptrs_(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %arrayidx21, ptr noundef %arrayidx22, ptr noundef %42, ptr noundef %43)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @spptrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @spptrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
