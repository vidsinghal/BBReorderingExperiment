; ModuleID = 'samples/146.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zla_lin_berr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1

; Function Attrs: nounwind uwtable
define i32 @zla_lin_berr_(ptr noundef %n, ptr noundef %nz, ptr noundef %nrhs, ptr noundef %res, ptr noundef %ayb, ptr noundef %berr) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %nz.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %ayb.addr = alloca ptr, align 8
  %berr.addr = alloca ptr, align 8
  %ayb_dim1 = alloca i32, align 4
  %ayb_offset = alloca i32, align 4
  %res_dim1 = alloca i32, align 4
  %res_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %z__3 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca double, align 8
  %safe1 = alloca double, align 8
  %_x = alloca double, align 8
  %_y = alloca double, align 8
  %tmp56 = alloca double, align 8
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nz, ptr %nz.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %res, ptr %res.addr, align 8, !tbaa !4
  store ptr %ayb, ptr %ayb.addr, align 8, !tbaa !4
  store ptr %berr, ptr %berr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ayb_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ayb_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %res_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %res_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__3) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__2) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %safe1) #3
  %0 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %berr.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !8
  store i32 %2, ptr %ayb_dim1, align 4, !tbaa !8
  %3 = load i32, ptr %ayb_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %3
  store i32 %add, ptr %ayb_offset, align 4, !tbaa !8
  %4 = load i32, ptr %ayb_offset, align 4, !tbaa !8
  %5 = load ptr, ptr %ayb.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %ayb.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %res_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %res_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %res_offset, align 4, !tbaa !8
  %9 = load i32, ptr %res_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %res.addr, align 8, !tbaa !4
  %call = call double @dlamch_(ptr noundef @.str)
  store double %call, ptr %safe1, align 8, !tbaa !10
  %11 = load ptr, ptr %nz.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %add5 = add nsw i32 %12, 1
  %conv = sitofp i32 %add5 to double
  %13 = load double, ptr %safe1, align 8, !tbaa !10
  %mul = fmul double %conv, %13
  store double %mul, ptr %safe1, align 8, !tbaa !10
  %14 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  store i32 %15, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %entry
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %17 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp = icmp sle i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end67

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds double, ptr %18, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !10
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %22 = load i32, ptr %i__, align 4, !tbaa !8
  %23 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp8 = icmp sle i32 %22, %23
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond7
  %24 = load ptr, ptr %ayb.addr, align 8, !tbaa !4
  %25 = load i32, ptr %i__, align 4, !tbaa !8
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %27 = load i32, ptr %ayb_dim1, align 4, !tbaa !8
  %mul11 = mul nsw i32 %26, %27
  %add12 = add nsw i32 %25, %mul11
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, ptr %24, i64 %idxprom13
  %28 = load double, ptr %arrayidx14, align 8, !tbaa !10
  %cmp15 = fcmp une double %28, 0.000000e+00
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %29 = load i32, ptr %i__, align 4, !tbaa !8
  %30 = load i32, ptr %j, align 4, !tbaa !8
  %31 = load i32, ptr %res_dim1, align 4, !tbaa !8
  %mul17 = mul nsw i32 %30, %31
  %add18 = add nsw i32 %29, %mul17
  store i32 %add18, ptr %i__3, align 4, !tbaa !8
  %32 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds %struct.doublecomplex, ptr %32, i64 %idxprom19
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx20, i32 0, i32 0
  %34 = load double, ptr %r, align 8, !tbaa !12
  store double %34, ptr %d__1, align 8, !tbaa !10
  %35 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp21 = fcmp oge double %35, 0.000000e+00
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %36 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %37 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %36, %cond.true ], [ %fneg, %cond.false ]
  %38 = load ptr, ptr %res.addr, align 8, !tbaa !4
  %39 = load i32, ptr %i__, align 4, !tbaa !8
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %41 = load i32, ptr %res_dim1, align 4, !tbaa !8
  %mul23 = mul nsw i32 %40, %41
  %add24 = add nsw i32 %39, %mul23
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds %struct.doublecomplex, ptr %38, i64 %idxprom25
  %call27 = call double @d_imag(ptr noundef %arrayidx26)
  store double %call27, ptr %d__2, align 8, !tbaa !10
  %42 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp28 = fcmp oge double %42, 0.000000e+00
  br i1 %cmp28, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %cond.end
  %43 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end33

cond.false31:                                     ; preds = %cond.end
  %44 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg32 = fneg double %44
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %cond.true30
  %cond34 = phi double [ %43, %cond.true30 ], [ %fneg32, %cond.false31 ]
  %add35 = fadd double %cond, %cond34
  store double %add35, ptr %d__3, align 8, !tbaa !10
  %45 = load double, ptr %d__3, align 8, !tbaa !10
  %r36 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %45, ptr %r36, align 8, !tbaa !12
  %i = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8, !tbaa !14
  %46 = load double, ptr %safe1, align 8, !tbaa !10
  %r37 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %47 = load double, ptr %r37, align 8, !tbaa !12
  %add38 = fadd double %46, %47
  %r39 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %add38, ptr %r39, align 8, !tbaa !12
  %i40 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %48 = load double, ptr %i40, align 8, !tbaa !14
  %i41 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %48, ptr %i41, align 8, !tbaa !14
  %49 = load i32, ptr %i__, align 4, !tbaa !8
  %50 = load i32, ptr %j, align 4, !tbaa !8
  %51 = load i32, ptr %ayb_dim1, align 4, !tbaa !8
  %mul42 = mul nsw i32 %50, %51
  %add43 = add nsw i32 %49, %mul42
  store i32 %add43, ptr %i__4, align 4, !tbaa !8
  %r44 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %52 = load double, ptr %r44, align 8, !tbaa !12
  %53 = load ptr, ptr %ayb.addr, align 8, !tbaa !4
  %54 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %53, i64 %idxprom45
  %55 = load double, ptr %arrayidx46, align 8, !tbaa !10
  %div = fdiv double %52, %55
  %r47 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %div, ptr %r47, align 8, !tbaa !12
  %i48 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %56 = load double, ptr %i48, align 8, !tbaa !14
  %57 = load ptr, ptr %ayb.addr, align 8, !tbaa !4
  %58 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom49 = sext i32 %58 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %57, i64 %idxprom49
  %59 = load double, ptr %arrayidx50, align 8, !tbaa !10
  %div51 = fdiv double %56, %59
  %i52 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %div51, ptr %i52, align 8, !tbaa !14
  %r53 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %60 = load double, ptr %r53, align 8, !tbaa !12
  store double %60, ptr %tmp, align 8, !tbaa !10
  %61 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %62 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom54 = sext i32 %62 to i64
  %arrayidx55 = getelementptr inbounds double, ptr %61, i64 %idxprom54
  %63 = load double, ptr %arrayidx55, align 8, !tbaa !10
  store double %63, ptr %d__1, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x) #3
  %64 = load double, ptr %d__1, align 8, !tbaa !10
  store double %64, ptr %_x, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y) #3
  %65 = load double, ptr %tmp, align 8, !tbaa !10
  store double %65, ptr %_y, align 8, !tbaa !10
  %66 = load double, ptr %_x, align 8, !tbaa !10
  %67 = load double, ptr %_y, align 8, !tbaa !10
  %cmp57 = fcmp ogt double %66, %67
  br i1 %cmp57, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %cond.end33
  %68 = load double, ptr %_x, align 8, !tbaa !10
  br label %cond.end61

cond.false60:                                     ; preds = %cond.end33
  %69 = load double, ptr %_y, align 8, !tbaa !10
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true59
  %cond62 = phi double [ %68, %cond.true59 ], [ %69, %cond.false60 ]
  store double %cond62, ptr %tmp56, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x) #3
  %70 = load double, ptr %tmp56, align 8, !tbaa !10
  %71 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %72 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom63 = sext i32 %72 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %71, i64 %idxprom63
  store double %70, ptr %arrayidx64, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end61, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %73 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond7, !llvm.loop !15

for.end:                                          ; preds = %for.cond7
  br label %for.inc65

for.inc65:                                        ; preds = %for.end
  %74 = load i32, ptr %j, align 4, !tbaa !8
  %inc66 = add nsw i32 %74, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !17

for.end67:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %safe1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__3) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__2) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %res_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %res_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ayb_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ayb_dim1) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @dlamch_(ptr noundef) #2

declare double @d_imag(ptr noundef) #2

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
