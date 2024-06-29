; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//506/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @z_div(ptr nocapture %a, i1 %cmp6) local_unnamed_addr #1 {
entry:
  %0 = load double, ptr %a, align 8
  br i1 %cmp6, label %if.else, label %if.end10

if.end10:                                         ; preds = %entry
  %div = fmul double %0, 0.000000e+00
  br label %if.end37

if.else:                                          ; preds = %entry
  %div24 = fdiv double 0.000000e+00, %0
  %1 = tail call double @llvm.fmuladd.f64(double %div24, double 0.000000e+00, double 1.000000e+00)
  %mul27 = fmul double %1, 0.000000e+00
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end10
  %div24.sink = phi double [ %div24, %if.else ], [ %div, %if.end10 ]
  %mul27.sink = phi double [ %mul27, %if.else ], [ 0.000000e+00, %if.end10 ]
  %2 = tail call double @llvm.fmuladd.f64(double %div24.sink, double 0.000000e+00, double 0.000000e+00)
  %div31 = fdiv double %2, %mul27.sink
  store double %div31, ptr %a, align 8
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
