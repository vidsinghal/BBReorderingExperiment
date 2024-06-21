; ModuleID = 'samples/938.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slaqsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: nounwind uwtable
define i32 @slaqsb_(ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %ab, ptr noundef %ldab, ptr noundef %s, ptr noundef %scond, ptr noundef %amax, ptr noundef %equed) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %scond.addr = alloca ptr, align 8
  %amax.addr = alloca ptr, align 8
  %equed.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %cj = alloca float, align 4
  %large = alloca float, align 4
  %small_val = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x42 = alloca i32, align 4
  %_y43 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %kd, ptr %kd.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  store ptr %scond, ptr %scond.addr, align 8, !tbaa !4
  store ptr %amax, ptr %amax.addr, align 8, !tbaa !4
  store ptr %equed, ptr %equed.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %cj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %large) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %small_val) #3
  %0 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %ab_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4, !tbaa !8
  %3 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %equed.addr, align 8, !tbaa !4
  store i8 78, ptr %8, align 1, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call float @slamch_(ptr noundef @.str)
  %call1 = call float @slamch_(ptr noundef @.str.1)
  %div = fdiv float %call, %call1
  store float %div, ptr %small_val, align 4, !tbaa !11
  %9 = load float, ptr %small_val, align 4, !tbaa !11
  %div2 = fdiv float 1.000000e+00, %9
  store float %div2, ptr %large, align 4, !tbaa !11
  %10 = load ptr, ptr %scond.addr, align 8, !tbaa !4
  %11 = load float, ptr %10, align 4, !tbaa !11
  %cmp3 = fcmp oge float %11, 0x3FB99999A0000000
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %amax.addr, align 8, !tbaa !4
  %13 = load float, ptr %12, align 4, !tbaa !11
  %14 = load float, ptr %small_val, align 4, !tbaa !11
  %cmp4 = fcmp oge float %13, %14
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %amax.addr, align 8, !tbaa !4
  %16 = load float, ptr %15, align 4, !tbaa !11
  %17 = load float, ptr %large, align 4, !tbaa !11
  %cmp6 = fcmp ole float %16, %17
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %18 = load ptr, ptr %equed.addr, align 8, !tbaa !4
  store i8 78, ptr %18, align 1, !tbaa !10
  br label %if.end76

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %19 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call8 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str.2)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then9, label %if.else35

if.then9:                                         ; preds = %if.else
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %if.then9
  %22 = load i32, ptr %j, align 4, !tbaa !8
  %23 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp10 = icmp sle i32 %22, %23
  br i1 %cmp10, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %25 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds float, ptr %24, i64 %idxprom
  %26 = load float, ptr %arrayidx, align 4, !tbaa !11
  store float %26, ptr %cj, align 4, !tbaa !11
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %27 = load i32, ptr %j, align 4, !tbaa !8
  %28 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %sub = sub nsw i32 %27, %29
  store i32 %sub, ptr %i__3, align 4, !tbaa !8
  %30 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %30, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %31 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %31, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %32 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %32, ptr %_y, align 4, !tbaa !8
  %33 = load i32, ptr %_x, align 4, !tbaa !8
  %34 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp11 = icmp sgt i32 %33, %34
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %35 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %37 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %37, ptr %i__, align 4, !tbaa !8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %cond.end
  %38 = load i32, ptr %i__, align 4, !tbaa !8
  %39 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp13 = icmp sle i32 %38, %39
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %40 = load float, ptr %cj, align 4, !tbaa !11
  %41 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom15 = sext i32 %42 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %41, i64 %idxprom15
  %43 = load float, ptr %arrayidx16, align 4, !tbaa !11
  %mul = fmul float %40, %43
  %44 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  %add17 = add nsw i32 %46, 1
  %47 = load i32, ptr %i__, align 4, !tbaa !8
  %add18 = add nsw i32 %add17, %47
  %48 = load i32, ptr %j, align 4, !tbaa !8
  %sub19 = sub nsw i32 %add18, %48
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %50 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul20 = mul nsw i32 %49, %50
  %add21 = add nsw i32 %sub19, %mul20
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %44, i64 %idxprom22
  %51 = load float, ptr %arrayidx23, align 4, !tbaa !11
  %mul24 = fmul float %mul, %51
  %52 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %add25 = add nsw i32 %54, 1
  %55 = load i32, ptr %i__, align 4, !tbaa !8
  %add26 = add nsw i32 %add25, %55
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %sub27 = sub nsw i32 %add26, %56
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %58 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul28 = mul nsw i32 %57, %58
  %add29 = add nsw i32 %sub27, %mul28
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, ptr %52, i64 %idxprom30
  store float %mul24, ptr %arrayidx31, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %59 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %59, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond12, !llvm.loop !13

for.end:                                          ; preds = %for.cond12
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %inc33 = add nsw i32 %60, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end34:                                        ; preds = %for.cond
  br label %if.end75

if.else35:                                        ; preds = %if.else
  %61 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  store i32 %62, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc72, %if.else35
  %63 = load i32, ptr %j, align 4, !tbaa !8
  %64 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp37 = icmp sle i32 %63, %64
  br i1 %cmp37, label %for.body38, label %for.end74

for.body38:                                       ; preds = %for.cond36
  %65 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom39 = sext i32 %66 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %65, i64 %idxprom39
  %67 = load float, ptr %arrayidx40, align 4, !tbaa !11
  store float %67, ptr %cj, align 4, !tbaa !11
  %68 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  store i32 %69, ptr %i__2, align 4, !tbaa !8
  %70 = load i32, ptr %j, align 4, !tbaa !8
  %71 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %add41 = add nsw i32 %70, %72
  store i32 %add41, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x42) #3
  %73 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %73, ptr %_x42, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y43) #3
  %74 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %74, ptr %_y43, align 4, !tbaa !8
  %75 = load i32, ptr %_x42, align 4, !tbaa !8
  %76 = load i32, ptr %_y43, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %75, %76
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %for.body38
  %77 = load i32, ptr %_x42, align 4, !tbaa !8
  br label %cond.end48

cond.false47:                                     ; preds = %for.body38
  %78 = load i32, ptr %_y43, align 4, !tbaa !8
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i32 [ %77, %cond.true46 ], [ %78, %cond.false47 ]
  store i32 %cond49, ptr %tmp44, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y43) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x42) #3
  %79 = load i32, ptr %tmp44, align 4, !tbaa !8
  store i32 %79, ptr %i__4, align 4, !tbaa !8
  %80 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %80, ptr %i__, align 4, !tbaa !8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc69, %cond.end48
  %81 = load i32, ptr %i__, align 4, !tbaa !8
  %82 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp51 = icmp sle i32 %81, %82
  br i1 %cmp51, label %for.body52, label %for.end71

for.body52:                                       ; preds = %for.cond50
  %83 = load float, ptr %cj, align 4, !tbaa !11
  %84 = load ptr, ptr %s.addr, align 8, !tbaa !4
  %85 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom53 = sext i32 %85 to i64
  %arrayidx54 = getelementptr inbounds float, ptr %84, i64 %idxprom53
  %86 = load float, ptr %arrayidx54, align 4, !tbaa !11
  %mul55 = fmul float %83, %86
  %87 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %88 = load i32, ptr %i__, align 4, !tbaa !8
  %add56 = add nsw i32 %88, 1
  %89 = load i32, ptr %j, align 4, !tbaa !8
  %sub57 = sub nsw i32 %add56, %89
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %91 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul58 = mul nsw i32 %90, %91
  %add59 = add nsw i32 %sub57, %mul58
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %87, i64 %idxprom60
  %92 = load float, ptr %arrayidx61, align 4, !tbaa !11
  %mul62 = fmul float %mul55, %92
  %93 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %94 = load i32, ptr %i__, align 4, !tbaa !8
  %add63 = add nsw i32 %94, 1
  %95 = load i32, ptr %j, align 4, !tbaa !8
  %sub64 = sub nsw i32 %add63, %95
  %96 = load i32, ptr %j, align 4, !tbaa !8
  %97 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul65 = mul nsw i32 %96, %97
  %add66 = add nsw i32 %sub64, %mul65
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %93, i64 %idxprom67
  store float %mul62, ptr %arrayidx68, align 4, !tbaa !11
  br label %for.inc69

for.inc69:                                        ; preds = %for.body52
  %98 = load i32, ptr %i__, align 4, !tbaa !8
  %inc70 = add nsw i32 %98, 1
  store i32 %inc70, ptr %i__, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !16

for.end71:                                        ; preds = %for.cond50
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %99 = load i32, ptr %j, align 4, !tbaa !8
  %inc73 = add nsw i32 %99, 1
  store i32 %inc73, ptr %j, align 4, !tbaa !8
  br label %for.cond36, !llvm.loop !17

for.end74:                                        ; preds = %for.cond36
  br label %if.end75

if.end75:                                         ; preds = %for.end74, %for.end34
  %100 = load ptr, ptr %equed.addr, align 8, !tbaa !4
  store i8 89, ptr %100, align 1, !tbaa !10
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then7
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %small_val) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %large) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %cj) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #3
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare float @slamch_(ptr noundef) #2

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
