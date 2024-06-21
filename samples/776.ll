; ModuleID = 'samples/776.bc'
source_filename = "/local-ssd/vtk-j3fcitgmitcvemiewb6nohnsalcc4ltw-build/aidengro/spack-stage-vtk-8.2.1a-j3fcitgmitcvemiewb6nohnsalcc4ltw/spack-src/ThirdParty/libproj/vtklibproj/src/pj_qsfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @vtklibproj_pj_qsfn(double noundef %sinphi, double noundef %e, double noundef %one_es) #0 {
entry:
  %retval = alloca double, align 8
  %sinphi.addr = alloca double, align 8
  %e.addr = alloca double, align 8
  %one_es.addr = alloca double, align 8
  %con = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %sinphi, ptr %sinphi.addr, align 8, !tbaa !4
  store double %e, ptr %e.addr, align 8, !tbaa !4
  store double %one_es, ptr %one_es.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %con) #4
  %0 = load double, ptr %e.addr, align 8, !tbaa !4
  %cmp = fcmp oge double %0, 0x3E7AD7F29ABCAF48
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, ptr %e.addr, align 8, !tbaa !4
  %2 = load double, ptr %sinphi.addr, align 8, !tbaa !4
  %mul = fmul double %1, %2
  store double %mul, ptr %con, align 8, !tbaa !4
  %3 = load double, ptr %one_es.addr, align 8, !tbaa !4
  %4 = load double, ptr %sinphi.addr, align 8, !tbaa !4
  %5 = load double, ptr %con, align 8, !tbaa !4
  %6 = load double, ptr %con, align 8, !tbaa !4
  %neg = fneg double %5
  %7 = call double @llvm.fmuladd.f64(double %neg, double %6, double 1.000000e+00)
  %div = fdiv double %4, %7
  %8 = load double, ptr %e.addr, align 8, !tbaa !4
  %div2 = fdiv double 5.000000e-01, %8
  %9 = load double, ptr %con, align 8, !tbaa !4
  %sub = fsub double 1.000000e+00, %9
  %10 = load double, ptr %con, align 8, !tbaa !4
  %add = fadd double 1.000000e+00, %10
  %div3 = fdiv double %sub, %add
  %call = call double @log(double noundef %div3) #4
  %neg5 = fneg double %div2
  %11 = call double @llvm.fmuladd.f64(double %neg5, double %call, double %div)
  %mul6 = fmul double %3, %11
  store double %mul6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %12 = load double, ptr %sinphi.addr, align 8, !tbaa !4
  %13 = load double, ptr %sinphi.addr, align 8, !tbaa !4
  %add7 = fadd double %12, %13
  store double %add7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %con) #4
  %14 = load double, ptr %retval, align 8
  ret double %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
