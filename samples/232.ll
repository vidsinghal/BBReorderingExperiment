; ModuleID = 'samples/232.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/sposv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SPOSV \00", align 1

; Function Attrs: nounwind uwtable
define i32 @sposv_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x16 = alloca i32, align 4
  %_y17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %b_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %8 = load i32, ptr %b_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %10, align 4, !tbaa !8
  %11 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %11, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call5 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %13, align 4, !tbaa !8
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %16, align 4, !tbaa !8
  br label %if.end28

if.else8:                                         ; preds = %if.else
  %17 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %19 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %19, align 4, !tbaa !8
  br label %if.end27

if.else11:                                        ; preds = %if.else8
  %20 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  store i32 %23, ptr %_y, align 4, !tbaa !8
  %24 = load i32, ptr %_x, align 4, !tbaa !8
  %25 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp12 = icmp sgt i32 %24, %25
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else11
  %26 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else11
  %27 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %28 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %21, %28
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.end
  %29 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %29, align 4, !tbaa !8
  br label %if.end26

if.else15:                                        ; preds = %cond.end
  %30 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x16) #3
  store i32 1, ptr %_x16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y17) #3
  %32 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  store i32 %33, ptr %_y17, align 4, !tbaa !8
  %34 = load i32, ptr %_x16, align 4, !tbaa !8
  %35 = load i32, ptr %_y17, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %34, %35
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.else15
  %36 = load i32, ptr %_x16, align 4, !tbaa !8
  br label %cond.end22

cond.false21:                                     ; preds = %if.else15
  %37 = load i32, ptr %_y17, align 4, !tbaa !8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %36, %cond.true20 ], [ %37, %cond.false21 ]
  store i32 %cond23, ptr %tmp18, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x16) #3
  %38 = load i32, ptr %tmp18, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %31, %38
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %cond.end22
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %39, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then25, %cond.end22
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then7
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %cmp30 = icmp ne i32 %41, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %sub = sub nsw i32 0, %43
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call32 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %44 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %47 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds float, ptr %46, i64 %idxprom
  %48 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call34 = call i32 @spotrf_(ptr noundef %44, ptr noundef %45, ptr noundef %arrayidx, ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %cmp35 = icmp eq i32 %51, 0
  br i1 %cmp35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %if.end33
  %52 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %56 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom37 = sext i32 %56 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %55, i64 %idxprom37
  %57 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %59 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom39 = sext i32 %59 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %58, i64 %idxprom39
  %60 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call41 = call i32 @spotrs_(ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %arrayidx38, ptr noundef %57, ptr noundef %arrayidx40, ptr noundef %60, ptr noundef %61)
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @spotrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @spotrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
