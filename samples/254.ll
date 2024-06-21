; ModuleID = 'samples/254.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ctrttp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CTRTTP\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ctrttp_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ap, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lower = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #3
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ap.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %6, align 4, !tbaa !8
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  store i32 %call, ptr %lower, align 4, !tbaa !8
  %8 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %10, align 4, !tbaa !8
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %13, align 4, !tbaa !8
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %14 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  store i32 %17, ptr %_y, align 4, !tbaa !8
  %18 = load i32, ptr %_x, align 4, !tbaa !8
  %19 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp5 = icmp sgt i32 %18, %19
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else4
  %20 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else4
  %21 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %22 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %22
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %23, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %sub = sub nsw i32 0, %27
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call12 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %28 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool14 = icmp ne i32 %28, 0
  br i1 %tobool14, label %if.then15, label %if.else33

if.then15:                                        ; preds = %if.end13
  store i32 0, ptr %k, align 4, !tbaa !8
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %if.then15
  %31 = load i32, ptr %j, align 4, !tbaa !8
  %32 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp16 = icmp sle i32 %31, %32
  br i1 %cmp16, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  store i32 %34, ptr %i__2, align 4, !tbaa !8
  %35 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %35, ptr %i__, align 4, !tbaa !8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %36 = load i32, ptr %i__, align 4, !tbaa !8
  %37 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp18 = icmp sle i32 %36, %37
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond17
  %38 = load i32, ptr %k, align 4, !tbaa !8
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %k, align 4, !tbaa !8
  %39 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %39, ptr %i__3, align 4, !tbaa !8
  %40 = load i32, ptr %i__, align 4, !tbaa !8
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %42 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %41, %42
  %add20 = add nsw i32 %40, %mul
  store i32 %add20, ptr %i__4, align 4, !tbaa !8
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %44 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom = sext i32 %44 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %43, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %45 = load float, ptr %r, align 4, !tbaa !10
  %46 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %47 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom21 = sext i32 %47 to i64
  %arrayidx22 = getelementptr inbounds %struct.complex, ptr %46, i64 %idxprom21
  %r23 = getelementptr inbounds %struct.complex, ptr %arrayidx22, i32 0, i32 0
  store float %45, ptr %r23, align 4, !tbaa !10
  %48 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %49 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom24 = sext i32 %49 to i64
  %arrayidx25 = getelementptr inbounds %struct.complex, ptr %48, i64 %idxprom24
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx25, i32 0, i32 1
  %50 = load float, ptr %i, align 4, !tbaa !13
  %51 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %52 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom26 = sext i32 %52 to i64
  %arrayidx27 = getelementptr inbounds %struct.complex, ptr %51, i64 %idxprom26
  %i28 = getelementptr inbounds %struct.complex, ptr %arrayidx27, i32 0, i32 1
  store float %50, ptr %i28, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %53 = load i32, ptr %i__, align 4, !tbaa !8
  %inc29 = add nsw i32 %53, 1
  store i32 %inc29, ptr %i__, align 4, !tbaa !8
  br label %for.cond17, !llvm.loop !14

for.end:                                          ; preds = %for.cond17
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %54 = load i32, ptr %j, align 4, !tbaa !8
  %inc31 = add nsw i32 %54, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end32:                                        ; preds = %for.cond
  br label %if.end61

if.else33:                                        ; preds = %if.end13
  store i32 0, ptr %k, align 4, !tbaa !8
  %55 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  store i32 %56, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc58, %if.else33
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %58 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp35 = icmp sle i32 %57, %58
  br i1 %cmp35, label %for.body36, label %for.end60

for.body36:                                       ; preds = %for.cond34
  %59 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %59, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc55, %for.body36
  %60 = load i32, ptr %i__, align 4, !tbaa !8
  %61 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp38 = icmp sle i32 %60, %61
  br i1 %cmp38, label %for.body39, label %for.end57

for.body39:                                       ; preds = %for.cond37
  %62 = load i32, ptr %k, align 4, !tbaa !8
  %inc40 = add nsw i32 %62, 1
  store i32 %inc40, ptr %k, align 4, !tbaa !8
  %63 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %63, ptr %i__3, align 4, !tbaa !8
  %64 = load i32, ptr %i__, align 4, !tbaa !8
  %65 = load i32, ptr %j, align 4, !tbaa !8
  %66 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul41 = mul nsw i32 %65, %66
  %add42 = add nsw i32 %64, %mul41
  store i32 %add42, ptr %i__4, align 4, !tbaa !8
  %67 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %68 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom43 = sext i32 %68 to i64
  %arrayidx44 = getelementptr inbounds %struct.complex, ptr %67, i64 %idxprom43
  %r45 = getelementptr inbounds %struct.complex, ptr %arrayidx44, i32 0, i32 0
  %69 = load float, ptr %r45, align 4, !tbaa !10
  %70 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %71 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom46 = sext i32 %71 to i64
  %arrayidx47 = getelementptr inbounds %struct.complex, ptr %70, i64 %idxprom46
  %r48 = getelementptr inbounds %struct.complex, ptr %arrayidx47, i32 0, i32 0
  store float %69, ptr %r48, align 4, !tbaa !10
  %72 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %73 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom49 = sext i32 %73 to i64
  %arrayidx50 = getelementptr inbounds %struct.complex, ptr %72, i64 %idxprom49
  %i51 = getelementptr inbounds %struct.complex, ptr %arrayidx50, i32 0, i32 1
  %74 = load float, ptr %i51, align 4, !tbaa !13
  %75 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %76 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom52 = sext i32 %76 to i64
  %arrayidx53 = getelementptr inbounds %struct.complex, ptr %75, i64 %idxprom52
  %i54 = getelementptr inbounds %struct.complex, ptr %arrayidx53, i32 0, i32 1
  store float %74, ptr %i54, align 4, !tbaa !13
  br label %for.inc55

for.inc55:                                        ; preds = %for.body39
  %77 = load i32, ptr %i__, align 4, !tbaa !8
  %inc56 = add nsw i32 %77, 1
  store i32 %inc56, ptr %i__, align 4, !tbaa !8
  br label %for.cond37, !llvm.loop !17

for.end57:                                        ; preds = %for.cond37
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %inc59 = add nsw i32 %78, 1
  store i32 %inc59, ptr %j, align 4, !tbaa !8
  br label %for.cond34, !llvm.loop !18

for.end60:                                        ; preds = %for.cond34
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
