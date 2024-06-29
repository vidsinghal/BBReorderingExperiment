; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//12/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_ppmm_minmax_ukernel_4x4__scalar(i1 %cmp38.not) local_unnamed_addr {
entry:
  br i1 %cmp38.not, label %do.end, label %do.body27

do.body27:                                        ; preds = %entry, %do.body27
  br label %do.body27

do.end:                                           ; preds = %entry
  %call = tail call float @math_min_f32()
  ret void
}

declare float @math_min_f32() local_unnamed_addr
