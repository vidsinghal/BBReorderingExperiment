; ModuleID = 'samples/358.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/libproj4/vtklibproj4/src/pj_mlfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_enfn(double noundef %es) #0 {
entry:
  %es.addr = alloca double, align 8
  %t = alloca double, align 8
  %en = alloca ptr, align 8
  store double %es, ptr %es.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %en) #5
  %call = call ptr @vtk_pj_malloc(i64 noundef 40)
  store ptr %call, ptr %en, align 8, !tbaa !8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load double, ptr %es.addr, align 8, !tbaa !4
  %1 = load double, ptr %es.addr, align 8, !tbaa !4
  %2 = load double, ptr %es.addr, align 8, !tbaa !4
  %3 = load double, ptr %es.addr, align 8, !tbaa !4
  %4 = call double @llvm.fmuladd.f64(double %3, double 0x3F85E00000000000, double 0x3F94000000000000)
  %5 = call double @llvm.fmuladd.f64(double %2, double %4, double 4.687500e-02)
  %6 = call double @llvm.fmuladd.f64(double %1, double %5, double 2.500000e-01)
  %neg = fneg double %0
  %7 = call double @llvm.fmuladd.f64(double %neg, double %6, double 1.000000e+00)
  %8 = load ptr, ptr %en, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %8, i64 0
  store double %7, ptr %arrayidx, align 8, !tbaa !4
  %9 = load double, ptr %es.addr, align 8, !tbaa !4
  %10 = load double, ptr %es.addr, align 8, !tbaa !4
  %11 = load double, ptr %es.addr, align 8, !tbaa !4
  %12 = load double, ptr %es.addr, align 8, !tbaa !4
  %13 = call double @llvm.fmuladd.f64(double %12, double 0x3F85E00000000000, double 0x3F94000000000000)
  %14 = call double @llvm.fmuladd.f64(double %11, double %13, double 4.687500e-02)
  %neg1 = fneg double %10
  %15 = call double @llvm.fmuladd.f64(double %neg1, double %14, double 7.500000e-01)
  %mul = fmul double %9, %15
  %16 = load ptr, ptr %en, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds double, ptr %16, i64 1
  store double %mul, ptr %arrayidx2, align 8, !tbaa !4
  %17 = load double, ptr %es.addr, align 8, !tbaa !4
  %18 = load double, ptr %es.addr, align 8, !tbaa !4
  %mul3 = fmul double %17, %18
  store double %mul3, ptr %t, align 8, !tbaa !4
  %19 = load double, ptr %es.addr, align 8, !tbaa !4
  %20 = load double, ptr %es.addr, align 8, !tbaa !4
  %21 = call double @llvm.fmuladd.f64(double %20, double 0x3F7D2AAAAAAAAAAB, double 0x3F8AAAAAAAAAAAAB)
  %neg6 = fneg double %19
  %22 = call double @llvm.fmuladd.f64(double %neg6, double %21, double 4.687500e-01)
  %mul7 = fmul double %mul3, %22
  %23 = load ptr, ptr %en, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, ptr %23, i64 2
  store double %mul7, ptr %arrayidx8, align 8, !tbaa !4
  %24 = load double, ptr %es.addr, align 8, !tbaa !4
  %25 = load double, ptr %t, align 8, !tbaa !4
  %mul9 = fmul double %25, %24
  store double %mul9, ptr %t, align 8, !tbaa !4
  %26 = load double, ptr %es.addr, align 8, !tbaa !4
  %neg11 = fneg double %26
  %27 = call double @llvm.fmuladd.f64(double %neg11, double 0x3F77555555555555, double 0x3FD7555555555555)
  %mul12 = fmul double %mul9, %27
  %28 = load ptr, ptr %en, align 8, !tbaa !8
  %arrayidx13 = getelementptr inbounds double, ptr %28, i64 3
  store double %mul12, ptr %arrayidx13, align 8, !tbaa !4
  %29 = load double, ptr %t, align 8, !tbaa !4
  %30 = load double, ptr %es.addr, align 8, !tbaa !4
  %mul14 = fmul double %29, %30
  %mul15 = fmul double %mul14, 0x3FD3B00000000000
  %31 = load ptr, ptr %en, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds double, ptr %31, i64 4
  store double %mul15, ptr %arrayidx16, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load ptr, ptr %en, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %en) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  ret ptr %32
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @vtk_pj_malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define double @vtk_pj_mlfn(double noundef %phi, double noundef %sphi, double noundef %cphi, ptr noundef %en) #0 {
entry:
  %phi.addr = alloca double, align 8
  %sphi.addr = alloca double, align 8
  %cphi.addr = alloca double, align 8
  %en.addr = alloca ptr, align 8
  store double %phi, ptr %phi.addr, align 8, !tbaa !4
  store double %sphi, ptr %sphi.addr, align 8, !tbaa !4
  store double %cphi, ptr %cphi.addr, align 8, !tbaa !4
  store ptr %en, ptr %en.addr, align 8, !tbaa !8
  %0 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %1 = load double, ptr %cphi.addr, align 8, !tbaa !4
  %mul = fmul double %1, %0
  store double %mul, ptr %cphi.addr, align 8, !tbaa !4
  %2 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %3 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %mul1 = fmul double %3, %2
  store double %mul1, ptr %sphi.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %4, i64 0
  %5 = load double, ptr %arrayidx, align 8, !tbaa !4
  %6 = load double, ptr %phi.addr, align 8, !tbaa !4
  %7 = load double, ptr %cphi.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds double, ptr %8, i64 1
  %9 = load double, ptr %arrayidx3, align 8, !tbaa !4
  %10 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds double, ptr %11, i64 2
  %12 = load double, ptr %arrayidx4, align 8, !tbaa !4
  %13 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds double, ptr %14, i64 3
  %15 = load double, ptr %arrayidx5, align 8, !tbaa !4
  %16 = load double, ptr %sphi.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %arrayidx6 = getelementptr inbounds double, ptr %17, i64 4
  %18 = load double, ptr %arrayidx6, align 8, !tbaa !4
  %19 = call double @llvm.fmuladd.f64(double %16, double %18, double %15)
  %20 = call double @llvm.fmuladd.f64(double %13, double %19, double %12)
  %21 = call double @llvm.fmuladd.f64(double %10, double %20, double %9)
  %mul10 = fmul double %7, %21
  %neg = fneg double %mul10
  %22 = call double @llvm.fmuladd.f64(double %5, double %6, double %neg)
  ret double %22
}

; Function Attrs: nounwind uwtable
define double @vtk_pj_inv_mlfn(ptr noundef %ctx, double noundef %arg, double noundef %es, ptr noundef %en) #0 {
entry:
  %retval = alloca double, align 8
  %ctx.addr = alloca ptr, align 8
  %arg.addr = alloca double, align 8
  %es.addr = alloca double, align 8
  %en.addr = alloca ptr, align 8
  %s = alloca double, align 8
  %t = alloca double, align 8
  %phi = alloca double, align 8
  %k = alloca double, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !8
  store double %arg, ptr %arg.addr, align 8, !tbaa !4
  store double %es, ptr %es.addr, align 8, !tbaa !4
  store ptr %en, ptr %en.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %phi) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #5
  %0 = load double, ptr %es.addr, align 8, !tbaa !4
  %sub = fsub double 1.000000e+00, %0
  %div = fdiv double 1.000000e+00, %sub
  store double %div, ptr %k, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %1 = load double, ptr %arg.addr, align 8, !tbaa !4
  store double %1, ptr %phi, align 8, !tbaa !4
  store i32 10, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !10
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, ptr %phi, align 8, !tbaa !4
  %call = call double @sin(double noundef %3) #5
  store double %call, ptr %s, align 8, !tbaa !4
  %4 = load double, ptr %es.addr, align 8, !tbaa !4
  %5 = load double, ptr %s, align 8, !tbaa !4
  %mul = fmul double %4, %5
  %6 = load double, ptr %s, align 8, !tbaa !4
  %neg = fneg double %mul
  %7 = call double @llvm.fmuladd.f64(double %neg, double %6, double 1.000000e+00)
  store double %7, ptr %t, align 8, !tbaa !4
  %8 = load double, ptr %phi, align 8, !tbaa !4
  %9 = load double, ptr %s, align 8, !tbaa !4
  %10 = load double, ptr %phi, align 8, !tbaa !4
  %call2 = call double @cos(double noundef %10) #5
  %11 = load ptr, ptr %en.addr, align 8, !tbaa !8
  %call3 = call double @vtk_pj_mlfn(double noundef %8, double noundef %9, double noundef %call2, ptr noundef %11)
  %12 = load double, ptr %arg.addr, align 8, !tbaa !4
  %sub4 = fsub double %call3, %12
  %13 = load double, ptr %t, align 8, !tbaa !4
  %14 = load double, ptr %t, align 8, !tbaa !4
  %call5 = call double @sqrt(double noundef %14) #5
  %mul6 = fmul double %13, %call5
  %mul7 = fmul double %sub4, %mul6
  %15 = load double, ptr %k, align 8, !tbaa !4
  %mul8 = fmul double %mul7, %15
  store double %mul8, ptr %t, align 8, !tbaa !4
  %16 = load double, ptr %phi, align 8, !tbaa !4
  %sub9 = fsub double %16, %mul8
  store double %sub9, ptr %phi, align 8, !tbaa !4
  %17 = load double, ptr %t, align 8, !tbaa !4
  %18 = call double @llvm.fabs.f64(double %17)
  %cmp = fcmp olt double %18, 0x3DA5FD7FE1796495
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load double, ptr %phi, align 8, !tbaa !4
  store double %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !8
  call void @vtk_pj_ctx_set_errno(ptr noundef %21, i32 noundef -17)
  %22 = load double, ptr %phi, align 8, !tbaa !4
  store double %22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %phi) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5
  %23 = load double, ptr %retval, align 8
  ret double %23
}

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @vtk_pj_ctx_set_errno(ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
