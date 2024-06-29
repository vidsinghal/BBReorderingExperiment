; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vmulc_minmax_ukernel__scalar_x2(i64 %n, ptr %a, ptr %b) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp = icmp ugt i64 %n.addr.0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load float, ptr %a, align 4
  %mul = fmul float %0, 0.000000e+00
  store float %mul, ptr %b, align 4
  %sub = add i64 %n.addr.0, -8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
