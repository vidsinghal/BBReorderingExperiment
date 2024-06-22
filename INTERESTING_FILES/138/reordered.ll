; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//138/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf(i64 %channels) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body99:                                        ; preds = %do.body99, %do.body
  %c.0 = phi i64 [ %channels, %do.body ], [ %dec, %do.body99 ]
  %call = tail call float @math_max_f32()
  %dec = add i64 %c.0, 1
  %cmp179.not = icmp eq i64 %dec, 0
  br i1 %cmp179.not, label %do.body, label %do.body99

do.body:                                          ; preds = %do.body99, %entry
  br label %do.body99
}

declare float @math_max_f32() local_unnamed_addr

attributes #0 = { noreturn }
