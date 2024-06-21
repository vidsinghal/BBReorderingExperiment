; ModuleID = 'samples/340.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dptcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DPTCON\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @dptcon_(ptr noundef %n, ptr noundef %d__, ptr noundef %e, ptr noundef %anorm, ptr noundef %rcond, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %anorm.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %ix = alloca i32, align 4
  %ainvnm = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %anorm, ptr %anorm.addr, align 8, !tbaa !4
  store ptr %rcond, ptr %rcond.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ainvnm) #4
  %0 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %d__.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !8
  %4 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %6, align 4, !tbaa !8
  br label %if.end5

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %8 = load double, ptr %7, align 8, !tbaa !10
  %cmp3 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %9, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  %cmp6 = icmp ne i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %sub = sub nsw i32 0, %13
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %14 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %14, align 8, !tbaa !10
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end8
  %17 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store double 1.000000e+00, ptr %17, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else11:                                        ; preds = %if.end8
  %18 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %19 = load double, ptr %18, align 8, !tbaa !10
  %cmp12 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else11
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.else11
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end15
  %22 = load i32, ptr %i__, align 4, !tbaa !8
  %23 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp16 = icmp sle i32 %22, %23
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %25 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds double, ptr %24, i64 %idxprom
  %26 = load double, ptr %arrayidx, align 8, !tbaa !10
  %cmp17 = fcmp ole double %26, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %27 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds double, ptr %28, i64 1
  store double 1.000000e+00, ptr %arrayidx20, align 8, !tbaa !10
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %i__, align 4, !tbaa !8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc33, %for.end
  %31 = load i32, ptr %i__, align 4, !tbaa !8
  %32 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp22 = icmp sle i32 %31, %32
  br i1 %cmp22, label %for.body23, label %for.end35

for.body23:                                       ; preds = %for.cond21
  %33 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %34 = load i32, ptr %i__, align 4, !tbaa !8
  %sub24 = sub nsw i32 %34, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds double, ptr %33, i64 %idxprom25
  %35 = load double, ptr %arrayidx26, align 8, !tbaa !10
  %36 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %37 = load i32, ptr %i__, align 4, !tbaa !8
  %sub27 = sub nsw i32 %37, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %36, i64 %idxprom28
  %38 = load double, ptr %arrayidx29, align 8, !tbaa !10
  store double %38, ptr %d__1, align 8, !tbaa !10
  %39 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp30 = fcmp oge double %39, 0.000000e+00
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body23
  %40 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %for.body23
  %41 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %40, %cond.true ], [ %fneg, %cond.false ]
  %42 = call double @llvm.fmuladd.f64(double %35, double %cond, double 1.000000e+00)
  %43 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %44 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom31 = sext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %43, i64 %idxprom31
  store double %42, ptr %arrayidx32, align 8, !tbaa !10
  br label %for.inc33

for.inc33:                                        ; preds = %cond.end
  %45 = load i32, ptr %i__, align 4, !tbaa !8
  %inc34 = add nsw i32 %45, 1
  store i32 %inc34, ptr %i__, align 4, !tbaa !8
  br label %for.cond21, !llvm.loop !14

for.end35:                                        ; preds = %for.cond21
  %46 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %idxprom36 = sext i32 %48 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %46, i64 %idxprom36
  %49 = load double, ptr %arrayidx37, align 8, !tbaa !10
  %50 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %idxprom38 = sext i32 %52 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %50, i64 %idxprom38
  %53 = load double, ptr %arrayidx39, align 8, !tbaa !10
  %div = fdiv double %53, %49
  store double %div, ptr %arrayidx39, align 8, !tbaa !10
  %54 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %sub40 = sub nsw i32 %55, 1
  store i32 %sub40, ptr %i__, align 4, !tbaa !8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc61, %for.end35
  %56 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp42 = icmp sge i32 %56, 1
  br i1 %cmp42, label %for.body43, label %for.end62

for.body43:                                       ; preds = %for.cond41
  %57 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %58 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %57, i64 %idxprom44
  %59 = load double, ptr %arrayidx45, align 8, !tbaa !10
  %60 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %61 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %60, i64 %idxprom46
  %62 = load double, ptr %arrayidx47, align 8, !tbaa !10
  %div48 = fdiv double %59, %62
  %63 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %64 = load i32, ptr %i__, align 4, !tbaa !8
  %add = add nsw i32 %64, 1
  %idxprom49 = sext i32 %add to i64
  %arrayidx50 = getelementptr inbounds double, ptr %63, i64 %idxprom49
  %65 = load double, ptr %arrayidx50, align 8, !tbaa !10
  %66 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %67 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom51 = sext i32 %67 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %66, i64 %idxprom51
  %68 = load double, ptr %arrayidx52, align 8, !tbaa !10
  store double %68, ptr %d__1, align 8, !tbaa !10
  %69 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp53 = fcmp oge double %69, 0.000000e+00
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %for.body43
  %70 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end57

cond.false55:                                     ; preds = %for.body43
  %71 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg56 = fneg double %71
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false55, %cond.true54
  %cond58 = phi double [ %70, %cond.true54 ], [ %fneg56, %cond.false55 ]
  %72 = call double @llvm.fmuladd.f64(double %65, double %cond58, double %div48)
  %73 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %74 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom59 = sext i32 %74 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %73, i64 %idxprom59
  store double %72, ptr %arrayidx60, align 8, !tbaa !10
  br label %for.inc61

for.inc61:                                        ; preds = %cond.end57
  %75 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !15

for.end62:                                        ; preds = %for.cond41
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx63 = getelementptr inbounds double, ptr %77, i64 1
  %call64 = call i32 @idamax_(ptr noundef %76, ptr noundef %arrayidx63, ptr noundef @c__1)
  store i32 %call64, ptr %ix, align 4, !tbaa !8
  %78 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %79 = load i32, ptr %ix, align 4, !tbaa !8
  %idxprom65 = sext i32 %79 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %78, i64 %idxprom65
  %80 = load double, ptr %arrayidx66, align 8, !tbaa !10
  store double %80, ptr %d__1, align 8, !tbaa !10
  %81 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp67 = fcmp oge double %81, 0.000000e+00
  br i1 %cmp67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %for.end62
  %82 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end71

cond.false69:                                     ; preds = %for.end62
  %83 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg70 = fneg double %83
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true68
  %cond72 = phi double [ %82, %cond.true68 ], [ %fneg70, %cond.false69 ]
  store double %cond72, ptr %ainvnm, align 8, !tbaa !10
  %84 = load double, ptr %ainvnm, align 8, !tbaa !10
  %cmp73 = fcmp une double %84, 0.000000e+00
  br i1 %cmp73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %cond.end71
  %85 = load double, ptr %ainvnm, align 8, !tbaa !10
  %div75 = fdiv double 1.000000e+00, %85
  %86 = load ptr, ptr %anorm.addr, align 8, !tbaa !4
  %87 = load double, ptr %86, align 8, !tbaa !10
  %div76 = fdiv double %div75, %87
  %88 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store double %div76, ptr %88, align 8, !tbaa !10
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %cond.end71
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then18, %if.then13, %if.then10, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ainvnm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
