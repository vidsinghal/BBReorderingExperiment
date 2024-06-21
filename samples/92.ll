; ModuleID = 'samples/92.bc'
source_filename = "../scipy/special/cephes/gammasgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define double @cephes_gammasgn(double noundef %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %fx = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %x, ptr %x.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fx) #3
  %0 = load double, ptr %x.addr, align 8, !tbaa !4
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, ptr %x.addr, align 8, !tbaa !4
  store double %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, ptr %x.addr, align 8, !tbaa !4
  %cmp = fcmp ogt double %3, 0.000000e+00
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %4 = load double, ptr %x.addr, align 8, !tbaa !4
  %5 = call double @llvm.floor.f64(double %4)
  store double %5, ptr %fx, align 8, !tbaa !4
  %6 = load double, ptr %x.addr, align 8, !tbaa !4
  %7 = load double, ptr %fx, align 8, !tbaa !4
  %sub = fsub double %6, %7
  %cmp2 = fcmp oeq double %sub, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %8 = load double, ptr %fx, align 8, !tbaa !4
  %conv = fptosi double %8 to i32
  %rem = srem i32 %conv, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else4
  store double -1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else4
  store double 1.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then3, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fx) #3
  %9 = load double, ptr %retval, align 8
  ret double %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
