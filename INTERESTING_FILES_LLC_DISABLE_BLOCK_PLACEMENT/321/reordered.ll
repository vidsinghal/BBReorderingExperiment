; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//321/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vdiv_minmax_ukernel__scalar_x4(i1 %cmp, float %0, i1 %1) local_unnamed_addr {
entry:
  br i1 %cmp, label %for.body.us, label %do.body.preheader

if.end:                                           ; preds = %do.body.preheader
  ret void

for.body.us:                                      ; preds = %entry, %for.body.us
  %call15.us = tail call float @math_min_f32(float %0)
  br label %for.body.us

do.body:                                          ; preds = %do.body.preheader, %do.body
  %call29 = tail call float @math_min_f32(float %0)
  br label %do.body

do.body.preheader:                                ; preds = %entry
  %call29.peel = tail call float @math_min_f32(float %0)
  br i1 %1, label %if.end, label %do.body
}

declare float @math_min_f32(float) local_unnamed_addr
