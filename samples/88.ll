; ModuleID = 'samples/88.bc'
source_filename = "/local-ssd/vtk-ch6iaypevr75x7ucsesm2tjnqbpdt22s-build/aidengro/spack-stage-vtk-8.1.2-ch6iaypevr75x7ucsesm2tjnqbpdt22s/spack-src/ThirdParty/libproj4/vtklibproj4/src/pj_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @vtk_pj_authset(double noundef %es) #0 {
entry:
  %es.addr = alloca double, align 8
  %t = alloca double, align 8
  %APA = alloca ptr, align 8
  store double %es, ptr %es.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %APA) #5
  %call = call ptr @vtk_pj_malloc(i64 noundef 24)
  store ptr %call, ptr %APA, align 8, !tbaa !8
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load double, ptr %es.addr, align 8, !tbaa !4
  %mul = fmul double %0, 0x3FD5555555555555
  %1 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %1, i64 0
  store double %mul, ptr %arrayidx, align 8, !tbaa !4
  %2 = load double, ptr %es.addr, align 8, !tbaa !4
  %3 = load double, ptr %es.addr, align 8, !tbaa !4
  %mul1 = fmul double %2, %3
  store double %mul1, ptr %t, align 8, !tbaa !4
  %4 = load double, ptr %t, align 8, !tbaa !4
  %5 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx3 = getelementptr inbounds double, ptr %5, i64 0
  %6 = load double, ptr %arrayidx3, align 8, !tbaa !4
  %7 = call double @llvm.fmuladd.f64(double %4, double 0x3FC60B60B60B60B6, double %6)
  store double %7, ptr %arrayidx3, align 8, !tbaa !4
  %8 = load double, ptr %t, align 8, !tbaa !4
  %mul4 = fmul double %8, 0x3FB05B05B05B05B0
  %9 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx5 = getelementptr inbounds double, ptr %9, i64 1
  store double %mul4, ptr %arrayidx5, align 8, !tbaa !4
  %10 = load double, ptr %es.addr, align 8, !tbaa !4
  %11 = load double, ptr %t, align 8, !tbaa !4
  %mul6 = fmul double %11, %10
  store double %mul6, ptr %t, align 8, !tbaa !4
  %12 = load double, ptr %t, align 8, !tbaa !4
  %13 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, ptr %13, i64 0
  %14 = load double, ptr %arrayidx8, align 8, !tbaa !4
  %15 = call double @llvm.fmuladd.f64(double %12, double 0x3FBA42A42A42A42A, double %14)
  store double %15, ptr %arrayidx8, align 8, !tbaa !4
  %16 = load double, ptr %t, align 8, !tbaa !4
  %17 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx10 = getelementptr inbounds double, ptr %17, i64 1
  %18 = load double, ptr %arrayidx10, align 8, !tbaa !4
  %19 = call double @llvm.fmuladd.f64(double %16, double 0x3FB0FFBAA6550FFC, double %18)
  store double %19, ptr %arrayidx10, align 8, !tbaa !4
  %20 = load double, ptr %t, align 8, !tbaa !4
  %mul11 = fmul double %20, 0x3F912DF66D9FBD8A
  %21 = load ptr, ptr %APA, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds double, ptr %21, i64 2
  store double %mul11, ptr %arrayidx12, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load ptr, ptr %APA, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %APA) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  ret ptr %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @vtk_pj_malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define double @vtk_pj_authlat(double noundef %beta, ptr noundef %APA) #0 {
entry:
  %beta.addr = alloca double, align 8
  %APA.addr = alloca ptr, align 8
  %t = alloca double, align 8
  store double %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %APA, ptr %APA.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  %0 = load double, ptr %beta.addr, align 8, !tbaa !4
  %1 = load double, ptr %beta.addr, align 8, !tbaa !4
  %add = fadd double %0, %1
  store double %add, ptr %t, align 8, !tbaa !4
  %2 = load double, ptr %beta.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %APA.addr, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds double, ptr %3, i64 0
  %4 = load double, ptr %arrayidx, align 8, !tbaa !4
  %5 = load double, ptr %t, align 8, !tbaa !4
  %call = call double @sin(double noundef %5) #5
  %6 = call double @llvm.fmuladd.f64(double %4, double %call, double %2)
  %7 = load ptr, ptr %APA.addr, align 8, !tbaa !8
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 1
  %8 = load double, ptr %arrayidx1, align 8, !tbaa !4
  %9 = load double, ptr %t, align 8, !tbaa !4
  %10 = load double, ptr %t, align 8, !tbaa !4
  %add2 = fadd double %9, %10
  %call3 = call double @sin(double noundef %add2) #5
  %11 = call double @llvm.fmuladd.f64(double %8, double %call3, double %6)
  %12 = load ptr, ptr %APA.addr, align 8, !tbaa !8
  %arrayidx4 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx4, align 8, !tbaa !4
  %14 = load double, ptr %t, align 8, !tbaa !4
  %15 = load double, ptr %t, align 8, !tbaa !4
  %add5 = fadd double %14, %15
  %16 = load double, ptr %t, align 8, !tbaa !4
  %add6 = fadd double %add5, %16
  %call7 = call double @sin(double noundef %add6) #5
  %17 = call double @llvm.fmuladd.f64(double %13, double %call7, double %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  ret double %17
}

; Function Attrs: nounwind
declare double @sin(double noundef) #4

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
