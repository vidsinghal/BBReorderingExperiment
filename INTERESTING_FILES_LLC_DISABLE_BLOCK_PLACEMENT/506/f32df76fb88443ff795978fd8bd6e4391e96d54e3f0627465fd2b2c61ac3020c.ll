; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

define void @z_div(ptr %a, i1 %cmp6) {
entry:
  %0 = load double, ptr %a, align 8
  br i1 %cmp6, label %if.else, label %if.end10

if.end10:                                         ; preds = %entry
  %div = fmul double %0, 0.000000e+00
  %1 = call double @llvm.fmuladd.f64(double %div, double 0.000000e+00, double 0.000000e+00)
  %div17 = fdiv double %1, 0.000000e+00
  br label %if.end37

if.else:                                          ; preds = %entry
  %div24 = fdiv double 0.000000e+00, %0
  %2 = call double @llvm.fmuladd.f64(double %div24, double 0.000000e+00, double 1.000000e+00)
  %mul27 = fmul double %2, 0.000000e+00
  %3 = call double @llvm.fmuladd.f64(double %div24, double 0.000000e+00, double 0.000000e+00)
  %div31 = fdiv double %3, %mul27
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end10
  %cr.0 = phi double [ %div17, %if.end10 ], [ %div31, %if.else ]
  store double %cr.0, ptr %a, align 8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
