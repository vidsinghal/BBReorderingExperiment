; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//295/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_f32_dwconv_ukernel_up2x25__scalar_acc2(i1 %0) local_unnamed_addr #0 {
entry:
  br i1 %0, label %for.body, label %for.cond473.preheader

for.body:                                         ; preds = %entry
  %call = tail call float @math_muladd_f32(float 0.000000e+00)
  br label %for.cond473.preheader

for.cond473.preheader:                            ; preds = %entry, %for.body
  br label %for.cond473

for.cond473:                                      ; preds = %for.cond473.preheader, %for.cond473
  %call480 = tail call float @math_muladd_f32(float 1.000000e+00)
  br label %for.cond473
}

declare float @math_muladd_f32(float) local_unnamed_addr

attributes #0 = { noreturn }
