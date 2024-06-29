; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vmul_relu_ukernel__scalar_x8(i64 %n, ptr %a, ptr %b, ptr %y) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp = icmp ugt i64 %n.addr.0, 31
  br i1 %cmp, label %for.body, label %do.body

for.body:                                         ; preds = %for.cond
  %0 = load float, ptr %y, align 4
  %mul20 = fmul float %0, 0.000000e+00
  store float 0.000000e+00, ptr %a, align 4
  store float %mul20, ptr %b, align 4
  %sub = add i64 %n.addr.0, -32
  br label %for.cond

do.body:                                          ; preds = %do.body, %for.cond
  br label %do.body
}
