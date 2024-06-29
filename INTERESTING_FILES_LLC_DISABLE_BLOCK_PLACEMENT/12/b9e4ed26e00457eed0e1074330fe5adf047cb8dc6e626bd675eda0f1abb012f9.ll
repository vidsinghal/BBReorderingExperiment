; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_ppmm_minmax_ukernel_4x4__scalar(i1 %cmp38.not) {
entry:
  br label %do.body27

do.body27:                                        ; preds = %do.body27, %entry
  br i1 %cmp38.not, label %do.end, label %do.body27

do.end:                                           ; preds = %do.body27
  %call = call float @math_min_f32()
  ret void
}

declare float @math_min_f32()
