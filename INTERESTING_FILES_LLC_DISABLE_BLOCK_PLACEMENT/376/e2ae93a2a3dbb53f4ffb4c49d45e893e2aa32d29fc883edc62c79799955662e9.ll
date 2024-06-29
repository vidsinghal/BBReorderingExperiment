; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv_minmax_ukernel_up8x3__fma3(i64 %channels) {
entry:
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  %c.0 = phi i64 [ 0, %entry ], [ %channels, %for.end ]
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body
  %cmp29.not = icmp eq i64 %c.0, 0
  br i1 %cmp29.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call32 = call <8 x float> @_mm256_loadu_ps(ptr null)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call61 = call <4 x i64> @_mm256_loadu_si256(ptr null)
  br label %do.body
}

declare <8 x float> @_mm256_loadu_ps(ptr)

declare <4 x i64> @_mm256_loadu_si256(ptr)
