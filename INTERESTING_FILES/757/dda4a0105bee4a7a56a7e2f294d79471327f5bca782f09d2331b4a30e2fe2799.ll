; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2(ptr %input, i1 %cmp40) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i3.0 = phi ptr [ %input, %entry ], [ null, %for.body ]
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call55 = load volatile <16 x float>, ptr null, align 64
  %call57 = load volatile <16 x float>, ptr %i3.0, align 64
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
