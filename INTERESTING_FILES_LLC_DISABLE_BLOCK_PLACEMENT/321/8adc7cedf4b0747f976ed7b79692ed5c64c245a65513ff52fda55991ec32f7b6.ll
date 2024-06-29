; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vdiv_minmax_ukernel__scalar_x4(i1 %cmp, float %0, i1 %1) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  br i1 %cmp, label %for.body, label %do.body

for.body:                                         ; preds = %for.cond
  %call15 = call float @math_min_f32(float %0)
  br label %for.cond

do.body:                                          ; preds = %do.body, %for.cond
  %n.addr.0 = phi i1 [ false, %do.body ], [ %1, %for.cond ]
  %call29 = call float @math_min_f32(float %0)
  br i1 %n.addr.0, label %if.end, label %do.body

if.end:                                           ; preds = %do.body
  ret void
}

declare float @math_min_f32(float)
